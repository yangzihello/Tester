package com.xb.wap;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CashCouponServlet extends HttpServlet {

	private static final long serialVersionUID = 2811417880459082535L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String phone = request.getParameter("phone");
		if(null==phone||"".equals(phone)){
			request.setAttribute("error", "接收手机号码失败！！");
			request.getRequestDispatcher("index.jsp").forward(request, response);
			return;
		}
		if(phone.matches("^\\d{11}$")){
			String filepath = getServletContext().getRealPath("/phone.txt");
			if(null==filepath){
				File file = new File(filepath);
				if(!file.exists()){
					file.mkdirs();
				}
			}
			BufferedWriter buffer = new BufferedWriter(new FileWriter(filepath, true));
			SimpleDateFormat formart = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String datestr = formart.format(new Date());
			buffer.write(phone+"  ["+datestr+"]\r\n");
			buffer.flush();
			buffer.close();
			request.getRequestDispatcher("result.jsp").forward(request, response);
		}else{
			request.setAttribute("error", "无效的手机格式！！");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}
}
