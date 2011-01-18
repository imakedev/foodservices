
package th.co.food.services.rest.resource;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.xml.parsers.ParserConfigurationException;

import org.restlet.data.MediaType;
import org.restlet.ext.xml.DomRepresentation;
import org.restlet.representation.Representation;
import org.restlet.resource.Get;
import org.restlet.resource.Post;
import org.restlet.resource.ResourceException;
import org.restlet.resource.ServerResource;
import org.w3c.dom.Document;
import org.xml.sax.SAXException;

import th.co.food.domain.FoodBill;
import th.co.food.domain.FoodCustomer;
import th.co.food.domain.FoodMenu;
import th.co.food.domain.FoodOrder;
import th.co.food.dto.FoodBillDTO;
import th.co.food.dto.FoodCustomerDTO;
import th.co.food.dto.FoodMenuDTO;
import th.co.food.dto.FoodOrderDTO;
import th.co.food.dto.ResultDTO;
import th.co.food.dto.ResultMessage;
import th.co.food.service.FoodService;
import th.co.food.services.common.util.XStreamUtils;
 
public class FoodsResource  extends ServerResource {

 
	private FoodService foodService;
	private com.thoughtworks.xstream.XStream xstream;
 
 

	public FoodService getFoodService() {
		return foodService;
	}

	public void setFoodService(FoodService foodService) {
		this.foodService = foodService;
	}

	public com.thoughtworks.xstream.XStream getXstream() {
		return xstream;
	}

