package th.co.food.service;

import java.util.ArrayList;
import java.util.List;

import th.co.food.domain.FoodBill;
import th.co.food.domain.FoodCustomer;
import th.co.food.domain.FoodMenu;
import th.co.food.domain.FoodOrder;

public interface FoodService { 
	public void deleteFoodBill(FoodBill persistentInstance);	
	public void deleteFoodMenu(FoodMenu persistentInstance); 
	public void deleteFoodOrder(FoodOrder persistentInstance); 
	public FoodBill findFoodBillById(Integer fbId) ; 
	public FoodMenu findFoodMenuById(Integer fmId) ; 
	public FoodOrder findFoodOrderById(Integer foId);  
	public Integer saveFoodBill(FoodBill transientInstance); 	
	public Integer saveFoodMenu(FoodMenu transientInstance); 
	public Integer saveFoodOrder(FoodOrder transientInstance); 
	public Integer saveFoodCustomer(FoodCustomer transientInstance); 
	public List searchFoodBill(FoodBill instance); 
	public List searchFoodMenu(FoodMenu instance);
	public List searchFoodOrder(FoodOrder instance); 
	public List searchFoodCustomer(FoodCustomer instance); 
	public int updateFoodBill(FoodBill transientInstance);
	public int updateFoodMenu(FoodMenu transientInstance);	 
	public int updateFoodOrder(FoodOrder transientInstance); 
	
	public Integer orderMenus(FoodBill foodBill,ArrayList foodOrders);
	public void setMenuStatus(FoodMenu persistentInstance);
	public void setOrderStatus(Integer[] foIds,String foStatus);
	public void setBillStatus(Integer fbId,String fbStatus,String fbComplete,Integer fcId );
	public void charge(Integer fcId,Float fcMoney);
	public void topUp(FoodCustomer persistentInstance);
	public List listBillComplete(FoodBill instance); 
	public List listBillSummarry(FoodBill instance);
	public List test(FoodBill foodBill);
}
