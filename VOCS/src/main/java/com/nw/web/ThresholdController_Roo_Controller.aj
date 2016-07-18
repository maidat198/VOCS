// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.Threshold;
import com.nw.web.ThresholdController;
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

privileged aspect ThresholdController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ThresholdController.create(@Valid Threshold threshold, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, threshold);
            return "thresholds/create";
        }
        uiModel.asMap().clear();
        threshold.persist();
        return "redirect:/thresholds/" + encodeUrlPathSegment(threshold.getThresholdId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ThresholdController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Threshold());
        return "thresholds/create";
    }
    
    @RequestMapping(value = "/{thresholdId}", produces = "text/html")
    public String ThresholdController.show(@PathVariable("thresholdId") Long thresholdId, Model uiModel) {
        uiModel.addAttribute("threshold", Threshold.findThreshold(thresholdId));
        uiModel.addAttribute("itemId", thresholdId);
        return "thresholds/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ThresholdController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("thresholds", Threshold.findThresholdEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Threshold.countThresholds() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("thresholds", Threshold.findAllThresholds(sortFieldName, sortOrder));
        }
        return "thresholds/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ThresholdController.update(@Valid Threshold threshold, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, threshold);
            return "thresholds/update";
        }
        uiModel.asMap().clear();
        threshold.merge();
        return "redirect:/thresholds/" + encodeUrlPathSegment(threshold.getThresholdId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{thresholdId}", params = "form", produces = "text/html")
    public String ThresholdController.updateForm(@PathVariable("thresholdId") Long thresholdId, Model uiModel) {
        populateEditForm(uiModel, Threshold.findThreshold(thresholdId));
        return "thresholds/update";
    }
    
    @RequestMapping(value = "/{thresholdId}", method = RequestMethod.DELETE, produces = "text/html")
    public String ThresholdController.delete(@PathVariable("thresholdId") Long thresholdId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Threshold threshold = Threshold.findThreshold(thresholdId);
        threshold.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/thresholds";
    }
    
    void ThresholdController.populateEditForm(Model uiModel, Threshold threshold) {
        uiModel.addAttribute("threshold", threshold);
    }
    
    String ThresholdController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
