package th.co.food.web.ajax;

import java.util.ArrayList;
import java.util.List;

import th.co.food.dto.FoodBillDTO;
import th.co.food.dto.FoodCustomerDTO;
import th.co.food.dto.FoodMenuDTO;
import th.co.food.dto.FoodOrderDTO;
import th.co.food.web.service.FoodService;
import th.co.food.web.service.impl.FoodServiceImpl;
 
/*
import th.or.ntc.constant.ServiceConstant;
import th.or.ntc.personalpage.service.PersonalPageService;
import th.or.ntc.personalpage.service.impl.PersonalPageServiceImpl;
import th.or.ntc.xstream.NtcPersonalPicture;
import th.or.ntc.xstream.common.VResultMessage;*/

public class FoodAjax {	 
	private FoodService foodService;
	public FoodAjax() {
		this.foodService =  new FoodServiceImpl();
	}
	public List getMenuList(FoodMenuDTO foodMenuDTO ){ 
		return foodService.getFoodMenu(foodMenuDTO); 
	}
	public List getOrdersList(FoodOrderDTO foodOrderDTO ){
	    return foodService.getFoodOrders(foodOrderDTO);
	}
	public void orderMenus(FoodBillDTO foodBillDTO){	
		//System.out.println(foodBillDTO.getListObj().toArray());
		FoodOrderDTO[] list = foodBillDTO.getFoodOrders();
		if(list!=null && list.length>0){
			int size = list.length;
			for(int i=0;i<size;i++){	
				FoodOrderDTO foodOrderDTO =list[i];
			FoodMenuDTO foodMenuDTO = foodOrderDTO.getFoodMenuDTO();
			System.out.println(foodMenuDTO);
			}
		}
		foodService.orderMenus(foodBillDTO);
	}
	public String setMenuStatus(FoodMenuDTO foodMenuDTO){
		foodService.setMenuStatus(foodMenuDTO);
		return "ok";
	}
	public String addCustomer(FoodCustomerDTO foodCustomerDTO){
		foodService.addCustomer(foodCustomerDTO);
		return "ok";
	}
	public List getCustomer(FoodCustomerDTO foodCustomerDTO){	 
		return foodService.getCustomer(foodCustomerDTO);
	}
	public static void main(String[] args) {
		
		FoodAjax personalImpl = new FoodAjax();
		//NtcPersonalPicture   ntcPersonal = new NtcPersonalPicture();
		
	   //ntcPersonal.setNppUserId("10416");
	   // ntcPersonal.setServiceName(ServiceConstant.NTC_PERSONAL_PICTURE_SEARCH);
	  //  personalImpl.SearchPersonal("10416");
		FoodBillDTO foodBillDTO = new FoodBillDTO();
		foodBillDTO.setServiceName("orderMenus");
		foodBillDTO.setFbTotalCalories(200f);
		foodBillDTO.setFbTotalPrice(500f);
		foodBillDTO.setFbTotalQuantity(2);
		ArrayList list =new ArrayList();
		FoodOrderDTO foodOrderDTO1 =new FoodOrderDTO();
		foodOrderDTO1.setFoodBillDTO(foodBillDTO);
		foodOrderDTO1.setFoQuantity(1);
	//	foodOrderDTO1.setFoPhoneNumber("015482543");
		foodOrderDTO1.setFoTotalCalories(50f);
		foodOrderDTO1.setFoTotalPrice(250f);
		
		FoodOrderDTO foodOrderDTO2 =new FoodOrderDTO();
		foodOrderDTO2.setFoodBillDTO(foodBillDTO);
		foodOrderDTO2.setFoQuantity(1);
	//	foodOrderDTO2.setFoPhoneNumber("015482543");
		foodOrderDTO2.setFoTotalCalories(150f);
		foodOrderDTO2.setFoTotalPrice(250f);
		// food menu1 and menu2
		FoodMenuDTO foodMenuDTO1 = new FoodMenuDTO();
		foodMenuDTO1.setFmId(new Integer(1));
		FoodMenuDTO foodMenuDTO2 = new FoodMenuDTO();
		foodMenuDTO2.setFmId(new Integer(2));
		
		// set menu1
		foodOrderDTO1.setFoodMenuDTO(foodMenuDTO1);
		foodOrderDTO2.setFoodMenuDTO(foodMenuDTO2);
		list.add(foodOrderDTO1);
		list.add(foodOrderDTO2);
		foodBillDTO.setListObj(list);
		personalImpl.orderMenus(foodBillDTO);
		
	}
	
public List SearchPersonal(String UserId) { 
		
		List list = new ArrayList();
/*
		NtcPersonalPicture ntcPersonal = new NtcPersonalPicture();


		ntcPersonal.setNppUserId(UserId);
		
		VResultMessage vresultMessage =PersonalPage.searchPersonal(ntcPersonal);
		logger.debug(" vresultMessage GlossaryAdminform >>>>>>>>>>>>>>>>>>>>>>>>" + vresultMessage.getMaxRow());
		logger.debug(" vresultMessage Obj >>>>>>>>>>>>>>>>>>>>>>>>" + vresultMessage.getResultListObj());
		list.add(vresultMessage.getResultListObj());
//		mList.add(page);
		System.out.println("List :"+list.size());
		*/

		return list;

	}



	
}
