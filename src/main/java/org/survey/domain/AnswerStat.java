package org.survey.domain;

public class AnswerStat {
	
	
	private int sdno;
	private int smno;
	private String sdcontent;
	private String answer;
	private int count;
	
	
	public int getSdno() {
		return sdno;
	}
	public void setSdno(int sdno) {
		this.sdno = sdno;
	}
	public int getSmno() {
		return smno;
	}
	public void setSmno(int smno) {
		this.smno = smno;
	}
	public String getSdcontent() {
		return sdcontent;
	}
	public void setSdcontent(String sdcontent) {
		this.sdcontent = sdcontent;
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
		return "AnswerStat [sdno=" + sdno + ", smno=" + smno + ", sdcontent=" + sdcontent + ", answer=" + answer
				+ ", count=" + count + "]";
	}
	

	
	
}
