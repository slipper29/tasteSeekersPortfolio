package org.finders.service;

import java.util.ArrayList;

import org.finders.model.ReplyDTO;
import org.finders.dao.ReplyDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	ReplyDao rdao;
	
	// 댓글 목록 리스트
	public ArrayList<ReplyDTO> overlapId(String id){
		return rdao.overlapId(id);
	}
}
