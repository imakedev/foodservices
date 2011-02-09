package th.co.food.web.service;

import java.util.List;

import th.co.food.dto.FoodBillDTO;
import th.co.food.dto.FoodCustomerDTO;
import th.co.food.dto.FoodMenuDTO;
import th.co.food.dto.FoodOrderDTO;
 

/**
 *  
 *
 */
public interface  FoodService {
	public List getFoodMenu(FoodMenuDTO foodMenuDTO);
	public List searchFoodBill(FoodBillDTO foodBillDTO);
	public FoodBillDTO getFoodBill(FoodBillDTO foodBillDTO);
	public FoodBillDTO orderMenus(FoodBillDTO foodBillDTO);
	public List getFoodOrders(FoodOrderDTO foodOrderDTO);
	public void charge(FoodCustomerDTO foodCustomerDTO);
	public void setMenuStatus(FoodMenuDTO foodMenuDTO);
	public void setOrderStatus(FoodOrderDTO foodOrderDTO);
	public void setBillStatus(FoodBillDTO foodBillDTO);
	public void addCustomer(FoodCustomerDTO foodCustomerDTO);
	public List getCustomer(FoodCustomerDTO foodCustomerDTO);
	public void deleteMenu(FoodMenuDTO foodMenuDTO);
	public void topUp(FoodCustomerDTO foodCustomerDTO);
	public FoodMenuDTO addOrEditFoodMenu(FoodMenuDTO foodMenuDTO);
	public List listBillComplete(FoodBillDTO foodBillDTO);
	public List listBillSummarry(FoodBillDTO foodBillDTO);
	
	/*public NtcFaq getNtcFaq(String key);  
	public int addNtcFaq(NtcFaq ntcFaq); 
	public void saveNtcFaq(NtcFaq ntcFaq);
	public void deleteNtcFaq(String key);
	public VResultMessage  searchNtcFaq(NtcFaq ntcFaq);
	
	public NtcFaqMessage getNtcFaqMessage(String key);  
	public int addNtcFaqMessage(NtcFaqMessage ntcFaqMessage); 
	public void saveNtcFaqMessage(NtcFaqMessage ntcFaqMessage);
	public void deleteNtcFaqMessage(String key);
	public VResultMessage searchNtcFaqMessage(NtcFaqMessage ntcFaqMessage);*/
}