package org.survey.domain;

public class AnswerStat2 {

	private int sdno;
	private int smno;
	private String sdcontent;
	private String sdtitle;
	private int oresult;
	private int xresult;
	
	
	
	
	
	public String getSdtitle() {
		return sdtitle;
	}
	public void setSdtitle(String sdtitle) {
		this.sdtitle = sdtitle;
	}
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
	public int getOresult() {
		return oresult;
	}
	public void setOresult(int oresult) {
		this.oresult = oresult;
	}
	public int getXresult() {
		return xresult;
	}
	public void setXresult(int xresult) {
		this.xresult = xresult;
	}
	@Override
	public String toString() {
		return "AnswerStat2 [sdno=" + sdno + ", smno=" + smno + ", sdcontent=" + sdcontent + ", sdtitle=" + sdtitle
				+ ", oresult=" + oresult + ", xresult=" + xresult + "]";
	}
	

	
	
	
}
