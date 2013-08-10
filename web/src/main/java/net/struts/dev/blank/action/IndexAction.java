package net.struts.dev.blank.action;

import javax.annotation.Resource;

import net.struts.dev.blank.form.IndexForm;

import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

public class IndexAction{
	
	@ActionForm
	@Resource(name="indexForm")
	protected IndexForm form;
	
    @Execute(validator = false)
    public String index(){
        return "index.jsp";
    }
}
