package org.survey.domain;

import java.util.Date;

public class SurveyPartiVO {

	private Integer jmno;
	private String jmtitle;
	private String jmcontent;
	private String jmwriter;
	private String jmimage;
	private Integer starttime;
	private Integer endtime;
	private Date smregdate;

	public Integer getJmno() {
		return jmno;
	}

	public void setJmno(Integer jmno) {
		this.jmno = jmno;
	}

	public String getJmtitle() {
		return jmtitle;
	}

	public void setJmtitle(String jmtitle) {
		this.jmtitle = jmtitle;
	}

	public String getJmcontent() {
		return jmcontent;
	}

	public void setJmcontent(String jmcontent) {
		this.jmcontent = jmcontent;
	}

	public String getJmwriter() {
		return jmwriter;
	}

	public void setJmwriter(String jmwriter) {
		this.jmwriter = jmwriter;
	}

	public String getJmimage() {
		return jmimage;
	}

	public void setJmimage(String jmimage) {
		this.jmimage = jmimage;
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

	@Override
	public String toString() {
		return "SurveyPartiVO [jmno=" + jmno + ", jmtitle=" + jmtitle + ", jmcontent=" + jmcontent + ", jmwriter="
				+ jmwriter + ", jmimage=" + jmimage + ", starttime=" + starttime + ", endtime=" + endtime
				+ ", smregdate=" + smregdate + "]";
	}

}
