package th.co.food.hibernate;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Expression;
import org.joda.time.DateTime;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import th.co.food.domain.FoodBill;
import th.co.food.domain.FoodCustomer;
import th.co.food.domain.FoodMenu;
import th.co.food.domain.FoodOrder;
import th.co.food.service.FoodService;

@Repository
@Transactional
public class HibernateFood implements FoodService {

	private SessionFactory sessionAnnotationFactory;

	public SessionFactory getSessionAnnotationFactory() {
		return sessionAnnotationFactory;
	}

	public void setSessionAnnotationFactory(
			SessionFactory sessionAnnotationFactory) {
		this.sessionAnnotationFactory = sessionAnnotationFactory;
	}

	/*
	 * FoodBill.java FoodMenu.java FoodOrder.java
	 */
	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public void deleteFoodBill(FoodBill persistentInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub
		Session session = sessionAnnotationFactory.getCurrentSession();
		try {
			session.delete(persistentInstance);
		} finally {
			if (session != null) {
				session = null;
			}
		}
	}

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public void deleteFoodMenu(FoodMenu persistentInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub
		Session session = sessionAnnotationFactory.getCurrentSession();
		try {
			session.delete(persistentInstance);
		} finally {
			if (session != null) {
				session = null;
			}
		}
	}

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public void deleteFoodOrder(FoodOrder persistentInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub
		Session session = sessionAnnotationFactory.getCurrentSession();
		try {
			session.delete(persistentInstance);
		} finally {
			if (session != null) {
				session = null;
			}
		}
	}

	@Transactional(readOnly = true)
	public FoodBill findFoodBillById(Integer fbId) throws DataAccessException {
		// TODO Auto-generated method stub
		FoodBill foodBill = null;
		Object obj = null;
		Session session = sessionAnnotationFactory.getCurrentSession();
		try {
			obj = session.get("th.co.food.domain.FoodBill", fbId);
			if (obj != null)
				foodBill = (FoodBill) obj;
		} catch (RuntimeException re) {
			throw re;
		} finally {
			if (session != null) {
				session = null;
			}
		}
		return foodBill;
	}

	@Transactional(readOnly = true)
	public FoodMenu findFoodMenuById(Integer fmId) throws DataAccessException {
		// TODO Auto-generated method stub
		FoodMenu foodMenu = null;
		Object obj = null;
		Session session = sessionAnnotationFactory.getCurrentSession();
		try {
			obj = session.get("th.co.food.domain.FoodMenu", fmId);
			if (obj != null)
				foodMenu = (FoodMenu) obj;
		} catch (RuntimeException re) {
			throw re;
		} finally {
			if (session != null) {
				session = null;
			}
		}
		return foodMenu;
	}

	@Transactional(readOnly = true)
	public FoodOrder findFoodOrderById(Integer foId) throws DataAccessException {
		// TODO Auto-generated method stub
		FoodOrder foodOrder = null;
		Object obj = null;
		Session session = sessionAnnotationFactory.getCurrentSession();
		try {
			obj = session.get("th.co.food.domain.FoodOrder", foId);
			if (obj != null)
				foodOrder = (FoodOrder) obj;
		} catch (RuntimeException re) {
			throw re;
		} finally {
			if (session != null) {
				session = null;
			}
		}
		return foodOrder;
	}

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public Integer saveFoodBill(FoodBill transientInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub

		Session session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId = null;
		try {
			Object obj = session.save(transientInstance);

			if (obj != null) {
				returnId = (Integer) obj;
			}
		} finally {
			if (session != null) {
				session = null;
			}
		}
		return returnId;
	}

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public Integer saveFoodMenu(FoodMenu transientInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub

		Session session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId = null;
		try {
			Object obj = session.save(transientInstance);

			if (obj != null) {
				returnId = (Integer) obj;
			}
		} finally {
			if (session != null) {
				session = null;
			}
		}
		return returnId;
	}

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public Integer saveFoodOrder(FoodOrder transientInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub

		Session session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId = null;
		try {
			Object obj = session.save(transientInstance);

			if (obj != null) {
				returnId = (Integer) obj;
			}
		} finally {
			if (session != null) {
				session = null;
			}
		}
		return returnId;
	}

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public Integer saveFoodCustomer(FoodCustomer transientInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub

		Session session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId = null;
		try {
			Object obj = session.save(transientInstance);

			if (obj != null) {
				returnId = (Integer) obj;
			}
		} finally {
			if (session != null) {
				session = null;
			}
		}
		return returnId;
	}

