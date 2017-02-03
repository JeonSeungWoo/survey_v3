package org.survey.domain;

public class AnswerStat {

	private String answer;
	private int count;
	
	
	
	
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
		return "AnswerStat [answer=" + answer + ", count=" + count + "]";
	}
	
	
}
