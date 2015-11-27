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
 username : admin
 password : admin1234
```

- untuk membuat password hash gunakan **HashCreator** di package **com.mymanager.security.tools**;









