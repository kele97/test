package com.neusoft.mapper;

import java.util.List;
import java.util.Map;

import com.neusoft.model.OrderInfo;
import com.neusoft.model.Record;

public interface RecordMapper {
	
	Integer selectRecordByCheck(Record record);

    void insert(Record record);
    
    List<OrderInfo> selectRecordList(Map<String, Object> map);
    
}
