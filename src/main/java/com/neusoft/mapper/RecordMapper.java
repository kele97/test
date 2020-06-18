package com.neusoft.mapper;

<<<<<<< HEAD
import java.util.List;
import java.util.Map;

import com.neusoft.model.OrderInfo;
=======
>>>>>>> d148eede0af0655ed599236de3754163689c3733
import com.neusoft.model.Record;

public interface RecordMapper {
	
<<<<<<< HEAD
	Integer selectRecordByCheck(Record record);

    void insert(Record record);
    
    List<OrderInfo> selectRecordList(Map<String, Object> map);
    
=======
	int selectRecordByCheck(Record record);

    void insert(Record record);
>>>>>>> d148eede0af0655ed599236de3754163689c3733
}
