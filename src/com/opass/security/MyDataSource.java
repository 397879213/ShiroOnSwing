package com.opass.security;

import com.jolbox.bonecp.BoneCPConfig;
import com.jolbox.bonecp.BoneCPDataSource;

/**
 *
 * @author zakaria
 */
public class MyDataSource extends BoneCPDataSource {
    
      private static final long serialVersionUID = -2248923051363839327L;
      
    /** Data source class for retrieving authentication information **/
    public MyDataSource() {
	super();
	this.setDriverClass("com.mysql.jdbc.Driver");
	this.setJdbcUrl("jdbc:mysql://localhost/shiro_test");
	this.setUsername("agung");
	this.setPassword("please");
	this.setDefaultAutoCommit(true);
    }

    /**
     * @param config
     */
    public MyDataSource(BoneCPConfig config) {
	super(config);
    }

}
