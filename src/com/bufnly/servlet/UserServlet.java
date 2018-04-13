package com.bufnly.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.bufnly.model.User;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> list = new ArrayList<>();
		for (int i = 0; i < 100; i++) {
			list.add(new User(i, "use"+i, 19));
		}
		JSONArray ja = new JSONArray(list);
		JSONObject jo = new JSONObject(new User(1,"asdf",90));
//		StringBuffer bf = new StringBuffer();
//		for (int i = 0; i < list.size(); i++) {
//			if(i== 0){
//				bf.append("[");
//			}
//			bf.append("{'id':").append(list.get(i).getId()).append(",name:").append(list.get(i).getName()).append(",age:"+list.get(i).getAge()+"},");
//			if(i == list.size()-1){
//				bf.append("]");
//			}
//		}
		PrintWriter out = response.getWriter();
		out.write(ja.toString());
		//out.write(jo.toString());
		out.flush();
		out.close();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
