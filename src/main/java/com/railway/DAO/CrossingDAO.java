package com.railway.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.railway.dbutil.DbUtil;
import com.railway.pojo.Crossing;

public class CrossingDAO {

    public int addCrossing(Crossing crossing) {
        Session session = DbUtil.dbConn();
        Transaction trans = session.beginTransaction();
        int value = (Integer) session.save(crossing);
        trans.commit();
        session.close();
        return value;
    }

    public List<Crossing> selectCrossings() {
        Session session = DbUtil.dbConn();
        Transaction trans = session.beginTransaction();

        // HQL query to select all crossings
        Query<Crossing> query = session.createQuery("FROM Crossing", Crossing.class);
        List<Crossing> crossings = query.getResultList();

        trans.commit();
        session.close();

        return crossings;
    }
    public int updateCrossing(Crossing crossing) {
        Session session = DbUtil.dbConn();
        Transaction trans = session.beginTransaction();

        session.update(crossing);

        trans.commit();
        session.close();

        return crossing.getId();
    }
    public int deleteCrossing(int crossingId) {
        Session session = DbUtil.dbConn();
        Transaction trans = session.beginTransaction();

        Crossing crossing = session.get(Crossing.class, crossingId);
        if (crossing != null) {
            session.delete(crossing);
        }

        trans.commit();
        session.close();

        return crossing != null ? crossing.getId() : 0;
    }
    public Crossing getCrossingById(int crossingId) {
        Session session = DbUtil.dbConn();
        Transaction trans = session.beginTransaction();

        Crossing crossing = session.get(Crossing.class, crossingId);

        trans.commit();
        session.close();

        return crossing;
    }
}
