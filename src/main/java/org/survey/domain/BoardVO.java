package org.survey.domain;

import java.util.Date;

public class BoardVO {
	
	private Integer bno;
	private String btitle;
	private String bcontent;
	private String bwriter;
	private Date bstarttime;
	private Date bendtime;
	private Integer bhit;
	
	
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBwriter() {
		return bwriter;
	}
	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}
	public Date getBstarttime() {
		return bstarttime;
	}
	public void setBstarttime(Date bstarttime) {
		this.bstarttime = bstarttime;
	}
	public Date getBendtime() {
		return bendtime;
	}
	public void setBendtime(Date bendtime) {
		this.bendtime = bendtime;
	}
	public Integer getBhit() {
		return bhit;
	}
	public void setBhit(Integer bhit) {
		this.bhit = bhit;
	}
	
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", btitle=" + btitle + ", bcontent=" + bcontent + ", bwriter=" + bwriter
				+ ", bstarttime=" + bstarttime + ", bendtime=" + bendtime + ", bhit=" + bhit + "]";
	}
	
}
