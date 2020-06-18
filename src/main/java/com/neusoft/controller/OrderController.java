package com.neusoft.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
<<<<<<< HEAD
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
=======
>>>>>>> d148eede0af0655ed599236de3754163689c3733

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

<<<<<<< HEAD
import com.neusoft.mapper.RecordMapper;
import com.neusoft.mapper.RoomMapper;
import com.neusoft.model.Message;
import com.neusoft.model.OrderInfo;
import com.neusoft.model.Record;
import com.neusoft.model.Room;
=======
import com.neusoft.model.Message;
import com.neusoft.model.Record;
>>>>>>> d148eede0af0655ed599236de3754163689c3733
import com.neusoft.service.OrderService;

@Controller
@RequestMapping("/")
public class OrderController {

	private static Logger log = LoggerFactory.getLogger(OrderController.class);

	@Resource
	private OrderService orderService;
<<<<<<< HEAD
	@Resource  
    private RoomMapper roomMapper;  
	@Resource  
    private RecordMapper recordMapper;  
=======
>>>>>>> d148eede0af0655ed599236de3754163689c3733

	// TODO 优化日期类
	DateFormat format = new SimpleDateFormat("yyyy-MM-dd");

	@RequestMapping(value = "/order", method = RequestMethod.GET)
<<<<<<< HEAD
	public String test(HttpServletRequest request, Model model) throws ParseException {
		// TODO 翻页
		String roomId = request.getParameter("roomId");
		System.out.println(roomId);
		String time = request.getParameter("time");
		System.out.println(time);
		Map<String, Object> map = new HashMap<>();
		map.put("TIME", "TIME");
		map.put("REASON", "REASON");
		map.put("date", time == null || time.equals("") ? format.format(new Date()) : format.parse(time));
		map.put("roomId", roomId);
		List<OrderInfo> orderList = recordMapper.selectRecordList(map);
		model.addAttribute("orderList", orderList);
=======
	public String test(HttpServletRequest request, Model model) {
//		String roomId = request.getParameter("roomId");
//		System.out.println(roomId);
>>>>>>> d148eede0af0655ed599236de3754163689c3733
		return "order";
	}

	@RequestMapping(value = "/orderRoom", method = RequestMethod.POST)
	@ResponseBody
	public Message orderRoom(HttpServletRequest request) throws ParseException {
		
		Message msg = new Message();
		
		// TODO ajax传值交互优化
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
<<<<<<< HEAD
		record.setRoomId(Integer.valueOf(roomId));
=======
		record.setRoomId(roomId);
>>>>>>> d148eede0af0655ed599236de3754163689c3733
		record.setDate(format.parse(date));
		record.setStartTime(Integer.valueOf(startTime));
		record.setEndTime(Integer.valueOf(endTime));
		record.setSubscriber(subscriber);
		record.setPhone(phone);
		record.setEmail(email);
		record.setReason(Integer.valueOf(reason));
		record.setRemarks(remarks);
		
		// 后端校验
		msg = orderService.checkRecord(record);
		
		if(msg.getCode() == -1) {
			return msg;
		}

		msg = orderService.insertRecord(record);
		
		return msg;
	}
<<<<<<< HEAD
	
	@RequestMapping(value = "/selectRoom", method = RequestMethod.GET)
	@ResponseBody
	public List<Room> getRoomList(HttpServletRequest request) {
		List<Room> list = roomMapper.selectRoomList();
		return list;
	}
=======
>>>>>>> d148eede0af0655ed599236de3754163689c3733

}
