package com.nt.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class PrimeTag extends TagSupport {
	private  int  n=10;
	public  void  setN(int n) {
		this.n=n;
	}
	
	private  boolean isPrime(int x) {
	
		for(int k=2;k<x;++k) {
			if(x%k==0) {
	          return false;
			}
		}
		return true;
	}//isPrime(-)
	
	@Override
	public int doStartTag() throws JspException {
		System.out.println("PrimeTag::doStartTag()");
		JspWriter out=null;
		//get Out object
		out=pageContext.getOut();
		try {
		for(int i=2;i<=n;++i) {
			 if(isPrime(i))
				 out.println(i+"<br>");
		}
		}
		catch(IOException ioe) {
			ioe.printStackTrace();
		}
		return SKIP_BODY;
	}//doStartTag()
	
	@Override
	public int doEndTag() throws JspException {
		System.out.println("PrimeTag::doEndTag()");
		return EVAL_PAGE;
	}

}
