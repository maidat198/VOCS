// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.ActionType;
import com.nw.domain.Event;
import com.nw.domain.EventActionTypeMap;
import com.nw.web.EventActionTypeMapController;
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

privileged aspect EventActionTypeMapController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String EventActionTypeMapController.create(@Valid EventActionTypeMap eventActionTypeMap, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, eventActionTypeMap);
            return "eventactiontypemaps/create";
        }
        uiModel.asMap().clear();
        eventActionTypeMap.persist();
        return "redirect:/eventactiontypemaps/" + encodeUrlPathSegment(eventActionTypeMap.getEventActionTypeMapId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String EventActionTypeMapController.createForm(Model uiModel) {
        populateEditForm(uiModel, new EventActionTypeMap());
        return "eventactiontypemaps/create";
    }
    
    @RequestMapping(value = "/{eventActionTypeMapId}", produces = "text/html")
    public String EventActionTypeMapController.show(@PathVariable("eventActionTypeMapId") Long eventActionTypeMapId, Model uiModel) {
        uiModel.addAttribute("eventactiontypemap", EventActionTypeMap.findEventActionTypeMap(eventActionTypeMapId));
        uiModel.addAttribute("itemId", eventActionTypeMapId);
        return "eventactiontypemaps/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String EventActionTypeMapController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("eventactiontypemaps", EventActionTypeMap.findEventActionTypeMapEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) EventActionTypeMap.countEventActionTypeMaps() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("eventactiontypemaps", EventActionTypeMap.findAllEventActionTypeMaps(sortFieldName, sortOrder));
        }
        return "eventactiontypemaps/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String EventActionTypeMapController.update(@Valid EventActionTypeMap eventActionTypeMap, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, eventActionTypeMap);
            return "eventactiontypemaps/update";
        }
        uiModel.asMap().clear();
        eventActionTypeMap.merge();
        return "redirect:/eventactiontypemaps/" + encodeUrlPathSegment(eventActionTypeMap.getEventActionTypeMapId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{eventActionTypeMapId}", params = "form", produces = "text/html")
    public String EventActionTypeMapController.updateForm(@PathVariable("eventActionTypeMapId") Long eventActionTypeMapId, Model uiModel) {
        populateEditForm(uiModel, EventActionTypeMap.findEventActionTypeMap(eventActionTypeMapId));
        return "eventactiontypemaps/update";
    }
    
    @RequestMapping(value = "/{eventActionTypeMapId}", method = RequestMethod.DELETE, produces = "text/html")
    public String EventActionTypeMapController.delete(@PathVariable("eventActionTypeMapId") Long eventActionTypeMapId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        EventActionTypeMap eventActionTypeMap = EventActionTypeMap.findEventActionTypeMap(eventActionTypeMapId);
        eventActionTypeMap.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/eventactiontypemaps";
    }
    
    void EventActionTypeMapController.populateEditForm(Model uiModel, EventActionTypeMap eventActionTypeMap) {
        uiModel.addAttribute("eventActionTypeMap", eventActionTypeMap);
        uiModel.addAttribute("actiontypes", ActionType.findAllActionTypes());
        uiModel.addAttribute("events", Event.findAllEvents());
    }
    
    String EventActionTypeMapController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
