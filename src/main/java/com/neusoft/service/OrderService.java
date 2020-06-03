package com.neusoft.service;

import com.neusoft.model.Message;
import com.neusoft.model.Record;

public interface OrderService {
	
	Message checkRecord(Record record);
	
	Message insertRecord(Record record);

}
