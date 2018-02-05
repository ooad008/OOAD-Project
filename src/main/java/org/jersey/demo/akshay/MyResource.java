

package org.jersey.demo.akshay;


import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.ws.rs.Consumes;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.ResponseBuilder;
import javax.ws.rs.core.UriBuilder;

import org.json.JSONObject;

import com.sun.jersey.api.view.Viewable;
import com.sun.jersey.core.header.FormDataContentDisposition;
import com.sun.jersey.multipart.FormDataParam;

import model.SecurityManager;
import pojo.UserV1;
import pojo.UserVO;
 
@Path("/webservice")
public class MyResource  {
	  
	public static String und="";
	
	//static String h ="benzos.byethost5.com/Demo/upload/";
	public static final String UPLOAD_FILE_SERVER = "C:/Demo/upload/";
	@POST
	@Path("/upload") 
	@Consumes(MediaType.MULTIPART_FORM_DATA)
	public Viewable uploadFile(
	        @FormDataParam("uploadFile") InputStream fileInputStream,
	        @FormDataParam("uploadFile") FormDataContentDisposition fileDetail) throws Exception {
		String outputt=null;
		String fileName = null;
        String uploadFilePath = null;
        SecurityManager sm = null;
		try {
            fileName = fileDetail.getFileName();
            System.out.println(fileName);
            uploadFilePath = writeToFileServer(fileInputStream, fileName);
            System.out.println(uploadFilePath);
            sm =new SecurityManager();
            outputt = sm.uploadFile(uploadFilePath,fileName,und);
        }
        catch(IOException ioe){
            ioe.printStackTrace();
        }
        finally{
            // release resources, if any
        }
		
		 return new Viewable("/success.jsp", sm.displayPic(und));
		//return fileName+outputt;
	}

private String writeToFileServer(InputStream inputStream, String fileName) throws IOException {
	 
    OutputStream outputStream = null;
    String qualifiedUploadFilePath = UPLOAD_FILE_SERVER + fileName;
    
    System.out.println(qualifiedUploadFilePath);

    try {
        outputStream = new FileOutputStream(new File(qualifiedUploadFilePath));
        int read = 0;
        byte[] bytes = new byte[1024];
        while ((read = inputStream.read(bytes)) != -1) {
            outputStream.write(bytes, 0, read);
        }
        outputStream.flush();
    }
    catch (IOException ioe) {
        ioe.printStackTrace();
    }
    finally{
        //release resource, if any
        outputStream.close();
    }
    return qualifiedUploadFilePath;
}


@GET
@Path("loginCheck/{username}")
@Produces(MediaType.APPLICATION_JSON)
public  Viewable checkUserNameValidity(@PathParam("username") String n1) 
{
	SecurityManager sm1=new SecurityManager();
	System.out.println(n1);
	try {
		    
		// = new HashMap<String,String>();
       // model.put("hello", result);
       // model.put("world", "World");
        return new Viewable("/itemlist.jsp", sm1.displayHome());	
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
	
}


@GET
@Path("/displayHome")
@Produces(MediaType.APPLICATION_JSON)
public  Viewable  displayHomePage() 
{
	SecurityManager sm1=new SecurityManager();
	//System.out.println(n1);
	try {
		    
		
		// = new HashMap<String,String>();
       // model.put("hello", result);
       // model.put("world", "World");
		System.out.println("got you !");
        return new Viewable("/itemslist.jsp", sm1.displayHome());	
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
	
}







	@POST
 @Path("/login")
@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
@Produces(MediaType.TEXT_PLAIN)
	 public Viewable login(@FormParam("useremail") String useremail,
			 @FormParam("password") String password) {

		
		
		
		System.out.println("Data Received: " + useremail + password);
         // String s =  getAllUsersList(username, password);
	//	JSONObject jsonObj = new JSONObject(crunchifyBuilder.toString() );
		
	//	String usr=jsonObj.getString("username");
	//	String pwd =jsonObj.getString("password");
	//	String result =  getAllUsersList(username,password);
		
		         String result = checkAllUserList(useremail,password);
    		SecurityManager se=new SecurityManager();
		
			try {
				//return se.displayPic(username);
				/*		System.out.println(result);
				String message = result;
			    URI uri = UriBuilder.fromPath("/home.jsp")
			            .queryParam("message", message)
			            .build();
			      System.out.print(uri);
			    return Response.seeOther(uri).build();
				
			*/	
    		//Map<String, String> model = new HashMap<String,String>();
           // model.put("hello", result);
           // model.put("world", "World");
				if(useremail.equalsIgnoreCase(result))
          return new Viewable("/itemslist.jsp", se.displayHome());	
				//return Response.temporaryRedirect(URI.create("/itemslist.jsp")).build();
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return null;
		
		
		
	}
	
	/* 
	@POST
	@Path("/displayImage")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	public Response displayImage(@FormParam("imagename") String imagename) {
		String result = "Service Successfully started..";
		System.out.println(result);
		String path="";
		SecurityManager mg=new SecurityManager();
		    
				 try {
					path = mg.displayPic(imagename);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
			
				 URI uri = UriBuilder.fromPath("/imagedata.jsp")
				            .queryParam("path", path)
				            .build();
		// return HTTP response 200 in case of success
				 System.out.print(uri.toString());
		return Response.seeOther(uri).build();
	}
	*/
@POST
@Path("/addUser")
@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
public void addUser(@FormParam("username") String username,@FormParam("mobnumber") String mobnumber,@FormParam("emailid") String emailid,@FormParam("password") String password) throws Exception {
	
//public void addUser(@PathParam("username") String username,@PathParam("mobnumber") String mobnumber,@PathParam("emailid") String emailid,@PathParam("password") String password) throws Exception {
SecurityManager mg=new SecurityManager();
	und=username;
	boolean flag=mg.addUser(username,mobnumber,emailid,password);
//	if(!flag)
		//return "Username is not valid";
//	else
	//return "User Added: "+username;
}
 
public String getAllUsersList(String username,String password)
 {
 String userListData = null;
 try 
 {
 ArrayList<UserVO> userList = null;
 SecurityManager securityManager= new SecurityManager();
 userList = securityManager.getAllUsersList();
 for (UserVO userVO : userList) {
 if(userVO.getUsername().equals(username))
 {
 if(userVO.getPassword().equals(password))
 {
 return username;
 }
 }
 }
 
} catch (Exception e)
 {
 System.out.println("error");
 }
 return "You are not a Valid User";
 }

public String checkAllUserList(String useremail,String password)
{
String userListData = null;
String pwd = null;


System.out.println(useremail);
SecurityManager securityManager= new SecurityManager();
 try {
	pwd = securityManager.checkUserNameValidity(useremail);
	System.out.println(pwd);
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
       if(password.equals(pwd))
    	    return useremail;
       else
    	    return "Not Valid User";

}

   


}
