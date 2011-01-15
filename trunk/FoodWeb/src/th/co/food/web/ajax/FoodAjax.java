package th.co.food.web.ajax;

import java.util.ArrayList;
import java.util.List;

import th.co.food.dto.FoodMenuDTO;
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
	//	FoodMenuDTO foodMenuDTO =new FoodMenuDTO();
	//	foodMenuDTO.setFmStatus("1");
		//return foodService.getFoodMenu(foodMenuDTO);
		 
		List list = new ArrayList();
		for (int i = 0; i <5; i++) {
			FoodMenuDTO f1 =new FoodMenuDTO();
			f1.setFmCalories(1f+i);
			f1.setFmDetail("menu Detail "+(i+1));
			f1.setFmName("menu Name "+(i+1));
			f1.setFmId(i+1);
			f1.setFmPrice(100f+i);
			f1.setFmPicturePath("http://localhost:8081/pic1.jpg");
			list.add(f1);
		}
		return list;
		
		//return null;
	}
	
	public static void main(String[] args) {
		
		FoodAjax personalImpl = new FoodAjax();
		//NtcPersonalPicture   ntcPersonal = new NtcPersonalPicture();
		
	   //ntcPersonal.setNppUserId("10416");
	   // ntcPersonal.setServiceName(ServiceConstant.NTC_PERSONAL_PICTURE_SEARCH);
	    personalImpl.SearchPersonal("10416");
		
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