	@Transactional(readOnly = true)
	public List searchFoodBill(FoodBill instance) throws DataAccessException {
		// TODO Auto-generated method stub

		ArrayList transList = new ArrayList();
		Session session = null;
		try {
			session = sessionAnnotationFactory.getCurrentSession();
			Criteria criteria = (Criteria) session
					.createCriteria("th.co.food.domain.FoodMenu");

			Integer fbId = instance.getFbId();

			if (fbId != null && fbId.intValue() != 0) {
				criteria.add(Expression.eq("fbId", fbId));
			}
			List l = criteria.list();

			transList.add(l);

			transList.add(l.size() + "");

			return transList;
		} catch (Exception re) {
			re.printStackTrace();

		}
		return null;
	}

	@Transactional(readOnly = true)
	public List searchFoodMenu(FoodMenu instance) throws DataAccessException {
		// TODO Auto-generated method stub

		ArrayList transList = new ArrayList();
		Session session = null;
		try {
			session = sessionAnnotationFactory.getCurrentSession();
			Criteria criteria = (Criteria) session
					.createCriteria("th.co.food.domain.FoodMenu");
			Query query = session
					.createQuery("select count(foodBill) from  FoodBill foodBill");
			Integer fmId = instance.getFmId();
			String fmName = instance.getFmName();
			String fmDetail = instance.getFmDetail();
			String fmStatus = instance.getFmStatus();
			if (fmId != null && fmId.intValue() != 0) {
				criteria.add(Expression.eq("fmId", fmId));
			}

			if (fmName != null && !"".equals(fmName) && !" ".equals(fmName)) {
				criteria.add(Expression.eq("fmName", fmName));

			}
			if (fmDetail != null && !"".equals(fmDetail)
					&& !" ".equals(fmDetail)) {
				criteria.add(Expression.eq("fmDetail", fmDetail));
			}
			if (fmStatus != null && !"".equals(fmStatus)
					&& !" ".equals(fmStatus)) {
				criteria.add(Expression.eq("fmStatus", fmStatus));
			}
			// criteria.addOrder(Order.asc("nfaqId"));

			List l = criteria.list();

			transList.add(l);

			transList.add(l.size() + "");
			System.out.println("Chatchai Test count="
					+ query.uniqueResult().toString());

			return transList;
		} catch (Exception re) {
			re.printStackTrace();

		}
		return null;
	}

	@Transactional(readOnly = true)
	public List searchFoodOrder(FoodOrder instance) throws DataAccessException {
		// TODO Auto-generated method stub

		ArrayList transList = new ArrayList();
		Session session = null;
		try {
			session = sessionAnnotationFactory.getCurrentSession();
			Criteria criteria = (Criteria) session
					.createCriteria("th.co.food.domain.FoodOrder");

			Integer fbId = instance.getFoId();
			String foStatus = instance.getFoStatus();
			FoodBill foodBill = instance.getFoodBill();
			FoodMenu foodMenu = instance.getFoodMenu();
			if (fbId != null && fbId.intValue() != 0) {
				criteria.add(Expression.eq("fbId", fbId));
			}

			if (foodBill != null && !"".equals(foodBill)
					&& !" ".equals(foodBill)) {
				criteria.add(Expression.eq("foodBill", foodBill));
			}
			if (foodMenu != null && !"".equals(foodMenu)
					&& !" ".equals(foodMenu)) {
				criteria.add(Expression.eq("foodMenu", foodMenu));
			}
			if (foStatus != null && !"".equals(foStatus)
					&& !" ".equals(foStatus)) {
				criteria.add(Expression.eq("foStatus", foStatus));
			}
			List l = criteria.list();

			transList.add(l);

			transList.add(l.size() + "");

			return transList;
		} catch (Exception re) {
			re.printStackTrace();

		}
		return null;
	}

