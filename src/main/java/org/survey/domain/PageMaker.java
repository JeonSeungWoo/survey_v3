package org.survey.domain;

public class PageMaker {
	private boolean prev;
	private boolean next;
	private int start;
	private int end;
	private int total;
	private int page;
	
	
	
	public PageMaker(int total, int page) {
		this.total = total;
		this.page = page;
		
		calcPage();
	}

	private void calcPage() {
		int tempEnd = (int)(Math.ceil(page/10.0)*10);
		start = tempEnd -9;
		
		prev = start == 1 ? false : true;
		
		if(tempEnd *10 >= total){
			end = (int)(Math.ceil(total/10.0));
			next = false;
			
		}else{
			end = tempEnd;
			next = true;
		}
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	@Override
	public String toString() {
		return "PageMaker [prev=" + prev + ", next=" + next + ", start=" + start + ", end=" + end + ", total=" + total
				+ ", page=" + page + ", isPrev()=" + isPrev() + ", isNext()=" + isNext() + ", getStart()=" + getStart()
				+ ", getEnd()=" + getEnd() + ", getTotal()=" + getTotal() + ", getPage()=" + getPage() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
	

	

}
