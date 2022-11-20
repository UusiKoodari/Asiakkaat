package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.asiakas;
import model.dao.Dao;

@WebServlet("/asiakkaat1/*")
public class Asiakkaat1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Asiakkaat1() {
       System.out.println("Asiakkaat1.Asiakkaat1()");    
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Asiakkaat1.doGet()");
		Dao dao = new Dao();
		ArrayList<asiakas> asiakkaat = dao.getAllItems();
		String strJSON = new Gson().toJson(asiakkaat);
		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println(strJSON);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Asiakkaat1.doPost()");
	}

	
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Asiakkaat1.doPut()");
	}

	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Asiakkaat1.doDelete()");
	}

}
