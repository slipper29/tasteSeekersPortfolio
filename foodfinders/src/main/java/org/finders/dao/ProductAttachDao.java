package org.finders.dao;

import org.finders.model.AttachFileDTO;

public interface ProductAttachDao {
	// 파일 첨부테이블(mas_attach)에 insert
		public void ProductAttachWrite(AttachFileDTO adto);
}
