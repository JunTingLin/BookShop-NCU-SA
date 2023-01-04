package com.NCU.BookShop.servlet;

import com.NCU.BookShop.model.Books;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import com.NCU.BookShop.service.BooksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.List;

@WebServlet(name = "admin_books_edit",urlPatterns = "/admin/books_edit")
@Controller
public class AdminBooksEditServlet extends HttpServlet {
    @Autowired
    private BooksService bService;
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DiskFileItemFactory factory=new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        try {
            List<FileItem> list = upload.parseRequest(request);
            Books b = new Books();
            int type=0;
            for(FileItem item:list) {
                if(item.isFormField()) {
                    switch(item.getFieldName()) {
                        case "id":
                            b.setId(Integer.parseInt(item.getString("utf-8")));
                            break;
                        case "name":
                            b.setName(item.getString("utf-8"));
                            break;
                        case "price":
                            b.setPrice(Integer.parseInt(item.getString("utf-8")));
                            break;
                        case "author":
                            b.setAuthor(item.getString("utf-8"));
                            break;
                        case "intro":
                            b.setIntro(item.getString("utf-8"));
                            break;
                        case "cover":
                            b.setCover(item.getString("utf-8"));
                            break;
                        case "stock":
                            b.setStock(Integer.parseInt(item.getString("utf-8")));
                            break;
                        case "departmentid":
                            b.setDepartmentid(Integer.parseInt(item.getString("utf-8")));
                            break;
                        case "type":
//                            System.out.println("測試param type "+item.getString("utf-8")+" 。");
                            type = Integer.parseInt(item.getString("utf-8"));
                            break;
                    }
                }else {
                    if(item.getInputStream().available()<=0)continue;
                    String fileName = item.getName();
                    fileName = fileName.substring(fileName.lastIndexOf("."));
                    fileName = "/"+new Date().getTime()+fileName;
                    String path = this.getServletContext().getRealPath("/picture")+fileName;
                    InputStream in = item.getInputStream();
                    FileOutputStream out = new FileOutputStream(path);
                    byte[] buffer = new byte[1024];
                    int len=0;
                    while( (len=in.read(buffer))>0 ) {
                        out.write(buffer);
                    }
                    in.close();
                    out.close();
                    item.delete();
                    switch(item.getFieldName()) {
                        case "cover":
                            b.setCover("/picture" +fileName);
                            break;
                    }
                }
            }
            bService.update(b);
            request.getRequestDispatcher("/admin/books_list?" +"type="+type).forward(request, response);
        } catch (FileUploadException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this,
                config.getServletContext());
    }

}

