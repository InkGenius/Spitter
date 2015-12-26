package com.habuma.spitter.persistence;
import java.util.List;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.habuma.spitter.domain.Spitter;
import com.habuma.spitter.domain.Spittle;

@Repository
public class SpitterDaoImpl implements SpitterDao {
  @Autowired
  private SessionFactory sessionFactory;
  
  public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
  }
  
  private Session currentSession() {
    return sessionFactory.getCurrentSession();
  }
  
  public void addSpitter(Spitter spitter) {
    currentSession().save(spitter);
  }

  public Spitter getSpitterById(long id) {
    return (Spitter) currentSession().get(Spitter.class, id);
  }

  public void saveSpitter(Spitter spitter) {
    currentSession().update(spitter);
  }
  
  @SuppressWarnings("unchecked")
  public List<Spittle> getRecentSpittle() {
	String hql = "from Spittle";
	List<Spittle> consumes = currentSession().createQuery(hql).list();
    return consumes;
  }
  
  public void saveSpittle(Spittle spittle) {
    currentSession().save(spittle);
  }

  public List<Spittle> getSpittlesForSpitter(
          Spitter spitter) {
    return null;
  }

  public Spitter getSpitterByUsername(String username) {
    return null;
  }

  public void deleteSpittle(long id) {
    currentSession().delete(getSpittleById(id));
  }

  public Spittle getSpittleById(long id) {
    return (Spittle) currentSession().get(Spittle.class, id);
  }
  
  @SuppressWarnings("unchecked")
  public List<Spitter> findAllSpitters() {
	 String hql = "from Spitter";
      List<Spitter> consumes = currentSession().createQuery(hql).list();
	  return consumes;
  }
}