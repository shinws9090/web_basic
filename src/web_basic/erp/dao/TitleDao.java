package web_basic.erp.dao;

import java.util.List;

import web_basic.erp.dto.Title;

/**
 *  C(insert)
 *  R(select, select where)
 *  U(update)
 *  D(delete)
 */
public interface TitleDao {
	List<Title> selectTitleByAll();
	
	Title selectTitleByNo(Title title);
	
	int insertTitle(Title title);
	int updateTitle(Title title);
	int deleteTitle(int titleNo);

}