	@Transactional(readOnly = true)
	public List searchFoodCustomer(FoodCustomer instance)
			throws DataAccessException {
		// TODO Auto-generated method stub

		ArrayList transList = new ArrayList();
		Session session = null;
		try {
			session = sessionAnnotationFactory.getCurrentSession();
			Criteria criteria = (Criteria) session
					.createCriteria("th.co.food.domain.FoodCustomer");

			Integer fcId = instance.getFcId();

			if (fcId != null && fcId.intValue() != 0) {
				criteria.add(Expression.eq("fcId", fcId));
			}
			List l = criteria.list();

			transList.add(l);

			transList.add(l.size() + "");

			return transList;
		} catch (Exception re) {
			re.printStackTrace();

		}
		return null;

	}

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public int updateFoodBill(FoodBill transientInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub
		Session session = sessionAnnotationFactory.getCurrentSession();
		int canUpdate = 0;
		try {
			session.update(transientInstance);
			canUpdate = 1;
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (session != null) {
				session = null;
			}
		}
		return canUpdate;
	}

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public int updateFoodMenu(FoodMenu transientInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub
		Session session = sessionAnnotationFactory.getCurrentSession();
		int canUpdate = 0;
		try {
			session.update(transientInstance);
			canUpdate = 1;
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (session != null) {
				session = null;
			}
		}
		return canUpdate;
	}

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public int updateFoodOrder(FoodOrder transientInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub
		Session session = sessionAnnotationFactory.getCurrentSession();
		int canUpdate = 0;
		try {
			session.update(transientInstance);
			canUpdate = 1;
		} catch (Exception e) {
			// TODO: handle exception
		} finally {
			if (session != null) {
				session = null;
			}
		}
		return canUpdate;
	}

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public Integer orderMenus(FoodBill foodBill, ArrayList foodOrders) {
		// TODO Auto-generated method stub
		// save FoodBill
		Session session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId = null;
		try {
			Object obj = session.save(foodBill);

			if (obj != null) {
				returnId = (Integer) obj;
				foodBill.setFbId(returnId);
				// save Food Order
				if (foodOrders != null) {

					for (int i = 0; i < foodOrders.size(); i++) {
						FoodOrder foodOrder = (FoodOrder) foodOrders.get(i);
						foodOrder.setFoodBill(foodBill);
						session.save(foodOrder);
						// foodOrder.setFoodMenu(foodMenu);
						// System.out.println("foodOrders="+foodOrders.get(i));
					}
				}
			}
		} finally {
			if (session != null) {
				session = null;
			}
		}
		return returnId;
	}

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public void setMenuStatus(FoodMenu persistentInstance) {
		// TODO Auto-generated method stub
		Session session = sessionAnnotationFactory.getCurrentSession();
		Query query = session
				.createQuery("update FoodMenu foodMenu set foodMenu.fmStatus =? where foodMenu.fmId =?");
		query.setParameter(0, persistentInstance.getFmStatus());
		query.setParameter(1, persistentInstance.getFmId());
		query.executeUpdate();
	}

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public void setOrderStatus(Integer[] foIds, String foStatus) {
		// TODO Auto-generated method stub
		Session session = sessionAnnotationFactory.getCurrentSession();
		String str = "update FoodOrder foodOrder set foodOrder.foStatus =? where foodOrder.foId in ";
		String inExp = "(";
		for (int i = 0; i < foIds.length; i++) {
			if (i == foIds.length - 1)
				inExp = inExp + "?";
			else
				inExp = inExp + "?,";
		}
		inExp = inExp + ")";
		Query query = session.createQuery(str + inExp);
		query.setParameter(0, foStatus);
		for (int i = 0; i < foIds.length; i++) {
			query.setParameter((i + 1), foIds[i]);
		}
		query.executeUpdate();
	}

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public void setBillStatus(Integer fbId, String fbStatus, String fbComplete,
			Integer fcId) {
		// TODO Auto-generated method stub
		Session session = sessionAnnotationFactory.getCurrentSession();
		if (fcId != null && fcId.intValue() != 0) {
			String str = "update FoodBill foodBill set foodBill.fbStatus = ?,foodBill.fbComplete = ? , foodBill.foodCustomer.fcId = ? where foodBill.fbId =? ";
			Query query = session.createQuery(str);
			query.setParameter(0, fbStatus);
			query.setParameter(1, fbComplete);
			query.setParameter(2, fcId);
			query.setParameter(3, fbId);
			query.executeUpdate();
		} else {
			String str = "update FoodBill foodBill set foodBill.fbStatus =? ,foodBill.fbComplete = ?  where foodBill.fbId =? ";
			Query query = session.createQuery(str);
			query.setParameter(0, fbStatus);
			query.setParameter(1, fbComplete);
			query.setParameter(2, fbId);
			query.executeUpdate();
		}

	};

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public void charge(Integer fcId, Float fcMoney) {
		// TODO Auto-generated method stub
		Session session = sessionAnnotationFactory.getCurrentSession();
		String str = "update FoodCustomer foodCustomer set foodCustomer.fcMoney =? where foodCustomer.fcId =? ";

		Query query = session.createQuery(str);
		query.setParameter(0, fcMoney);
		query.setParameter(1, fcId);
		query.executeUpdate();
	}

