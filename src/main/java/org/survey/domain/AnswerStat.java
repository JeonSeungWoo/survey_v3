package org.survey.domain;

public class AnswerStat {
	
	private int sdno;
	private String answer;
	private int count;
	
	public int getSdno() {
		return sdno;
	}
	public void setSdno(int sdno) {
		this.sdno = sdno;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	@Override
	public String toString() {
		return "AnswerStat [sdno=" + sdno + ", answer=" + answer + ", count=" + count + "]";
	}
	
}
