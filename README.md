# NCU_BookShop

系統分析(SA)期末專案成品，此系統提供一個平台讓中央學生購買各教授的上課用書，系統上的書籍分類係根據系別來分類(例如：資工、資管、財金等)；會員可透過此系統瀏覽圖書和輸入關鍵字來搜尋需要的書籍，亦可點擊有興趣的書籍查看書籍詳細內容，如確定購買，可將訂購商品放入購物車，在購物車中可修改、刪除訂購數量；提供會員相關服務，如；圖書結帳、檢視訂單內容等。另提供後台管理員簡單易上手的管理介面，使管理員從事管理作業(會員、書籍、訂單)更有效率。

基於jsp+servlet的大學教課書商城

(後來有導入Spring IOC，詳細可參考下面系統架構)

*註: 此專案並非一開始就使用版本控制*

## The website now is runing on Nas server
http://140.115.123.246:7070/

## 系統架構
![image](https://user-images.githubusercontent.com/92431095/214366949-44f74930-13b3-438d-8a6f-ceff695e8c37.png)

![image](https://user-images.githubusercontent.com/92431095/214366995-d97c500d-19e2-4b68-8fb5-fe35b72c636c.png)


## 系統功能清單
![image](https://user-images.githubusercontent.com/92431095/214368542-bcf2ebab-a960-491c-84cb-5c11bb41cce7.png)

![image](https://user-images.githubusercontent.com/92431095/214368604-d3712659-e03b-497d-8826-9349e757c107.png)

![image](https://user-images.githubusercontent.com/92431095/214368668-9788d859-5194-4527-a2b6-5af0d1c9fbcf.png)

![image](https://user-images.githubusercontent.com/92431095/214368768-fc480f90-b54c-49e1-af89-0ee419365c56.png)

![image](https://user-images.githubusercontent.com/92431095/214368799-263b2080-26a1-41c3-9592-b6834341873d.png)

![image](https://user-images.githubusercontent.com/92431095/214368886-2462b0f3-26f8-4e26-8b39-89167aaa761a.png)

![image](https://user-images.githubusercontent.com/92431095/214368923-8e0870f7-96b5-40a9-b056-ce965c6684d4.png)

## 介面展示
首頁
![image](https://user-images.githubusercontent.com/92431095/214369246-e97d7584-dc9f-4531-b9d2-a441896f19a6.png)

全部類別
<img width="953" alt="image" src="https://github.com/JunTingLin/BookShop-NCU-SA/assets/92431095/8868356b-2ebe-4666-8b0b-7e1693864394">

書本詳情
![image](https://user-images.githubusercontent.com/92431095/214370195-29d3fa88-7041-440f-9455-faf5f882a1e0.png)

庫存不足
![image](https://user-images.githubusercontent.com/92431095/214369447-9102b51f-abf1-44e1-b460-8003f42ed08d.png)

註冊
![image](https://user-images.githubusercontent.com/92431095/214369567-30b00c3e-6dda-4cf7-927e-141db731fa5b.png)

搜尋
![image](https://user-images.githubusercontent.com/92431095/214369670-26e2ac0f-25e4-4227-b630-a497330c5e50.png)

購物車
![image](https://user-images.githubusercontent.com/92431095/214369747-f603070b-19de-4ff9-bde0-d4ee34acd151.png)

提交訂單
![image](https://user-images.githubusercontent.com/92431095/214369822-f5fb154f-6385-45fb-964e-c86489408a9b.png)

我的訂單
![image](https://user-images.githubusercontent.com/92431095/214369864-ca61d235-84b8-4a44-891b-5249deead3d8.png)

後台-訂單管理
![image](https://user-images.githubusercontent.com/92431095/214369943-c4f78c0a-b755-4a0a-8444-34479e39962f.png)

後台-書本管理
![image](https://user-images.githubusercontent.com/92431095/214370001-290c0d67-d94b-4aba-8243-4cc93b85b692.png)

後台-科系管理
![image](https://user-images.githubusercontent.com/92431095/214370045-f623edeb-066c-4308-87d2-a324f2d6e69a.png)

後台-會員管理
![image](https://user-images.githubusercontent.com/92431095/214370106-b4beb4c8-b95a-4c4c-a6a0-abb57f7a160e.png)

# 補充

## maria_db資料庫

```
<?xml version="1.0" encoding="UTF-8"?>
<c3p0-config>
	<!-- 默認配置，只可以出現一次 -->
	<default-config>
		<property name="driverClass">org.mariadb.jdbc.Driver</property>
		<property name="jdbcUrl">
			<![CDATA[jdbc:mariadb://localhost:3306/bookshop?useUnicode=true&characterEncoding=UTF-8&useSSL=false]]>
		</property>
		<property name="user">root</property>
		<property name="password">root</property>
	</default-config>
</c3p0-config>
```
c3p0-config.xml
<hr>

```
<dependency>
    <groupId>org.mariadb.jdbc</groupId>
    <artifactId>mariadb-java-client</artifactId>
    <version>3.1.2</version>
</dependency>
```
pox.xml (part)


## mysql_db資料庫
```
<?xml version="1.0" encoding="UTF-8"?>
<c3p0-config>
	<!-- 默認配置，只可以出現一次 -->
	<default-config>
		<property name="driverClass">com.mysql.jdbc.Driver</property>
		<property name="jdbcUrl">
			<![CDATA[jdbc:mysql://localhost:3306/bookshop?useUnicode=true&characterEncoding=UTF-8&useSSL=false]]>
		</property>
		<property name="user">root</property>
		<property name="password">root</property>
	</default-config>
</c3p0-config>

```
c3p0-config.xml
<hr>

```
<dependency>
    <groupId>mysql</groupId>
    <artifactId>mysql-connector-java</artifactId>
    <version>5.1.4</version>
</dependency>
```
pox.xml (part)




