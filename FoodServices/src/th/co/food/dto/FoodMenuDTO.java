package th.co.food.dto;

import java.io.Serializable;
import java.util.Calendar;
import java.util.Random;

import com.thoughtworks.xstream.annotations.XStreamAlias;

@XStreamAlias("foodMenuDTO")
public class FoodMenuDTO extends BaseDTO  implements Serializable {
	private static final long serialVersionUID = 1L;
 

	@XStreamAlias("fmId")
	private Integer fmId;

	@XStreamAlias("fmCalories")
	private Float fmCalories;

	@XStreamAlias("fmDetail")
	private String fmDetail;

	@XStreamAlias("fmName")
	private String fmName;

	@XStreamAlias("fmPictureName")
	private String fmPictureName;

	@XStreamAlias("fmPicturePath")
	private String fmPicturePath;

	@XStreamAlias("fmPrice")
	private Float fmPrice;

	@XStreamAlias("fmStatus")
	private String fmStatus;

	public Integer getFmId() {
		return fmId;
	}

	public void setFmId(Integer fmId) {
		this.fmId = fmId;
	}

	public Float getFmCalories() {
		return fmCalories;
	}

	public void setFmCalories(Float fmCalories) {
		this.fmCalories = fmCalories;
	}

	public String getFmDetail() {
		return fmDetail;
	}

	public void setFmDetail(String fmDetail) {
		this.fmDetail = fmDetail;
	}

	public String getFmName() {
		return fmName;
	}

	public void setFmName(String fmName) {
		this.fmName = fmName;
	}

	public String getFmPictureName() {
		return fmPictureName;
	}

	public void setFmPictureName(String fmPictureName) {
		this.fmPictureName = fmPictureName;
	}

	public String getFmPicturePath() {
		return fmPicturePath;
	}

	public void setFmPicturePath(String fmPicturePath) {
		this.fmPicturePath = fmPicturePath;
	}

	public Float getFmPrice() {
		return fmPrice;
	}

	public void setFmPrice(Float fmPrice) {
		this.fmPrice = fmPrice;
	}

	public String getFmStatus() {
		return fmStatus;
	}

	public void setFmStatus(String fmStatus) {
		this.fmStatus = fmStatus;
	}

	public static void main(String[] args) {
		//1295519275040
		/*for(int i=0;i<5;i++){
			Calendar calendar = Calendar.getInstance();

			// get a java.util.Date from the calendar instance.
			// this date will represent the current instant, or "now".
			//calendar.getTimeInMillis();
			System.out.println(calendar.getTimeInMillis());
		
		}*/
		
	}
 }