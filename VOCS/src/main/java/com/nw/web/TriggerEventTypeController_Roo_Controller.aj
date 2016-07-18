// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.TriggerEventType;
import com.nw.web.TriggerEventTypeController;
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

privileged aspect TriggerEventTypeController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String TriggerEventTypeController.create(@Valid TriggerEventType triggerEventType, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, triggerEventType);
            return "triggereventtypes/create";
        }
        uiModel.asMap().clear();
        triggerEventType.persist();
        return "redirect:/triggereventtypes/" + encodeUrlPathSegment(triggerEventType.getTrigger_event_type().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String TriggerEventTypeController.createForm(Model uiModel) {
        populateEditForm(uiModel, new TriggerEventType());
        return "triggereventtypes/create";
    }
    
    @RequestMapping(value = "/{trigger_event_type}", produces = "text/html")
    public String TriggerEventTypeController.show(@PathVariable("trigger_event_type") Long trigger_event_type, Model uiModel) {
        uiModel.addAttribute("triggereventtype", TriggerEventType.findTriggerEventType(trigger_event_type));
        uiModel.addAttribute("itemId", trigger_event_type);
        return "triggereventtypes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String TriggerEventTypeController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("triggereventtypes", TriggerEventType.findTriggerEventTypeEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) TriggerEventType.countTriggerEventTypes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("triggereventtypes", TriggerEventType.findAllTriggerEventTypes(sortFieldName, sortOrder));
        }
        return "triggereventtypes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String TriggerEventTypeController.update(@Valid TriggerEventType triggerEventType, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, triggerEventType);
            return "triggereventtypes/update";
        }
        uiModel.asMap().clear();
        triggerEventType.merge();
        return "redirect:/triggereventtypes/" + encodeUrlPathSegment(triggerEventType.getTrigger_event_type().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{trigger_event_type}", params = "form", produces = "text/html")
    public String TriggerEventTypeController.updateForm(@PathVariable("trigger_event_type") Long trigger_event_type, Model uiModel) {
        populateEditForm(uiModel, TriggerEventType.findTriggerEventType(trigger_event_type));
        return "triggereventtypes/update";
    }
    
    @RequestMapping(value = "/{trigger_event_type}", method = RequestMethod.DELETE, produces = "text/html")
    public String TriggerEventTypeController.delete(@PathVariable("trigger_event_type") Long trigger_event_type, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        TriggerEventType triggerEventType = TriggerEventType.findTriggerEventType(trigger_event_type);
        triggerEventType.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/triggereventtypes";
    }
    
    void TriggerEventTypeController.populateEditForm(Model uiModel, TriggerEventType triggerEventType) {
        uiModel.addAttribute("triggerEventType", triggerEventType);
    }
    
    String TriggerEventTypeController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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