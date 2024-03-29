package th.co.food.dto;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

import com.thoughtworks.xstream.annotations.XStreamAlias;

@XStreamAlias("foodBillDTO")
public class FoodBillDTO  extends BaseDTO implements Serializable {

	private static final long serialVersionUID = 1L;
 
	 
	@XStreamAlias("fbId")
	private Integer fbId;

	@XStreamAlias("fbBillDate")
	private Date fbBillDate;

	@XStreamAlias("fbBillTime")
	private Timestamp fbBillTime;

	@XStreamAlias("fbTotalCalories")
	private Float fbTotalCalories;

	@XStreamAlias("fbTotalPrice")
	private Float fbTotalPrice;

	@XStreamAlias("fbTotalQuantity")
	private Integer fbTotalQuantity;

	@XStreamAlias("fbStatus")
	private String fbStatus;
	 
	@XStreamAlias("foodOrders") 
	private FoodOrderDTO[] foodOrders;
	
	@XStreamAlias("foodCustomer")
	private FoodCustomerDTO foodCustomerDTO;
	
	@XStreamAlias("fbComplete")
	private String fbComplete;
	
	@XStreamAlias("fbDate")
	private String fbDate;
	
	@XStreamAlias("fbMonth")
	private String fbMonth;
	
	@XStreamAlias("fbFullYear")
	private String fbFullYear;
	
	@XStreamAlias("fbBillDateStr")
	private String fbBillDateStr;
	
	public String getFbStatus() {
		return fbStatus;
	}

	public void setFbStatus(String fbStatus) {
		this.fbStatus = fbStatus;
	}

	public Integer getFbId() {
		return fbId;
	}

	public void setFbId(Integer fbId) {
		this.fbId = fbId;
	}

	public Date getFbBillDate() {
		return fbBillDate;
	}

	public void setFbBillDate(Date fbBillDate) {
		this.fbBillDate = fbBillDate;
	}

	public Timestamp getFbBillTime() {
		return fbBillTime;
	}

	public void setFbBillTime(Timestamp fbBillTime) {
		this.fbBillTime = fbBillTime;
	}

	public Float getFbTotalCalories() {
		return fbTotalCalories;
	}

	public void setFbTotalCalories(Float fbTotalCalories) {
		this.fbTotalCalories = fbTotalCalories;
	}

	public Float getFbTotalPrice() {
		return fbTotalPrice;
	}

	public void setFbTotalPrice(Float fbTotalPrice) {
		this.fbTotalPrice = fbTotalPrice;
	}

	public Integer getFbTotalQuantity() {
		return fbTotalQuantity;
	}

	public void setFbTotalQuantity(Integer fbTotalQuantity) {
		this.fbTotalQuantity = fbTotalQuantity;
	}

	public FoodOrderDTO[] getFoodOrders() {
		return foodOrders;
	}

	public void setFoodOrders(FoodOrderDTO[] foodOrders) {
		this.foodOrders = foodOrders;
	}

	public FoodCustomerDTO getFoodCustomerDTO() {
		return foodCustomerDTO;
	}

	public void setFoodCustomerDTO(FoodCustomerDTO foodCustomerDTO) {
		this.foodCustomerDTO = foodCustomerDTO;
	}

	public String getFbComplete() {
		return fbComplete;
	}

	public void setFbComplete(String fbComplete) {
		this.fbComplete = fbComplete;
	}

	public String getFbDate() {
		return fbDate;
	}

	public void setFbDate(String fbDate) {
		this.fbDate = fbDate;
	}

	public String getFbMonth() {
		return fbMonth;
	}

	public void setFbMonth(String fbMonth) {
		this.fbMonth = fbMonth;
	}

	public String getFbFullYear() {
		return fbFullYear;
	}

	public void setFbFullYear(String fbFullYear) {
		this.fbFullYear = fbFullYear;
	}

	public String getFbBillDateStr() {
		return fbBillDateStr;
	}

	public void setFbBillDateStr(String fbBillDateStr) {
		this.fbBillDateStr = fbBillDateStr;
	}
	
   
}