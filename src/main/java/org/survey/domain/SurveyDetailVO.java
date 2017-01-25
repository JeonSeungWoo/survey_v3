package org.survey.domain;

import java.util.Arrays;
import java.util.Date;

public class SurveyDetailVO {

	private Integer sdno;
	private Integer smno;
	private String sdtitle;
	private String sdcontent;
	private String sdtype;
	private Date sdregdate;
	private Date sdupdatedate;
	
	private String attachFile;

	public Integer getSdno() {
		return sdno;
	}

	public void setSdno(Integer sdno) {
		this.sdno = sdno;
	}

	public Integer getSmno() {
		return smno;
	}

	public void setSmno(Integer smno) {
		this.smno = smno;
	}

	public String getSdtitle() {
		return sdtitle;
	}

	public void setSdtitle(String sdtitle) {
		this.sdtitle = sdtitle;
	}

	public String getSdcontent() {
		return sdcontent;
	}

	public void setSdcontent(String sdcontent) {
		this.sdcontent = sdcontent;
	}

	public String getSdtype() {
		return sdtype;
	}

	public void setSdtype(String sdtype) {
		this.sdtype = sdtype;
	}

	public Date getSdregdate() {
		return sdregdate;
	}

	public void setSdregdate(Date sdregdate) {
		this.sdregdate = sdregdate;
	}

	public Date getSdupdatedate() {
		return sdupdatedate;
	}

	public void setSdupdatedate(Date sdupdatedate) {
		this.sdupdatedate = sdupdatedate;
	}

	public String getAttachFile() {
		return attachFile;
	}

	public void setAttachFile(String attachFile) {
		this.attachFile = attachFile;
	}

	@Override
	public String toString() {
		return "SurveyDetailVO [sdno=" + sdno + ", smno=" + smno + ", sdtitle=" + sdtitle + ", sdcontent=" + sdcontent
				+ ", sdtype=" + sdtype + ", sdregdate=" + sdregdate + ", sdupdatedate=" + sdupdatedate + ", attachFile="
				+ attachFile + "]";
	}


	
	
}
