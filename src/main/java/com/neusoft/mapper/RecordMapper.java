package com.neusoft.mapper;

import com.neusoft.model.Record;

public interface RecordMapper {
	
	int selectRecordByCheck(Record record);

    void insert(Record record);
}
