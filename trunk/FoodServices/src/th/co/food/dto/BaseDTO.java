package th.co.food.dto;

import java.io.Serializable;
import java.util.ArrayList;

import com.thoughtworks.xstream.annotations.XStreamAlias;





@XStreamAlias("baseDTO")
public class BaseDTO implements Serializable {

	private static final long serialVersionUID = 1L;

	@XStreamAlias("serviceName")
	private String serviceName;
  
	@XStreamAlias("orderBy")
	private String orderBy;
	
	@XStreamAlias("listObj") 
	private ArrayList listObj;
	
	public String getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(String orderBy) {
		this.orderBy = orderBy;
	}

	public String getServiceName() {
		return serviceName;
	}

	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}

	public ArrayList getListObj() {
		return listObj;
	}

	public void setListObj(ArrayList listObj) {
		this.listObj = listObj;
	}

 
}