	public void setXstream(com.thoughtworks.xstream.XStream xstream) {
		this.xstream = xstream;
	} 
	/*
	 * // /foods
	 */
	@Post
	public org.restlet.representation.Representation acceptContact(
			org.restlet.representation.Representation entity)
			throws ResourceException {
		System.out.println("into Post");
		InputStream in = null;
		ResultDTO resultDTO= null;
		try { 
			in = entity.getStream(); 
			th.co.food.dto.BaseDTO  baseDTO = null;
			Object baseObj = XStreamUtils.getXstream().fromXML(in);
			if (baseObj != null) {
				baseDTO = (th.co.food.dto.BaseDTO) baseObj;
			} 
			String serviceName = "";
			serviceName = baseDTO.getServiceName();  
			System.out.println("servicename="+serviceName);
			if("searchFoodMenu".equals(serviceName)){
				resultDTO = new ResultDTO();
				FoodMenuDTO foodMenuDTO =(FoodMenuDTO)baseDTO;
				
				FoodMenu foodMenu =new FoodMenu();
				foodMenu.setFmId(foodMenuDTO.getFmId());
				foodMenu.setFmStatus(foodMenuDTO.getFmStatus());
				List list = foodService.searchFoodMenu(foodMenu);
				if(list!=null && list.size()>0){
					List l = (List) list.get(0);
					int size = l.size();
					ArrayList result = new ArrayList(size);
					for (int i = 0; i < size; i++) {
						FoodMenuDTO dto =new FoodMenuDTO(); 
						FoodMenu menu =(FoodMenu)l.get(i);
						dto.setFmId(menu.getFmId());
						dto.setFmCalories(menu.getFmCalories());
						dto.setFmDetail(menu.getFmDetail());
						dto.setFmPrice(menu.getFmPrice());
						dto.setFmName(menu.getFmName());
						dto.setFmPictureName(menu.getFmPictureName());
						dto.setFmPicturePath(menu.getFmPicturePath());
						result.add(dto);
					}
					resultDTO.setResultList(result);
				}
			}else if("orderMenus".equals(serviceName)){
			//	foodService.orderMenus(foodMenus);
				FoodBillDTO foodBillDTO =(FoodBillDTO)baseDTO;
				FoodBill  foodBill = new FoodBill();
				Date now =new Date();
				foodBill.setFbBillDate(now);
			//	foodBill.setFbBillTime(fbBillTime)BillDate(now);
				foodBill.setFbTotalCalories(foodBillDTO.getFbTotalCalories());
				foodBill.setFbTotalPrice(foodBillDTO.getFbTotalPrice());
				foodBill.setFbTotalQuantity(foodBillDTO.getFbTotalQuantity());
				foodBill.setFbStatus(foodBillDTO.getFbStatus());
				if(foodBillDTO.getFoodOrders()!=null && foodBillDTO.getFoodOrders().length>0){
					FoodOrderDTO[] list  = foodBillDTO.getFoodOrders();
					int size = list.length;
				//	System.out.println("foodOrder size="+size);
					ArrayList foodOrders = new ArrayList(size); 
					for (int i = 0; i < size; i++) {
						//foodBillDTO.getListObj()
						FoodOrder  foodOrder = new FoodOrder();
						FoodMenu foodMenu = new FoodMenu();
						//System.out.println("[ aoe debug]="+list[i].toString());
						FoodOrderDTO foodOrderDTO =list[i];
						FoodMenuDTO foodMenuDTO = foodOrderDTO.getFoodMenuDTO();
						// copy FoodMenuDTO to FoodMenu
						// foodMenuDTO ==> foodMenu
						System.out.println(foodMenuDTO.getFmId());
						 foodMenu.setFmId(foodMenuDTO.getFmId());
					
						foodOrder.setFoodBill(foodBill);
						foodOrder.setFoodMenu(foodMenu);
						foodOrder.setFoStatus(foodOrderDTO.getFoStatus());
						//foodOrder.setFoPhoneNumber(foodOrderDTO.getFoPhoneNumber());
						foodOrder.setFoQuantity(foodOrderDTO.getFoQuantity());
						foodOrder.setFoTotalCalories(foodOrderDTO.getFoTotalCalories());
						foodOrder.setFoTotalPrice(foodOrderDTO.getFoTotalPrice());
						foodOrders.add(foodOrder); 
					}
					foodService.orderMenus(foodBill, foodOrders);
				}
				//foodService.orderMenus(foodOrderDTO.getListObj());
			}else if("searchFoodOrder".equals(serviceName)){

				resultDTO = new ResultDTO();
				FoodOrderDTO foodOrderDTO =(FoodOrderDTO)baseDTO;
				
				FoodOrder foodOrder =new FoodOrder();
			/*	foodOrder.setFmId(foodOrderDTO.getFmId());
				foodOrder.setFmStatus(foodOrderDTO.getFmStatus());*/
				List list = foodService.searchFoodOrder(foodOrder);
				if(list!=null && list.size()>0){
					List l = (List) list.get(0);
					int size = l.size();
					ArrayList result = new ArrayList(size);
					for (int i = 0; i < size; i++) {
						FoodOrderDTO dto =new FoodOrderDTO(); 
						FoodOrder order =(FoodOrder)l.get(i);
						/*dto.setFmId(menu.getFmId());
						dto.setFmCalories(menu.getFmCalories());
						dto.setFmDetail(menu.getFmDetail());
						dto.setFmPrice(menu.getFmPrice());
						dto.setFmName(menu.getFmName());
						dto.setFmPictureName(menu.getFmPictureName());
						dto.setFmPicturePath(menu.getFmPicturePath());*/
						result.add(dto);
					}
					resultDTO.setResultList(result);
				}
			
			}else if("setMenuStatus".equals(serviceName)){
				resultDTO = new ResultDTO();
				FoodMenuDTO foodMenuDTO =(FoodMenuDTO)baseDTO;
				
				FoodMenu foodMenu =new FoodMenu();
				foodMenu.setFmId(foodMenuDTO.getFmId());
				foodMenu.setFmStatus(foodMenuDTO.getFmStatus());
				  foodService.setMenuStatus(foodMenu);
			}else if("addCustomer".equals(serviceName)){
				resultDTO = new ResultDTO();
				FoodCustomerDTO foodCustomerDTO =(FoodCustomerDTO)baseDTO;
				FoodCustomer foodCustomer = new FoodCustomer();
				foodCustomer.setFcId(foodCustomerDTO.getFcId()); 
				foodCustomer.setFcBirthDay(foodCustomerDTO.getFcBirthDay());
				foodCustomer.setFcMoney(foodCustomerDTO.getFcMoney());
				foodCustomer.setFcName(foodCustomerDTO.getFcName());
				foodCustomer.setFcSurName(foodCustomerDTO.getFcSurName());
				foodService.saveFoodCustomer(foodCustomer);
				
			}else if("searchFoodCustomer".equals(serviceName)){
				resultDTO = new ResultDTO();
				FoodCustomerDTO foodCustomerDTO =(FoodCustomerDTO)baseDTO;
				
				FoodCustomer foodCustomer =new FoodCustomer();
				foodCustomer.setFcId(foodCustomerDTO.getFcId());
				//foodCustomer.setFmStatus(foodCustomerDTO.getFmStatus());
				List list = foodService.searchFoodCustomer(foodCustomer);
				if(list!=null && list.size()>0){
					List l = (List) list.get(0);
					int size = l.size();
					ArrayList result = new ArrayList(size);
					for (int i = 0; i < size; i++) {
						FoodCustomerDTO dto =new FoodCustomerDTO(); 
						FoodCustomer cust =(FoodCustomer)l.get(i);
						dto.setFcId(cust.getFcId());
						dto.setFcBirthDay(cust.getFcBirthDay());
						dto.setFcMoney(cust.getFcMoney());
						dto.setFcName(cust.getFcName());
						dto.setFcSurName(cust.getFcSurName()); 
						result.add(dto);
					}
					resultDTO.setResultList(result);
				}
			}
			
			if (resultDTO != null) {
				ResultMessage vresultMessage = new ResultMessage();
				vresultMessage.setResultDTO(resultDTO);  
				return export(vresultMessage, XStreamUtils.getXstream());
			}  
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			try {
				if (in != null)
					in.close(); 
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null; 
	}
	@Get
	public org.restlet.representation.Representation represent() throws ResourceException { 
		ResultDTO resultDTO= null;
		System.out.println("into Get");
		FoodMenu foodMenu =new FoodMenu(); 
		List list = foodService.searchFoodMenu(foodMenu);
		if(list!=null && list.size()>0){
			resultDTO = new ResultDTO();
			List l = (List) list.get(0);
			int size = l.size();
			ArrayList result = new ArrayList(size);
			for (int i = 0; i < size; i++) {
				FoodMenu menu =(FoodMenu)l.get(i);
				FoodMenuDTO dto =new FoodMenuDTO(); 
				dto.setFmId(menu.getFmId());
				dto.setFmCalories(menu.getFmCalories());
				dto.setFmDetail(menu.getFmDetail());
				dto.setFmPrice(menu.getFmPrice());
				dto.setFmName(menu.getFmName());
				dto.setFmPictureName(menu.getFmPictureName());
				dto.setFmPicturePath(menu.getFmPicturePath());
				result.add(dto);
			}
			resultDTO.setResultList(result);
		}
		if (resultDTO != null) {
			ResultMessage vresultMessage = new ResultMessage();
			vresultMessage.setResultDTO(resultDTO);  
			return export(vresultMessage, XStreamUtils.getXstream());
		}
		return null;  
	} 
	 
	public Representation export( ResultMessage resultMessage,
			com.thoughtworks.xstream.XStream xstream) {

		 
		DomRepresentation representation_aoe = null;

		javax.xml.parsers.DocumentBuilderFactory dbf = javax.xml.parsers.DocumentBuilderFactory
				.newInstance();
		dbf.setNamespaceAware(true);
		javax.xml.parsers.DocumentBuilder db = null;
		try {
			db = dbf.newDocumentBuilder();
		} catch (ParserConfigurationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	/*	xstream
				.processAnnotations(ResultDTO.class);// or
		xstream
		.processAnnotations(VResultMessage.class);*/
																					// xstream.autodetectAnnotations(true);
																					// (Auto-detect
																					// Annotations)
	//	xstream.autodetectAnnotations(true);
		String xml = xstream.toXML(resultMessage);
		Document document = null;
		InputStream in = null;
		try {
			in = new ByteArrayInputStream(xml.getBytes("UTF-8"));
			document = db.parse(in);
		} catch (UnsupportedEncodingException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (in != null)
				try {
					in.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}

		document.normalizeDocument();
		try {
			representation_aoe = new DomRepresentation(
			// MediaType.TEXT_XML);
					MediaType.APPLICATION_ATOM_XML);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		representation_aoe.setDocument(document);
		//getResponse().setEntity(representation_aoe);
		return representation_aoe;
	}
}
