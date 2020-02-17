package DTO;
import java.sql.Date;

public class SawonDto {

	private String board2Num;
	private String board2Name;
	private String board2Pass;
	private String board2Subject;
	private String board2Content;
	private Date board2DATE;

	public String getBoard2Num() {
		return board2Num;
	}
	public void setBoard2Num(String board2Num) {
		this.board2Num = board2Num;
	}
	public String getBoard2Name() {
		return board2Name;
	}
	public void setBoard2Name(String board2Name) {
		this.board2Name = board2Name;
	}
	public String getBoard2Pass() {
		return board2Pass;
	}
	public void setBoard2Pass(String board2Pass) {
		this.board2Pass = board2Pass;
	}
	public String getBoard2Subject() {
		return board2Subject;
	}
	public void setBoard2Subject(String board2Subject) {
		this.board2Subject = board2Subject;
	}
	public String getBoard2Content() {
		return board2Content;
	}
	public void setBoard2Content(String board2Content) {
		this.board2Content = board2Content;
	}
	public Date getBoard2DATE() {
		return board2DATE;
	}
	public void setBoard2DATE(Date board2date) {
		board2DATE = board2date;
	}
	
}