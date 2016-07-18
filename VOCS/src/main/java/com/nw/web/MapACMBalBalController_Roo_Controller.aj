// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.BalType;
import com.nw.domain.MapACMBalBal;
import com.nw.web.MapACMBalBalController;
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

privileged aspect MapACMBalBalController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String MapACMBalBalController.create(@Valid MapACMBalBal mapACMBalBal, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, mapACMBalBal);
            return "mapacmbalbals/create";
        }
        uiModel.asMap().clear();
        mapACMBalBal.persist();
        return "redirect:/mapacmbalbals/" + encodeUrlPathSegment(mapACMBalBal.getAcmbalTypeId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String MapACMBalBalController.createForm(Model uiModel) {
        populateEditForm(uiModel, new MapACMBalBal());
        return "mapacmbalbals/create";
    }
    
    @RequestMapping(value = "/{acmbalTypeId}", produces = "text/html")
    public String MapACMBalBalController.show(@PathVariable("acmbalTypeId") Long acmbalTypeId, Model uiModel) {
        uiModel.addAttribute("mapacmbalbal", MapACMBalBal.findMapACMBalBal(acmbalTypeId));
        uiModel.addAttribute("itemId", acmbalTypeId);
        return "mapacmbalbals/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String MapACMBalBalController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("mapacmbalbals", MapACMBalBal.findMapACMBalBalEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) MapACMBalBal.countMapACMBalBals() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("mapacmbalbals", MapACMBalBal.findAllMapACMBalBals(sortFieldName, sortOrder));
        }
        return "mapacmbalbals/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String MapACMBalBalController.update(@Valid MapACMBalBal mapACMBalBal, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, mapACMBalBal);
            return "mapacmbalbals/update";
        }
        uiModel.asMap().clear();
        mapACMBalBal.merge();
        return "redirect:/mapacmbalbals/" + encodeUrlPathSegment(mapACMBalBal.getAcmbalTypeId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{acmbalTypeId}", params = "form", produces = "text/html")
    public String MapACMBalBalController.updateForm(@PathVariable("acmbalTypeId") Long acmbalTypeId, Model uiModel) {
        populateEditForm(uiModel, MapACMBalBal.findMapACMBalBal(acmbalTypeId));
        return "mapacmbalbals/update";
    }
    
    @RequestMapping(value = "/{acmbalTypeId}", method = RequestMethod.DELETE, produces = "text/html")
    public String MapACMBalBalController.delete(@PathVariable("acmbalTypeId") Long acmbalTypeId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        MapACMBalBal mapACMBalBal = MapACMBalBal.findMapACMBalBal(acmbalTypeId);
        mapACMBalBal.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/mapacmbalbals";
    }
    
    void MapACMBalBalController.populateEditForm(Model uiModel, MapACMBalBal mapACMBalBal) {
        uiModel.addAttribute("mapACMBalBal", mapACMBalBal);
        uiModel.addAttribute("baltypes", BalType.findAllBalTypes());
    }
    
    String MapACMBalBalController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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