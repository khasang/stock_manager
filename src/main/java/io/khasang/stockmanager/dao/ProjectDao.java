package io.khasang.stockmanager.dao;

import io.khasang.stockmanager.entity.Project;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ProjectDao {
    @Autowired
    SessionFactory sessionFactory;

    private String result;

    public void insertToTable(Project project) {
        Session session = sessionFactory.openSession();
        try {
            session.beginTransaction();
            //Receive status with specify id - required for check field state = at status end or not.
            List list = session.createCriteria(Project.class, "id")
                    .list();
            session.save(project);
            session.getTransaction().commit();
            result = "sucessfully insert to table";
        } catch (Exception e) {
            session.getTransaction().rollback();
            result = "unable to insert to table";
            e.printStackTrace();
        } finally {
            session.close();
        }
    }


    public String getResult() {
        return result;
    }
}
