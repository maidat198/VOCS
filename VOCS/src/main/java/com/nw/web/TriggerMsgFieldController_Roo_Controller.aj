// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.TriggerFieldBuilder;
import com.nw.domain.TriggerMsg;
import com.nw.domain.TriggerMsgField;
import com.nw.web.TriggerMsgFieldController;
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

privileged aspect TriggerMsgFieldController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String TriggerMsgFieldController.create(@Valid TriggerMsgField triggerMsgField, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, triggerMsgField);
            return "triggermsgfields/create";
        }
        uiModel.asMap().clear();
        triggerMsgField.persist();
        return "redirect:/triggermsgfields/" + encodeUrlPathSegment(triggerMsgField.getMsgFieldId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String TriggerMsgFieldController.createForm(Model uiModel) {
        populateEditForm(uiModel, new TriggerMsgField());
        return "triggermsgfields/create";
    }
    
    @RequestMapping(value = "/{msgFieldId}", produces = "text/html")
    public String TriggerMsgFieldController.show(@PathVariable("msgFieldId") Long msgFieldId, Model uiModel) {
        uiModel.addAttribute("triggermsgfield", TriggerMsgField.findTriggerMsgField(msgFieldId));
        uiModel.addAttribute("itemId", msgFieldId);
        return "triggermsgfields/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String TriggerMsgFieldController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("triggermsgfields", TriggerMsgField.findTriggerMsgFieldEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) TriggerMsgField.countTriggerMsgFields() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("triggermsgfields", TriggerMsgField.findAllTriggerMsgFields(sortFieldName, sortOrder));
        }
        return "triggermsgfields/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String TriggerMsgFieldController.update(@Valid TriggerMsgField triggerMsgField, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, triggerMsgField);
            return "triggermsgfields/update";
        }
        uiModel.asMap().clear();
        triggerMsgField.merge();
        return "redirect:/triggermsgfields/" + encodeUrlPathSegment(triggerMsgField.getMsgFieldId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{msgFieldId}", params = "form", produces = "text/html")
    public String TriggerMsgFieldController.updateForm(@PathVariable("msgFieldId") Long msgFieldId, Model uiModel) {
        populateEditForm(uiModel, TriggerMsgField.findTriggerMsgField(msgFieldId));
        return "triggermsgfields/update";
    }
    
    @RequestMapping(value = "/{msgFieldId}", method = RequestMethod.DELETE, produces = "text/html")
    public String TriggerMsgFieldController.delete(@PathVariable("msgFieldId") Long msgFieldId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        TriggerMsgField triggerMsgField = TriggerMsgField.findTriggerMsgField(msgFieldId);
        triggerMsgField.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/triggermsgfields";
    }
    
    void TriggerMsgFieldController.populateEditForm(Model uiModel, TriggerMsgField triggerMsgField) {
        uiModel.addAttribute("triggerMsgField", triggerMsgField);
        uiModel.addAttribute("triggerfieldbuilders", TriggerFieldBuilder.findAllTriggerFieldBuilders());
        uiModel.addAttribute("triggermsgs", TriggerMsg.findAllTriggerMsgs());
    }
    
    String TriggerMsgFieldController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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