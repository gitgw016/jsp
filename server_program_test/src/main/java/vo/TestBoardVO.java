package vo;

public class TestBoardVO {

	private int board_num;
	private String board_name;
	private String board_pass;
	private String board_title;
	private String board_content;
	private int board_readcount;
	
	
	
	public TestBoardVO(int board_num, String board_name, String board_pass, String board_title, String board_content,
			int board_readcount) {
		this.board_num = board_num;
		this.board_name = board_name;
		this.board_pass = board_pass;
		this.board_title = board_title;
		this.board_content = board_content;
		this.board_readcount = board_readcount;
	}
	
	public TestBoardVO() {}

	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getBoard_name() {
		return board_name;
	}
	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	public String getBoard_pass() {
		return board_pass;
	}
	public void setBoard_pass(String board_pass) {
		this.board_pass = board_pass;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public int getBoard_readcount() {
		return board_readcount;
	}
	public void setBoard_readcount(int board_readcount) {
		this.board_readcount = board_readcount;
	}
	
	@Override
	public String toString() {
		return "TestBoardVO [board_num=" + board_num + ", board_name=" + board_name + ", board_pass=" + board_pass
				+ ", board_title=" + board_title + ", board_content=" + board_content + ", board_readcount="
				+ board_readcount + "]";
	}
	
	
}
