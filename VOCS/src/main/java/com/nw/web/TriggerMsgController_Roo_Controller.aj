// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.TriggerEvent;
import com.nw.domain.TriggerMsg;
import com.nw.web.TriggerMsgController;
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

privileged aspect TriggerMsgController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String TriggerMsgController.create(@Valid TriggerMsg triggerMsg, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, triggerMsg);
            return "triggermsgs/create";
        }
        uiModel.asMap().clear();
        triggerMsg.persist();
        return "redirect:/triggermsgs/" + encodeUrlPathSegment(triggerMsg.getMsgId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String TriggerMsgController.createForm(Model uiModel) {
        populateEditForm(uiModel, new TriggerMsg());
        return "triggermsgs/create";
    }
    
    @RequestMapping(value = "/{msgId}", produces = "text/html")
    public String TriggerMsgController.show(@PathVariable("msgId") Long msgId, Model uiModel) {
        uiModel.addAttribute("triggermsg", TriggerMsg.findTriggerMsg(msgId));
        uiModel.addAttribute("itemId", msgId);
        return "triggermsgs/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String TriggerMsgController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("triggermsgs", TriggerMsg.findTriggerMsgEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) TriggerMsg.countTriggerMsgs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("triggermsgs", TriggerMsg.findAllTriggerMsgs(sortFieldName, sortOrder));
        }
        return "triggermsgs/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String TriggerMsgController.update(@Valid TriggerMsg triggerMsg, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, triggerMsg);
            return "triggermsgs/update";
        }
        uiModel.asMap().clear();
        triggerMsg.merge();
        return "redirect:/triggermsgs/" + encodeUrlPathSegment(triggerMsg.getMsgId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{msgId}", params = "form", produces = "text/html")
    public String TriggerMsgController.updateForm(@PathVariable("msgId") Long msgId, Model uiModel) {
        populateEditForm(uiModel, TriggerMsg.findTriggerMsg(msgId));
        return "triggermsgs/update";
    }
    
    @RequestMapping(value = "/{msgId}", method = RequestMethod.DELETE, produces = "text/html")
    public String TriggerMsgController.delete(@PathVariable("msgId") Long msgId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        TriggerMsg triggerMsg = TriggerMsg.findTriggerMsg(msgId);
        triggerMsg.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/triggermsgs";
    }
    
    void TriggerMsgController.populateEditForm(Model uiModel, TriggerMsg triggerMsg) {
        uiModel.addAttribute("triggerMsg", triggerMsg);
        uiModel.addAttribute("triggerevents", TriggerEvent.findAllTriggerEvents());
    }
    
    String TriggerMsgController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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