package com.railway.DAO;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.railway.dbutil.DbUtil;
import com.railway.pojo.Railway;

public class RailwayDAO {
	public int addstudent(Railway railway) {
		Session session=DbUtil.dbConn();
		Transaction trans=session.beginTransaction();
		int value=(Integer) session.save(railway);
		trans.commit();
		session.close();
		return value;
		
	}
}