	@Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = { RuntimeException.class })
	public void topUp(FoodCustomer persistentInstance) {
		// TODO Auto-generated method stub
		Session session = sessionAnnotationFactory.getCurrentSession();
		Query query = session
				.createQuery("update FoodCustomer foodCustomer set foodCustomer.fcMoney =? where foodCustomer.fcId =?");
		query.setParameter(0, persistentInstance.getFcMoney());
		query.setParameter(1, persistentInstance.getFcId());
		query.executeUpdate();
	}

	@Transactional(readOnly = true)
	public List listBillComplete(FoodBill instance) throws DataAccessException {
		// TODO Auto-generated method stub

		ArrayList transList = new ArrayList();
		Session session = null;
		try {
			session = sessionAnnotationFactory.getCurrentSession();
			Criteria criteria = (Criteria) session
					.createCriteria("th.co.food.domain.FoodBill");

			criteria.add(Expression.eq("fbStatus", "0"));
			List l = criteria.list();
			List list = new ArrayList();
			if (l != null && l.size() > 0) {
				for (int i = 0; i < l.size(); i++) {
					FoodBill bill = (FoodBill) l.get(i);
					String queryStrtotal = "select count(foodOrder) from FoodOrder foodOrder where foodOrder.foodBill.fbId=? ";
					String queryStrComplete = "select count(foodOrder) from FoodOrder foodOrder where foodOrder.foodBill.fbId=? and foodOrder.foStatus=?";
					Query query = session.createQuery(queryStrtotal);
					query.setParameter(0, bill.getFbId());
					int total = Integer.parseInt(query.uniqueResult()
							.toString());
					query = session.createQuery(queryStrComplete);
					query.setParameter(0, bill.getFbId());
					query.setParameter(1, "1");
					int complete = Integer.parseInt(query.uniqueResult()
							.toString());
					if (total == complete)
						list.add(bill);
				}
			}
			transList.add(list);

			transList.add(list.size() + "");

			return transList;
		} catch (Exception re) {
			re.printStackTrace();

		}
		return null;
	}

	@Transactional(readOnly = true)
	public List listBillSummarry(FoodBill instance) throws DataAccessException {
		// TODO Auto-generated method stub

		ArrayList transList = new ArrayList();
		Session session = null;
		try {
			session = sessionAnnotationFactory.getCurrentSession();
			Criteria criteria = (Criteria) session
					.createCriteria("th.co.food.domain.FoodBill");

			criteria.add(Expression.eq("fbStatus", "1"));
			criteria.add(Expression.eq("fbComplete", "1"));
			DateTime dt =new DateTime(instance.getFbBillDate().getTime());
			int year = dt.getYear();
			int month = dt.getMonthOfYear(); 
			int day = dt.getDayOfMonth();
			
			System.out.println("day="+day);
			System.out.println("month="+month);
			System.out.println("year="+year);
			DateTime dt1 =new DateTime(year,month,day,0,0,0,0);
			DateTime dt2 =new DateTime(year,month,day,23,59,59,0);
			
			System.out.println(instance.getFbBillDate());
			System.out.println(dt1.toDate());
			System.out.println(dt2.toDate());
			if(instance.getFbBillDate()!=null)
				criteria.add(Expression.between("fbBillDate", dt1.toDate(), dt2.toDate()));
			List l = criteria.list();

			transList.add(l);

			transList.add(l.size() + "");

			return transList;
		} catch (Exception re) {
			re.printStackTrace();

		}
		return null;
	}

	@Transactional(readOnly = true)
	public List test(FoodBill instance) throws DataAccessException {
		// TODO Auto-generated method stub

		ArrayList transList = new ArrayList();
		Session session = null;
		try {
			session = sessionAnnotationFactory.getCurrentSession();
			Criteria criteria = (Criteria) session
					.createCriteria("th.co.food.domain.FoodBill");

			criteria.add(Expression.eq("fbStatus", "0"));
			List l = criteria.list();
			List list = new ArrayList();
			if (l != null && l.size() > 0) {
				for (int i = 0; i < l.size(); i++) {
					FoodBill bill = (FoodBill) l.get(i);
					String queryStrtotal = "select count(foodOrder) from FoodOrder foodOrder where foodOrder.foodBill.fbId=? ";
					String queryStrComplete = "select count(foodOrder) from FoodOrder foodOrder where foodOrder.foodBill.fbId=? and foodOrder.foStatus=?";
					Query query = session.createQuery(queryStrtotal);
					query.setParameter(0, bill.getFbId());
					int total = Integer.parseInt(query.uniqueResult()
							.toString());
					query = session.createQuery(queryStrComplete);
					query.setParameter(0, bill.getFbId());
					query.setParameter(1, "1");
					int complete = Integer.parseInt(query.uniqueResult()
							.toString());
					if (total == complete)
						list.add(bill);
				}
			}
			transList.add(list);

			transList.add(list.size() + "");

			return transList;
		} catch (Exception re) {
			re.printStackTrace();

		}
		return null;
	}
}
