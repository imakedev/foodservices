package th.co.food.dto;

import java.io.Serializable;
import java.util.Date;

import com.thoughtworks.xstream.annotations.XStreamAlias;

@XStreamAlias("foodCustomerDTO")
public class FoodCustomerDTO extends BaseDTO  implements Serializable {
	private static final long serialVersionUID = 1L;
	 

	@XStreamAlias("fcId")
	private Integer fcId;
	 	
	@XStreamAlias("fcMoney")
	private Float fcMoney; 
	
	@XStreamAlias("fcName")
	private String fcName;

	@XStreamAlias("fcBirthDay")
	private Date fcBirthDay;
	
	@XStreamAlias("fcSurName")
	private String fcSurName;
/*	//bi-directional many-to-one association to FoodOrder
	@OneToMany(mappedBy="foodCustomer")
	private Set<FoodOrder> foodOrders;*/

    public FoodCustomerDTO() {
    }

	

	public Integer getFcId() {
		return fcId;
	}



	public void setFcId(Integer fcId) {
		this.fcId = fcId;
	}



	public Float getFcMoney() {
		return fcMoney;
	}



	public void setFcMoney(Float fcMoney) {
		this.fcMoney = fcMoney;
	}


 

	public Date getFcBirthDay() {
		return fcBirthDay;
	}



	public void setFcBirthDay(Date fcBirthDay) {
		this.fcBirthDay = fcBirthDay;
	}



	public String getFcSurName() {
		return fcSurName;
	}



	public void setFcSurName(String fcSurName) {
		this.fcSurName = fcSurName;
	}



	public String getFcName() {
		return this.fcName;
	}

	public void setFcName(String fcName) {
		this.fcName = fcName;
	}
 
}