package org.survey.domain;

import java.util.Date;

public class SurveyMainVO {

	private Integer smno;
	private String smtitle;
	private String smcontent;
	private String smwriter;
	private String smimage;
	private Integer starttime;
	private Integer endtime;
	private Date smregdate;
	private Date smupdatedate;

	public Integer getSmno() {
		return smno;
	}

	public void setSmno(Integer smno) {
		this.smno = smno;
	}

	public String getSmtitle() {
		return smtitle;
	}

	public void setSmtitle(String smtitle) {
		this.smtitle = smtitle;
	}

	public String getSmcontent() {
		return smcontent;
	}

	public void setSmcontent(String smcontent) {
		this.smcontent = smcontent;
	}

	public String getSmwriter() {
		return smwriter;
	}

	public void setSmwriter(String smwriter) {
		this.smwriter = smwriter;
	}

	public String getSmimage() {
		return smimage;
	}

	public void setSmimage(String smimage) {
		this.smimage = smimage;
	}

	public Integer getStarttime() {
		return starttime;
	}

	public void setStarttime(Integer starttime) {
		this.starttime = starttime;
	}

	public Integer getEndtime() {
		return endtime;
	}

	public void setEndtime(Integer endtime) {
		this.endtime = endtime;
	}

	public Date getSmregdate() {
		return smregdate;
	}

	public void setSmregdate(Date smregdate) {
		this.smregdate = smregdate;
	}

	public Date getSmupdatedate() {
		return smupdatedate;
	}

	public void setSmupdatedate(Date smupdatedate) {
		this.smupdatedate = smupdatedate;
	}

	@Override
	public String toString() {
		return "SurveyMainVO [smno=" + smno + ", smtitle=" + smtitle + ", smcontent=" + smcontent + ", smwriter="
				+ smwriter + ", smimage=" + smimage + ", starttime=" + starttime + ", endtime=" + endtime
				+ ", smregdate=" + smregdate + ", smupdatedate=" + smupdatedate + "]";
	}

}
