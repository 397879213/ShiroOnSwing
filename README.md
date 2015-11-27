Apache Shiro Swing User Role 
============================

Apache Shiro, Swing & Mysql
---------------------------------------

- Apache Shiro (http://shiro.apache.org/)


Settings:
------------

- import **shiro_test.sql**

- buka & ubah **MyDataSource.java** sesuaikan:

```javascript
 setJdbcUrl("jdbc:mysql://localhost/shiro_test");
 setUsername("root");
 setUsername("toor");
```

- compile & run **testForm**

```javascript

group **Admin**
 username : admin
 password : admin1234


group **User**
 username : agung
 password : permisidong
```

- untuk membuat password hash gunakan **HashCreator** di package **com.mymanager.security.tools**;









