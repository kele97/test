package com.neusoft.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neusoft.model.Message;
import com.neusoft.model.Record;
import com.neusoft.service.OrderService;

@Controller
@RequestMapping("/")
public class OrderController {

	private static Logger log = LoggerFactory.getLogger(OrderController.class);

	@Resource
	private OrderService orderService;

	// TODO �Ż�������
	DateFormat format = new SimpleDateFormat("yyyy-MM-dd");

	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public String test(HttpServletRequest request, Model model) {
//		String roomId = request.getParameter("roomId");
//		System.out.println(roomId);
		return "order";
	}

	@RequestMapping(value = "/orderRoom", method = RequestMethod.POST)
	@ResponseBody
	public Message orderRoom(HttpServletRequest request) throws ParseException {
		
		Message msg = new Message();
		
		// TODO ajax��ֵ�����Ż�
		String roomId = request.getParameter("roomId");
		String date = request.getParameter("date");
		String startTime = request.getParameter("startTime");
		String endTime = request.getParameter("endTime");
		String subscriber = request.getParameter("subscriber");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String reason = request.getParameter("reason");
		String remarks = request.getParameter("remarks");

		Record record = new Record();
		record.setRoomId(roomId);
		record.setDate(format.parse(date));
		record.setStartTime(Integer.valueOf(startTime));
		record.setEndTime(Integer.valueOf(endTime));
		record.setSubscriber(subscriber);
		record.setPhone(phone);
		record.setEmail(email);
		record.setReason(Integer.valueOf(reason));
		record.setRemarks(remarks);
		
		// ���У��
		msg = orderService.checkRecord(record);
		
		if(msg.getCode() == -1) {
			return msg;
		}

		msg = orderService.insertRecord(record);
		
		return msg;
	}

}
