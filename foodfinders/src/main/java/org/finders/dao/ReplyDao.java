package org.finders.dao;

import java.util.ArrayList;

import org.finders.model.ReplyDTO;

public interface ReplyDao {
	//아이디 중복 확인
	public ArrayList<ReplyDTO> overlapId(String id);
}
