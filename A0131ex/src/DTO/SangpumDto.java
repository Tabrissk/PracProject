package DTO;
import java.sql.Date;

public class SangpumDto {

	private String board1_NUM;
	private String board1_NAME;
	private String board1_PASS;
	private String board1_SUBJECT;
	private String board1_CONTENT;
	private Date board1_DATE;
	/*
	 * https://blog.naver.com/ptm2018_2b1/221361568549
-- Board_re_ref : 글 그룹번호 - 1번글에 댓글을 달면 1번글과 1번글의 댓글이 re_ref이 1로 됨
-- Board_re_lev : 답변글 깊이 - 원글이면 0 , 처음 댓글이면 1, 처음댓글의 댓글이면 2 
-- Board_re_seq : 답변글 순서 - 그룹번호내에서 답변이 달린 순서. 원글의 댓글, 댓글의 댓댓글만 있으면 순서대로 찍히는데, level 1, 즉 원글의 댓글을 새로 달면 최근에 달린게 위에 달리고 그외에는 순서가 밀림..
-- Board_READCOUNT : 글 조회수
-- Board_date 작성날짜
	 * */
	public String getBoard1_NUM() {
		return board1_NUM;
	}
	public void setBoard1_NUM(String board1_NUM) {
		this.board1_NUM = board1_NUM;
	}
	public String getBoard1_NAME() {
		return board1_NAME;
	}
	public void setBoard1_NAME(String board1_NAME) {
		this.board1_NAME = board1_NAME;
	}
	public String getBoard1_PASS() {
		return board1_PASS;
	}
	public void setBoard1_PASS(String board1_PASS) {
		this.board1_PASS = board1_PASS;
	}
	public String getBoard1_SUBJECT() {
		return board1_SUBJECT;
	}
	public void setBoard1_SUBJECT(String board1_SUBJECT) {
		this.board1_SUBJECT = board1_SUBJECT;
	}
	public String getBoard1_CONTENT() {
		return board1_CONTENT;
	}
	public void setBoard1_CONTENT(String board1_CONTENT) {
		this.board1_CONTENT = board1_CONTENT;
	}
	public Date getBoard1_DATE() {
		return board1_DATE;
	}
	public void setBoard1_DATE(Date board1_DATE) {
		this.board1_DATE = board1_DATE;
	}
	///////////////////////////////////////////////////////////////////////////////////////////

}
