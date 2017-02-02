package org.survey.domain;

public class OXAnswerVO {

	private int smno;
	private int sdno;
	private String userid;
	private String answer;
	
	public int getSmno() {
		return smno;
	}
	public void setSmno(int smno) {
		this.smno = smno;
	}
	public int getSdno() {
		return sdno;
	}
	public void setSdno(int sdno) {
		this.sdno = sdno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	@Override
	public String toString() {
		return "OXAnswerVO [smno=" + smno + ", sdno=" + sdno + ", userid=" + userid + ", answer=" + answer + "]";
	}
	

	
	
}
