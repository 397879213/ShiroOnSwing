Apache Shiro Swing User Role 
============================

Apache Shiro, Swing & Mysql
---------------------------------------

- Apache Shiro (http://shiro.apache.org/)


Settings:
------------

- import **shiro_test.sql**

- open & change **MyDataSource.java** :

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

- to create password hash use **HashCreator** on package **com.mymanager.security.tools** then paste to **users** "password" field;









