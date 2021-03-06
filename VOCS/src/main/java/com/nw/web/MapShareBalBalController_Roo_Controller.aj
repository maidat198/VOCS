// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.BalType;
import com.nw.domain.MapShareBalBal;
import com.nw.web.MapShareBalBalController;
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

privileged aspect MapShareBalBalController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String MapShareBalBalController.create(@Valid MapShareBalBal mapShareBalBal, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, mapShareBalBal);
            return "mapsharebalbals/create";
        }
        uiModel.asMap().clear();
        mapShareBalBal.persist();
        return "redirect:/mapsharebalbals/" + encodeUrlPathSegment(mapShareBalBal.getShareBalTypeId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String MapShareBalBalController.createForm(Model uiModel) {
        populateEditForm(uiModel, new MapShareBalBal());
        return "mapsharebalbals/create";
    }
    
    @RequestMapping(value = "/{shareBalTypeId}", produces = "text/html")
    public String MapShareBalBalController.show(@PathVariable("shareBalTypeId") Long shareBalTypeId, Model uiModel) {
        uiModel.addAttribute("mapsharebalbal", MapShareBalBal.findMapShareBalBal(shareBalTypeId));
        uiModel.addAttribute("itemId", shareBalTypeId);
        return "mapsharebalbals/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String MapShareBalBalController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("mapsharebalbals", MapShareBalBal.findMapShareBalBalEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) MapShareBalBal.countMapShareBalBals() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("mapsharebalbals", MapShareBalBal.findAllMapShareBalBals(sortFieldName, sortOrder));
        }
        return "mapsharebalbals/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String MapShareBalBalController.update(@Valid MapShareBalBal mapShareBalBal, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, mapShareBalBal);
            return "mapsharebalbals/update";
        }
        uiModel.asMap().clear();
        mapShareBalBal.merge();
        return "redirect:/mapsharebalbals/" + encodeUrlPathSegment(mapShareBalBal.getShareBalTypeId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{shareBalTypeId}", params = "form", produces = "text/html")
    public String MapShareBalBalController.updateForm(@PathVariable("shareBalTypeId") Long shareBalTypeId, Model uiModel) {
        populateEditForm(uiModel, MapShareBalBal.findMapShareBalBal(shareBalTypeId));
        return "mapsharebalbals/update";
    }
    
    @RequestMapping(value = "/{shareBalTypeId}", method = RequestMethod.DELETE, produces = "text/html")
    public String MapShareBalBalController.delete(@PathVariable("shareBalTypeId") Long shareBalTypeId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        MapShareBalBal mapShareBalBal = MapShareBalBal.findMapShareBalBal(shareBalTypeId);
        mapShareBalBal.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/mapsharebalbals";
    }
    
    void MapShareBalBalController.populateEditForm(Model uiModel, MapShareBalBal mapShareBalBal) {
        uiModel.addAttribute("mapShareBalBal", mapShareBalBal);
        uiModel.addAttribute("baltypes", BalType.findAllBalTypes());
    }
    
    String MapShareBalBalController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
