package com.nt.tags;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class LabelTag extends TagSupport {
	
	@Override
	public int doStartTag() throws JspException {
		System.out.println("LabelTag.doStartTag()");
		JspWriter out=null;
		//get out object
		out=pageContext.getOut();
		try {
		out.print("<b> The Prime Numbers are </b>");
		}
		catch(IOException ioe) {
			ioe.printStackTrace();
		}
		return SKIP_BODY;
	}
	
	@Override
	public int doEndTag() throws JspException {
		System.out.println("LabelTag.doEndTag()");
	   return  EVAL_PAGE;
	}
	
}
