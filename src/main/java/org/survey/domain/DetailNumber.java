package org.survey.domain;

public class DetailNumber {
	private int prev;
	private int next;
	private int qnum;
	
	public DetailNumber(int qnum){
		this.qnum = 0;
		
		calcQnum();
	}

	private void calcQnum() {
		prev = qnum-1;
		next = qnum+1;
		
		
	}

	public int getPrev() {
		return prev;
	}

	public void setPrev(int prev) {
		this.prev = prev;
	}

	public int getNext() {
		return next;
	}

	public void setNext(int next) {
		this.next = next;
	}

	public int getQnum() {
		return qnum;
	}

	public void setQnum(int qnum) {
		this.qnum = qnum;
	}

	@Override
	public String toString() {
		return "DetailNumber [prev=" + prev + ", next=" + next + ", qnum=" + qnum + "]";
	}
	

}
