package vn.iotstar.dao.impl;

import java.util.List;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;
import vn.iotstar.configs.JPAConfig;
import vn.iotstar.dao.IUserDao;
import vn.iotstar.entity.User;

public class UserDao implements IUserDao{

	@Override
	public int count() {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT count(u) FROM User u";
		Query query = enma.createQuery(jpql);
		return ((Long) query.getSingleResult()).intValue();
	}

	@Override
	public User findByUsername(String uname) throws Exception {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT u FROM User u WHERE u.username =:uname";
		try {
			TypedQuery<User> query = enma.createQuery(jpql, User.class);
			query.setParameter("uname", uname);
			User user = query.getSingleResult();
			if (user == null) {
				throw new Exception("User Name đã tồn tại");
			}
			return user;
		} finally {
			enma.close();

		}
	}

	@Override
	public List<User> findAll() {
		EntityManager enma = JPAConfig.getEntityManager();
		TypedQuery<User> query = enma.createNamedQuery("User.findAll", User.class);
		return query.getResultList();
	}

	@Override
	public User findById(int uid) {
		EntityManager enma = JPAConfig.getEntityManager();
		User user = enma.find(User.class, uid);
		return user;
	}

	@Override
	public void delete(int uid) throws Exception {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			User user = enma.find(User.class, uid);
			if (user != null) {
				enma.remove(user);
			} else {
				throw new Exception("Không tìm thấy");
			}
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			enma.close();
		}
		
	}

	@Override
	public void update(User user) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			enma.merge(user);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			enma.close();
		}
		
	}

	@Override
	public void insert(User user) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			enma.persist(user);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			throw e;
		} finally {
			enma.close();
		}
		
	}

	@Override
	public List<User> searchByName(String uname) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT u FROM User u WHERE u.username like :uname";
		TypedQuery<User> query = enma.createQuery(jpql, User.class);
		query.setParameter("uname", "%" + uname + "%");
		return query.getResultList();
	}

}
