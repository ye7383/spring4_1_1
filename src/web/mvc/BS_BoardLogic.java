package web.mvc;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class BS_BoardLogic {
	Logger logger = Logger.getLogger(BS_BoardLogic.class);
	private BS_BoardMDao bsboardMDao = null;
	public void setBsboardMDao(BS_BoardMDao bsboardMDao) {
		this.bsboardMDao = bsboardMDao;
	}
	private BS_BoardSDao bsboardSDao = null;
	public void setBsboardSDao(BS_BoardSDao bsboardSDao) {
		this.bsboardSDao = bsboardSDao;
	}
	
	public List<Map<String,Object>> getBoardList(Map<String, Object> pmap) {
		logger.info("getBoardList 호출 성공");
		List<Map<String,Object>> boardList = null;
		boardList = bsboardMDao.getBoardList(pmap);
		return boardList;
	}
	//=>board/boardInsert.sp4?bm_no=100&bm_title=%EC%96%B5&bs_file=a.txt&bm_writer=%EC%9D%B4%EC%88%9C%EC%8B%A0&bm_email=test@hot.com&bm_content=%EC%97%B0%EC%8A%B5&bm_pw=123
	public int boardInsert(Map<String, Object> pmap) {
		logger.info("boardInsert 호출 성공");
		int result = 0;
		int fileOk = 0;
		bsboardMDao.boardMInsert(pmap);
		//첨부파일이 있어?
		
		if(pmap.containsKey("bs_file")) {
			fileOk = bsboardSDao.boardSInsert(pmap);
		}
		logger.info("fileOk : "+fileOk);
		result = 1;
		return result;
	}

}