package th.co.food.web;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

/**
 * Servlet implementation class AdminServlet
 */
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AdminServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doProcess(HttpServletRequest request,
	 *      HttpServletResponse response)
	 */
	protected void doProcess(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = request.getParameter("page");
		String mode = request.getParameter("mode");
		/*System.out.println("page" + page);
		System.out.println("mode" + mode);*/
		if ("upload".equals(mode)) {
			FileInputStream fileInputStream = null;
			FileOutputStream fileOutputStream = null;
			File fullFile = null;
			int fileLength = 0;
			long sizeInBytes = 0;
			Integer fmId = null;
			Float fmCalories= null;
			String fmDetail= null;
			String fmName= null;
			String fmPicturePath= null;
			String fmPicturePathNew=null;
			String ext=null;
			Float fmPrice= null;
			String fmStatus= null;
			boolean isSaveFile=false;
			try {
				DiskFileItemFactory factory = new DiskFileItemFactory();
				factory.setSizeThreshold(4096);
				factory.setRepository(new File("/tmp"));
				ServletFileUpload upload = new ServletFileUpload(factory);
				upload.setSizeMax(10000000L);

				List items = upload.parseRequest((HttpServletRequest) request);
				Iterator iter = items.iterator();
				
				while (iter.hasNext()) {
					FileItem item = (FileItem) iter.next();
					if (item.isFormField()) {
						/*System.out.println("FieldName = " + item.getFieldName()
								+ " value=" + item.getString());
*/
						if (item.getFieldName().equals("fmId"))
							fmId = (item.getString()!=null&&item.getString().length()>0)?Integer.parseInt(item.getString()):0;
						if (item.getFieldName().equals("fmCalories"))
							fmCalories =    (item.getString()!=null&&item.getString().length()>0)?Float.parseFloat(item.getString()):0l;
						if (item.getFieldName().equals("fmDetail"))
							fmDetail = item.getString();
						if (item.getFieldName().equals("fmName"))
							fmName = item.getString();
						if (item.getFieldName().equals("fmPicturePath"))
							fmPicturePath = item.getString();
						if (item.getFieldName().equals("fmPrice"))
							fmPrice =  (item.getString()!=null&&item.getString().length()>0)?Float.parseFloat(item.getString()):0l;
						if (item.getFieldName().equals("fmStatus"))
							fmStatus = item.getString();

					} else {

						//String fieldName = item.getFieldName();
						String fileName = item.getName();
					//	System.out.println("save file " + fileName);// +" file name "+item.getString());
						// questionPicture = fileName;
					/*	String contentType = item.getContentType();
						boolean isInMemory = item.isInMemory();*/
						sizeInBytes = item.getSize();
						//System.out.println("sizeInBytes ===>"+sizeInBytes);
						if(sizeInBytes>0){
						Calendar calendar = Calendar.getInstance(); 
						long time = calendar.getTimeInMillis();
						 Random generator = new Random();
						 int gen = generator.nextInt();
						 if((gen+"").indexOf("-")!=-1){
							 gen = (gen*(-1));
						 } 	
						 fmPicturePathNew = time+""+gen; 
							String s = item.getName();
							s = FilenameUtils.getName(s);
							//System.out.println(s.indexOf("\\."));
							 ext = s.substring(s.length()-4,s.length());
						/*	System.out.println("save file " + fileName
									+ " file name " + s);*/
						//	System.out.println(" ext is "+ext);
							fullFile = new File("/data/Work/Server/apache-tomcat-5.5.28/webapps/FoodWeb/image/"+fmPicturePath);
							//System.out.println("file path="+fmPicturePath);
							item.write(fullFile);
							fileLength = (int) fullFile.length();
						}
						// String randomGen =
						// Integer.toString(generator.nextInt());
					
						// fileOutputStream = new FileOutputStream(randomGen);
						//System.out.println("fileLength=>" + fileLength);
						if(sizeInBytes>0)
							isSaveFile = true;
						// fileOutputStream = new
						// FileOutputStream("C:\\vlink\\upload\\flv\\test.java");
						// fileOutputStream.write(b);
					}
				}

			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (FileUploadException e) {
				e.printStackTrace();
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (Exception e) {
				// System.err.println(actionString + qAction);
				e.printStackTrace();
			}
		
			/*FoodService foodService = new FoodServiceImpl();
			FoodMenuDTO foodMenuDTO = new FoodMenuDTO(); 
			if(isSaveFile)
				foodMenuDTO.setFmPicturePath(fmPicturePathNew+ext);
			else
				foodMenuDTO.setFmPicturePath(fmPicturePath);
			foodMenuDTO.setFmId(fmId);
			foodMenuDTO.setFmCalories(fmCalories);
			//foodMenuDTO.setFmDetail(fmDetail);
			foodMenuDTO.setFmName(fmName); 
			foodMenuDTO.setFmPicturePath(fmPicturePath);
			foodMenuDTO.setFmPrice(fmPrice);
			foodMenuDTO.setFmStatus(fmStatus);
			
			System.out.println(foodMenuDTO.getFmId());
			System.out.println(foodMenuDTO.getFmCalories());
			System.out.println(foodMenuDTO.getFmDetail());
			System.out.println(foodMenuDTO.getFmName()); 
			System.out.println(foodMenuDTO.getFmPicturePath());
			System.out.println(foodMenuDTO.getFmPrice());
			System.out.println(foodMenuDTO.getFmStatus());
			if(isSaveFile)
				System.out.println(fmPicturePathNew);
			else
				System.out.println(fmPicturePath);*/
		//	foodService.addOrEditFoodMenu(foodMenuDTO); 
			
		 
		}

		if (!(page != null && page.length() > 0))
			page = "AddEditViewMenu";
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("/WEB-INF/jsp/" + page + ".jsp");
		if (dispatcher != null)
			try {
				dispatcher.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println("doGet");
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//System.out.println("doPost");
		doProcess(request, response);
	}

}
