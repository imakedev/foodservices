package th.co.food.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * The persistent class for the FOOD_CUSTOMER database table.
 * 
 */
@Entity
@Table(name="FOOD_CUSTOMER")
public class FoodCustomer implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="FC_ID")
	private Integer fcId;

	@Column(name="FC_BIRTHDAY")
	private Date fcBirthDay;

	@Column(name="FC_MONEY")
	private Float fcMoney;

	@Column(name="FC_NAME")
	private String fcName;
	
	@Column(name="FC_SURNAME")
	private String fcSurName;


/*	//bi-directional many-to-one association to FoodOrder
	@OneToMany(mappedBy="foodCustomer")
	private Set<FoodOrder> foodOrders;*/

    public FoodCustomer() {
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