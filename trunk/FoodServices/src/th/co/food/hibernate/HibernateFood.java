package th.co.food.hibernate;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Expression;
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
public class HibernateFood   implements FoodService{
	
	private SessionFactory sessionAnnotationFactory;
	public SessionFactory getSessionAnnotationFactory() {
		return sessionAnnotationFactory;
	}
	public void setSessionAnnotationFactory(SessionFactory sessionAnnotationFactory) {
		this.sessionAnnotationFactory = sessionAnnotationFactory;
	}
	/*
	 * FoodBill.java
FoodMenu.java
FoodOrder.java
	 */
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public void deleteFoodBill(FoodBill persistentInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub 
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try{
			session.delete(persistentInstance);
			}finally {
				if (session != null) {
					session = null;
				} 
			}
	}
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public void deleteFoodMenu(FoodMenu persistentInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub 
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try{
			session.delete(persistentInstance);
			}finally {
				if (session != null) {
					session = null;
				} 
			}
	}
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public void deleteFoodOrder(FoodOrder persistentInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub 
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try{
			session.delete(persistentInstance);
			}finally {
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
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try {
			obj = session.get("th.co.food.domain.FoodBill", fbId);
			if(obj!=null)
				foodBill = (FoodBill)obj;
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
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try {
			obj = session.get("th.co.food.domain.FoodMenu", fmId);
			if(obj!=null)
				foodMenu = (FoodMenu)obj;
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
		Session  session = sessionAnnotationFactory.getCurrentSession();
		try {
			obj = session.get("th.co.food.domain.FoodOrder", foId);
			if(obj!=null)
				foodOrder = (FoodOrder)obj;
		} catch (RuntimeException re) {
			throw re;
		} finally {
			if (session != null) {
				session = null;
			}
		}
		 return foodOrder;		 
	}
	
	 
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public Integer saveFoodBill(FoodBill transientInstance) throws DataAccessException {
		// TODO Auto-generated method stub
		
		Session  session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId  = null;
		try{
			Object obj = session.save(transientInstance);
		
			if(obj!=null){
				returnId =(Integer) obj;
			}
			} finally {
				if (session != null) {
					session = null;
				} 
			}
		return returnId;	
	}
	
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public Integer saveFoodMenu(FoodBill transientInstance) throws DataAccessException {
		// TODO Auto-generated method stub
		
		Session  session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId  = null;
		try{
			Object obj = session.save(transientInstance);
		
			if(obj!=null){
				returnId =(Integer) obj;
			}
			} finally {
				if (session != null) {
					session = null;
				} 
			}
		return returnId;	
	}
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public Integer saveFoodOrder(FoodBill transientInstance) throws DataAccessException {
		// TODO Auto-generated method stub
		
		Session  session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId  = null;
		try{
			Object obj = session.save(transientInstance);
		
			if(obj!=null){
				returnId =(Integer) obj;
			}
			} finally {
				if (session != null) {
					session = null;
				} 
			}
		return returnId;	
	}
	@Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public Integer saveFoodCustomer(FoodCustomer transientInstance) throws DataAccessException {
		// TODO Auto-generated method stub
		
		Session  session = sessionAnnotationFactory.getCurrentSession();
		Integer returnId  = null;
		try{
			Object obj = session.save(transientInstance);
		
			if(obj!=null){
				returnId =(Integer) obj;
			}
			} finally {
				if (session != null) {
					session = null;
				} 
			}
		return returnId;	
	}
	@Transactional(readOnly=true)
	public List searchFoodBill(FoodBill instance)
			throws DataAccessException {
		// TODO Auto-generated method stub
		 
		ArrayList  transList = new ArrayList ();
		Session session = null;
		try {
			session = sessionAnnotationFactory.getCurrentSession();
			Criteria criteria 	= (Criteria) session.createCriteria("th.co.food.domain.FoodMenu"); 
			
			Integer fbId = instance.getFbId();
			//instance.getf
		//	FoodOrder foodOrder = instance.ggetFoodOrder();
			
			boolean iscriteria = false;
			boolean  isSelectAll = false;
		
			 if(fbId !=null && fbId.intValue()!=0){  
				  criteria.add(Expression.eq("fbId",  fbId));
				  iscriteria = true;
			 } 
			 
				//criteria.addOrder(Order.asc("nfaqId")); 
		 
			 List l = criteria.list(); 
		  
			transList.add(l);
			 
		 	transList.add(l.size()+""); 
			 
		
			return transList;
		} catch (Exception re) { 
			re.printStackTrace();
			 
		}
		return null;
	}
	 
	@Transactional(readOnly=true)
	public List searchFoodMenu(FoodMenu instance)
			throws DataAccessException {
		// TODO Auto-generated method stub
		 
		ArrayList  transList = new ArrayList ();
		Session session = null;
		try {
			session = sessionAnnotationFactory.getCurrentSession();
			Criteria criteria 	= (Criteria) session.createCriteria("th.co.food.domain.FoodMenu"); 
			
			Integer fmId = instance.getFmId();
			String fmName = instance.getFmName();
			String fmDetail = instance.getFmDetail();
			String fmStatus = instance.getFmStatus();
			boolean iscriteria = false;
			boolean  isSelectAll = false;
		
			 if(fmId !=null && fmId.intValue()!=0){  
				  criteria.add(Expression.eq("fmId",  fmId));
				  iscriteria = true;
			 } 
			 
			if(fmName !=null && !"".equals(fmName) && !" ".equals(fmName)){ 
				 criteria.add(Expression.eq("fmName", fmName));	
				iscriteria = true;
			} 
			if(fmDetail !=null && !"".equals(fmDetail) && !" ".equals(fmDetail)){ 
				 criteria.add(Expression.eq("fmDetail", fmDetail));	
				iscriteria = true;
			} 
			if(fmStatus !=null && !"".equals(fmStatus) && !" ".equals(fmStatus)){ 
				 criteria.add(Expression.eq("fmStatus", fmStatus));	
				iscriteria = true;
			} 
			//criteria.addOrder(Order.asc("nfaqId")); 
		 
			 List l = criteria.list(); 
		  
			transList.add(l);
			 
		 	transList.add(l.size()+""); 
			 
		
			return transList;
		} catch (Exception re) { 
			re.printStackTrace();
			 
		}
		return null;
	}
	@Transactional(readOnly=true)
	public List searchFoodOrder(FoodOrder instance)
			throws DataAccessException {
		// TODO Auto-generated method stub
		 
		ArrayList  transList = new ArrayList ();
		Session session = null;
		try {
			session = sessionAnnotationFactory.getCurrentSession();
			Criteria criteria 	= (Criteria) session.createCriteria("th.co.food.domain.FoodOrder"); 
			
			Integer fbId = instance.getFoId();
			FoodBill foodBill = instance.getFoodBill();
			FoodMenu foodMenu = instance.getFoodMenu();
			boolean iscriteria = false;
			boolean  isSelectAll = false;
		
			 if(fbId !=null && fbId.intValue()!=0){  
				  criteria.add(Expression.eq("fbId",  fbId));
				  iscriteria = true;
			 } 
			 
			if(foodBill !=null && !"".equals(foodBill) && !" ".equals(foodBill)){ 
				 criteria.add(Expression.eq("foodBill", foodBill));	
				iscriteria = true;
			} 
			if(foodMenu !=null && !"".equals(foodMenu) && !" ".equals(foodMenu)){ 
				 criteria.add(Expression.eq("foodMenu", foodMenu));	
				iscriteria = true;
			} 	
			//criteria.addOrder(Order.asc("nfaqId")); 
		 
			 List l = criteria.list(); 
		  
			transList.add(l);
			 
		 	transList.add(l.size()+""); 
			 
		
			return transList;
		} catch (Exception re) { 
			re.printStackTrace();
			 
		}
		return null;
	}
	@Transactional(readOnly=true)
	public List searchFoodCustomer(FoodCustomer instance)	throws DataAccessException {
		// TODO Auto-generated method stub
		 
		ArrayList  transList = new ArrayList ();
		Session session = null;
		try {
			session = sessionAnnotationFactory.getCurrentSession();
			Criteria criteria 	= (Criteria) session.createCriteria("th.co.food.domain.FoodCustomer"); 
			
			Integer fcId = instance.getFcId();
		 
			boolean iscriteria = false;
			boolean  isSelectAll = false;
		
			 if(fcId !=null && fcId.intValue()!=0){  
				  criteria.add(Expression.eq("fcId",  fcId));
				  iscriteria = true;
			 } 
			 
		 
			//criteria.addOrder(Order.asc("nfaqId")); 
		 
			 List l = criteria.list(); 
		  
			transList.add(l);
			 
		 	transList.add(l.size()+""); 
			 
		
			return transList;
		} catch (Exception re) { 
			re.printStackTrace();
			 
		}
		return null;
	
	}
	 @Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public int updateFoodBill(FoodBill transientInstance)
			throws DataAccessException {
		// TODO Auto-generated method stub 
		 Session  session = sessionAnnotationFactory.getCurrentSession();
		 int canUpdate = 0;
			try{
				session.update(transientInstance);
				canUpdate =1;
				}catch (Exception e) {
					// TODO: handle exception
				} finally {
					if (session != null) {
						session = null;
					} 
				}
				return canUpdate;
	}
	 @Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
		public int updateFoodMenu(FoodMenu transientInstance)
				throws DataAccessException {
			// TODO Auto-generated method stub 
			 Session  session = sessionAnnotationFactory.getCurrentSession();
			 int canUpdate = 0;
				try{
					session.update(transientInstance);
					canUpdate =1;
					}catch (Exception e) {
						// TODO: handle exception
					} finally {
						if (session != null) {
							session = null;
						} 
					}
					return canUpdate;
		}
	 @Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
		public int updateFoodOrder(FoodOrder transientInstance)
				throws DataAccessException {
			// TODO Auto-generated method stub 
			 Session  session = sessionAnnotationFactory.getCurrentSession();
			 int canUpdate = 0;
				try{
					session.update(transientInstance);
					canUpdate =1;
					}catch (Exception e) {
						// TODO: handle exception
					} finally {
						if (session != null) {
							session = null;
						} 
					}
					return canUpdate;
		}	
	 @Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	 public void orderMenus(FoodBill foodBill,ArrayList foodOrders) {
			// TODO Auto-generated method stub
		 // save FoodBill 
		 Session  session = sessionAnnotationFactory.getCurrentSession();
			Integer returnId  = null;
			try{
				Object obj = session.save(foodBill);
			
				if(obj!=null){
					returnId =(Integer) obj;
					foodBill.setFbId(returnId);
					// save Food Order
					 if(foodOrders!=null){
						 
						 for (int i = 0; i < foodOrders.size(); i++) {
							 FoodOrder foodOrder = (FoodOrder)foodOrders.get(i);
							 foodOrder.setFoodBill(foodBill);
							 session.save(foodOrder);
						//	 foodOrder.setFoodMenu(foodMenu);
							System.out.println("foodOrders="+foodOrders.get(i));
						}
					 }
				}
				} finally {
					if (session != null) {
						session = null;
					} 
				} 
		}
	 @Transactional(propagation = Propagation.REQUIRES_NEW,rollbackFor={RuntimeException.class})
	public void setMenuStatus(FoodMenu persistentInstance) {
		// TODO Auto-generated method stub
		 Session  session = sessionAnnotationFactory.getCurrentSession();
		 Query query= session.createQuery("update FoodMenu foodMenu set foodMenu.fmStatus =? where foodMenu.fmId =?");
		 query.setParameter(0, persistentInstance.getFmStatus());
		 query.setParameter(1, persistentInstance.getFmId());
		 query.executeUpdate();
	} 
}
