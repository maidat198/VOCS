// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.Actions;
import com.nw.web.ActionsController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect ActionsController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ActionsController.create(@Valid Actions actions, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, actions);
            return "actionses/create";
        }
        uiModel.asMap().clear();
        actions.persist();
        return "redirect:/actionses/" + encodeUrlPathSegment(actions.getActionId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ActionsController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Actions());
        return "actionses/create";
    }
    
    @RequestMapping(value = "/{actionId}", produces = "text/html")
    public String ActionsController.show(@PathVariable("actionId") Long actionId, Model uiModel) {
        uiModel.addAttribute("actions", Actions.findActions(actionId));
        uiModel.addAttribute("itemId", actionId);
        return "actionses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ActionsController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("actionses", Actions.findActionsEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Actions.countActionses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("actionses", Actions.findAllActionses(sortFieldName, sortOrder));
        }
        return "actionses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ActionsController.update(@Valid Actions actions, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, actions);
            return "actionses/update";
        }
        uiModel.asMap().clear();
        actions.merge();
        return "redirect:/actionses/" + encodeUrlPathSegment(actions.getActionId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{actionId}", params = "form", produces = "text/html")
    public String ActionsController.updateForm(@PathVariable("actionId") Long actionId, Model uiModel) {
        populateEditForm(uiModel, Actions.findActions(actionId));
        return "actionses/update";
    }
    
    @RequestMapping(value = "/{actionId}", method = RequestMethod.DELETE, produces = "text/html")
    public String ActionsController.delete(@PathVariable("actionId") Long actionId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Actions actions = Actions.findActions(actionId);
        actions.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/actionses";
    }
    
    void ActionsController.populateEditForm(Model uiModel, Actions actions) {
        uiModel.addAttribute("actions", actions);
    }
    
    String ActionsController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
