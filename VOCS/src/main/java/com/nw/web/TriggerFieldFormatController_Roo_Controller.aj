// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.TriggerFieldFormat;
import com.nw.web.TriggerFieldFormatController;
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

privileged aspect TriggerFieldFormatController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String TriggerFieldFormatController.create(@Valid TriggerFieldFormat triggerFieldFormat, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, triggerFieldFormat);
            return "triggerfieldformats/create";
        }
        uiModel.asMap().clear();
        triggerFieldFormat.persist();
        return "redirect:/triggerfieldformats/" + encodeUrlPathSegment(triggerFieldFormat.getFormatTemplateId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String TriggerFieldFormatController.createForm(Model uiModel) {
        populateEditForm(uiModel, new TriggerFieldFormat());
        return "triggerfieldformats/create";
    }
    
    @RequestMapping(value = "/{formatTemplateId}", produces = "text/html")
    public String TriggerFieldFormatController.show(@PathVariable("formatTemplateId") Long formatTemplateId, Model uiModel) {
        uiModel.addAttribute("triggerfieldformat", TriggerFieldFormat.findTriggerFieldFormat(formatTemplateId));
        uiModel.addAttribute("itemId", formatTemplateId);
        return "triggerfieldformats/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String TriggerFieldFormatController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("triggerfieldformats", TriggerFieldFormat.findTriggerFieldFormatEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) TriggerFieldFormat.countTriggerFieldFormats() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("triggerfieldformats", TriggerFieldFormat.findAllTriggerFieldFormats(sortFieldName, sortOrder));
        }
        return "triggerfieldformats/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String TriggerFieldFormatController.update(@Valid TriggerFieldFormat triggerFieldFormat, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, triggerFieldFormat);
            return "triggerfieldformats/update";
        }
        uiModel.asMap().clear();
        triggerFieldFormat.merge();
        return "redirect:/triggerfieldformats/" + encodeUrlPathSegment(triggerFieldFormat.getFormatTemplateId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{formatTemplateId}", params = "form", produces = "text/html")
    public String TriggerFieldFormatController.updateForm(@PathVariable("formatTemplateId") Long formatTemplateId, Model uiModel) {
        populateEditForm(uiModel, TriggerFieldFormat.findTriggerFieldFormat(formatTemplateId));
        return "triggerfieldformats/update";
    }
    
    @RequestMapping(value = "/{formatTemplateId}", method = RequestMethod.DELETE, produces = "text/html")
    public String TriggerFieldFormatController.delete(@PathVariable("formatTemplateId") Long formatTemplateId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        TriggerFieldFormat triggerFieldFormat = TriggerFieldFormat.findTriggerFieldFormat(formatTemplateId);
        triggerFieldFormat.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/triggerfieldformats";
    }
    
    void TriggerFieldFormatController.populateEditForm(Model uiModel, TriggerFieldFormat triggerFieldFormat) {
        uiModel.addAttribute("triggerFieldFormat", triggerFieldFormat);
    }
    
    String TriggerFieldFormatController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
