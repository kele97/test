package com.neusoft.service.impl;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.neusoft.mapper.RecordMapper;
import com.neusoft.model.Message;
import com.neusoft.model.Record;
import com.neusoft.service.OrderService;

@Service("orderService") 
public class OrderServiceImpl implements OrderService {
	@Resource  
    private RecordMapper recordMapper;  
	

	@Override
	public Message checkRecord(Record record) {
		Message msg = new Message();
		
		// TODO У������
		
		if(record.getStartTime() >= record.getEndTime()) {
			msg.setCode(-1);
			msg.setMsg("��ʼʱ����ڽ���ʱ��");
		}
		
		return msg;
	}

	@Override
	public Message insertRecord(Record record) {
		
		Message msg = new Message();
		// ʱ����Ƿ��ظ� null���� 
		Integer count = recordMapper.selectRecordByCheck(record);
		
		if(count != null) {
			msg.setCode(-1);
			msg.setMsg("����ʱ���ͻ");
			return msg;
		}
		
		record.setRegisterId("0001");
		record.setRegisterDate(new Date());
		recordMapper.insert(record);
		
		return msg;
	}
}
