package th.co.food.web.service.impl;

import java.util.List;

import th.co.food.dto.FoodBillDTO;
import th.co.food.dto.FoodCustomerDTO;
import th.co.food.dto.FoodMenuDTO;
import th.co.food.dto.FoodOrderDTO;
import th.co.food.dto.ResultMessage;
import th.co.food.web.service.FoodService;
 
/**
 * 
 *
 */
public class FoodServiceImpl extends FoodPostCommon implements FoodService {

	public List getFoodMenu(FoodMenuDTO foodMenuDTO) {
		// TODO Auto-generated method stub
		//return null;
		foodMenuDTO.setServiceName("searchFoodMenu");
		th.co.food.dto.ResultMessage resultMessage =  (ResultMessage) postMessage(foodMenuDTO,foodMenuDTO.getClass(),foodMenuDTO.getClass(),"/foods",true);
		return resultMessage.getResultDTO().getResultList();
	}
	public List getFoodOrders(FoodOrderDTO foodOrderDTO){
		foodOrderDTO.setServiceName("searchFoodOrder");
		th.co.food.dto.ResultMessage resultMessage =  (ResultMessage) postMessage(foodOrderDTO,foodOrderDTO.getClass(),foodOrderDTO.getClass(),"/foods",true);
		return resultMessage.getResultDTO().getResultList();
	}
	public List getCustomer(FoodCustomerDTO foodCustomerDTO){
		foodCustomerDTO.setServiceName("searchFoodCustomer");
		th.co.food.dto.ResultMessage resultMessage =  (ResultMessage) postMessage(foodCustomerDTO,foodCustomerDTO.getClass(),foodCustomerDTO.getClass(),"/foods",true);
		return resultMessage.getResultDTO().getResultList();
	}
	
