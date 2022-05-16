package org.finders.service;

import java.util.ArrayList;

import org.finders.model.ReplyDTO;

public interface ReplyService {
	
	// 아이디 중복 확인
	public ArrayList<ReplyDTO> overlapId(String id);
}
