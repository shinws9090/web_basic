package web_basic.jsp_07;

public class Student {

	private int stdNo;
	private String stdName;
	private int kor;
	private int eng;
	private int math;

	public Student() {
		this.stdNo = 10;
		this.stdName = "잉";
		this.kor = 50;
		this.eng = 50;
		this.math = 50;

	}

	public Student(int stdNo, String stdName, int kor) {
		super();
		this.stdNo = stdNo;
		this.stdName = stdName;
		this.kor = kor;
	}

	public int getStdNo() {
		return stdNo;
	}

	public void setStdNo(int stdNo) {
		this.stdNo = stdNo;
	}

	public String getStdName() {
		return stdName;
	}

	public void setStdName(String stdName) {
		this.stdName = stdName;
	}

	public int getKor() {
		return kor;
	}

	public void setKor(int kor) {
		this.kor = kor;
	}

	public int getEng() {
		return eng;
	}

	public void setEng(int eng) {
		this.eng =eng;
	}

	public int getMath() {
		return math;
	}

	public void setMath(int math) {
		this.math = math;
	}

	public int getTotal() {
		return kor + eng + math;
	}

	public int getAvg() {
		return getTotal() / 3;
	}

	@Override
	public String toString() {
		return "Student [stdNo=" + stdNo + ", stdName=" + stdName + ", kor=" + kor + ", eng=" + eng + ", math=" + math
				+ "]";
	}

}