	public void orderMenus(FoodBillDTO foodBillDTO) {
		// TODO Auto-generated method stub
	//	ResultMessage resultMessage = new ResultMessage();
		/*FoodMenuDTO foodMenuDTO =new FoodMenuDTO();
		foodMenuDTO.setServiceName("orderMenus");*/
		//BaseDTO baseDTO = new BaseDTO();
	//	foodMenuDTO.setListObj(foodMenus);
		foodBillDTO.setServiceName("orderMenus");
		postMessage(foodBillDTO,foodBillDTO.getClass(),foodBillDTO.getClass(),"/foods",false);
	}
	public void setMenuStatus(FoodMenuDTO foodMenuDTO) {
		// TODO Auto-generated method stub
		foodMenuDTO.setServiceName("setMenuStatus");
		postMessage(foodMenuDTO,foodMenuDTO.getClass(),foodMenuDTO.getClass(),"/foods",false);
	}
	public void addCustomer(FoodCustomerDTO foodCustomerDTO) {
		// TODO Auto-generated method stub
		foodCustomerDTO.setServiceName("addCustomer");
		postMessage(foodCustomerDTO,foodCustomerDTO.getClass(),foodCustomerDTO.getClass(),"/foods",false);
	}
	/*

	public int addNtcFaq(NtcFaq ntcFaq) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int addNtcFaqMessage(NtcFaqMessage ntcFaqMessage) {
		// TODO Auto-generated method stub
		return 0;
	}

	public void deleteNtcFaq(String key) {
		// TODO Auto-generated method stub
		NtcFaq ntcFaq = new NtcFaq();
		ntcFaq.setNfaqId(key);
		ntcFaq.setServiceName(ServiceConstant.FAQ_DELETE);
		postMessage(ntcFaq,ntcFaq.getClass().getName(),"faqs/",false);
	}

	public void deleteNtcFaqMessage(String key) {
		// TODO Auto-generated method stub
		
		NtcFaqMessage ntcFaqMessage = new NtcFaqMessage();
		ntcFaqMessage.setNfaqMId(key);
		String nfaqId = "0";
		ntcFaqMessage.setServiceName(ServiceConstant.FAQ_MESSAGE_DELETE);
		postMessage(ntcFaqMessage,ntcFaqMessage.getClass().getName(),"faqs/"+nfaqId+"/faqmessages",false);
	}

	public NtcFaq getNtcFaq(String key) {
		// TODO Auto-generated method stub
		NtcFaq ntcFaq = new NtcFaq();
		ntcFaq.setNfaqId(key);
		ntcFaq.setServiceName(ServiceConstant.FAQ_FIND_BY_ID);
		VResultMessage  vresultMessage = postMessage(ntcFaq,ntcFaq.getClass().getName(),"faqs/",true);		
		return (NtcFaq)vresultMessage.getResultListObj().get(0);
	}

	public NtcFaqMessage getNtcFaqMessage(String key) {
		// TODO Auto-generated method stub
		NtcFaqMessage ntcFaqMessage = new NtcFaqMessage();
		String nfaqId = "0";
		ntcFaqMessage.setNfaqMId(key);
		ntcFaqMessage.setServiceName(ServiceConstant.FAQ_MESSAGE_FIND_BY_ID);
		VResultMessage  vresultMessage = postMessage(ntcFaqMessage,ntcFaqMessage.getClass().getName(),"faqs/"+nfaqId+"/faqmessages",true);		
		return (NtcFaqMessage)vresultMessage.getResultListObj().get(0);
	}

	public void saveNtcFaq(NtcFaq ntcFaq) {
		// TODO Auto-generated method stub
		//ntcFaq.setServiceName(ServiceConstant.FAQ_SAVE);
		postMessage(ntcFaq,ntcFaq.getClass().getName(),"faqs/",false);
	}

	public void saveNtcFaqMessage(NtcFaqMessage ntcFaqMessage) {
		// TODO Auto-generated method stub
		String nfaqId = ntcFaqMessage.getNfaqId();
		postMessage(ntcFaqMessage,ntcFaqMessage.getClass().getName(),"faqs/"+nfaqId+"/faqmessages",false); 
	}
	 
	public VResultMessage  searchNtcFaq(NtcFaq ntcFaq) {
		// TODO Auto-generated method stub		
		ntcFaq.setServiceName(ServiceConstant.FAQ_SEARCH);
		VResultMessage  vresultMessage = postMessage(ntcFaq,ntcFaq.getClass().getName(),"faqs/",true); 
		return    vresultMessage ;
	}

	public VResultMessage searchNtcFaqMessage(NtcFaqMessage ntcFaqMessage) {
		// TODO Auto-generated method stub
		ntcFaqMessage.setServiceName(ServiceConstant.FAQ_MESSAGE_SEARCH);
		String nfaqId = ntcFaqMessage.getNfaqId();
		VResultMessage  vresultMessage = postMessage(ntcFaqMessage,ntcFaqMessage.getClass().getName(),"faqs/"+nfaqId+"/faqmessages",true); 
		return vresultMessage;
	}

	public NtcRadioApprovalGroup findApprovalGroupById(String key) {
		NtcRadioApprovalGroup approvalGroup = new NtcRadioApprovalGroup();
		approvalGroup.setNragId(key);
		approvalGroup.setServiceName(ServiceConstant.NTC_RADIO_APPROVAL_GROUP_FIND_BY_ID);
		VResultMessage  vresultMessage = postMessage(approvalGroup,approvalGroup.getClass().getName(),"radioapprovalgroups/",true);		
		return (NtcRadioApprovalGroup)vresultMessage.getResultListObj().get(0);
	}
/*
 * 
 */
	public static void main(String[] args) {
		FoodServiceImpl service = new FoodServiceImpl();	
		System.out.println(service.getFoodMenu(new FoodMenuDTO()));
		//VResultMessage v = service.searchNtcFaqMessage(new NtcFaqMessage());
		
		/*NtcFaq faq = new NtcFaq();
		NtcFaqMessage ntcFaqMessage = new NtcFaqMessage();
		ntcFaqMessage.setNfaqId("9");
		ntcFaqMessage.setNfaqMId("2");
		ntcFaqMessage.setNfaqMessage("Aoe Message !!!");
	//	ntcFaqMessage.setServiceName(ServiceConstant.FAQ_MESSAGE_UPDATE);
	//	faq.setNfaqId("2");
		faq.setNfaqLevel("1");
		faq.setNfaqName("JAVA FAQ99");
		//faq.setServiceName(ServiceConstant.FAQ_SAVE);
		//service.deleteNtcFaqMessage("2");
		VResultMessage v = service.searchNtcFaq(new NtcFaq());
		System.out.println(v.getResultListObj());
		NtcRadioApprovalGroup x = service.findApprovalGroupById("5");
		System.out.println(x);
	   service.deleteNtcFaqMessage("2");//saveNtcFaqMessage(ntcFaqMessage);
		
		
		System.out.println("xx"+ntcFaqMessage2.getNfaqMessage());
		NtcFaq result = service.getNtcFaq("2");
		System.out.println(result.getNfaqName());
		//faq.setServiceName(ServiceConstant.FAQ_UPDATE);
		//VResultMessage v = service.saveNtcFaq(ntcFaq)searchNtcFaq(faq);
		//System.out.println(v.getResultListObj());
		 */
	}

 
 
}
