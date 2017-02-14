package org.survey.domain;

import java.util.Date;

public class QBoardVO {

	private Integer qno;
	private String qtitle;
	private String qcontent;
	private String qwriter;
	private Date qregdate;
	private Date qupdatedate;
	public Integer getQno() {
		return qno;
	}
	public void setQno(Integer qno) {
		this.qno = qno;
	}
	public String getQtitle() {
		return qtitle;
	}
	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}
	public String getQcontent() {
		return qcontent;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}
	public String getQwriter() {
		return qwriter;
	}
	public void setQwriter(String qwriter) {
		this.qwriter = qwriter;
	}
	public Date getQregdate() {
		return qregdate;
	}
	public void setQregdate(Date qregdate) {
		this.qregdate = qregdate;
	}
	public Date getQupdatedate() {
		return qupdatedate;
	}
	public void setQupdatedate(Date qupdatedate) {
		this.qupdatedate = qupdatedate;
	}
	@Override
	public String toString() {
		return "QBoardVO [qno=" + qno + ", qtitle=" + qtitle + ", qcontent=" + qcontent + ", qwriter=" + qwriter
				+ ", qregdate=" + qregdate + ", qupdatedate=" + qupdatedate + "]";
	}
	
	
	
}
