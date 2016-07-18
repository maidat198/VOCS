// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.BalType;
import com.nw.domain.BillingCycleType;
import com.nw.domain.UnitType;
import com.nw.web.BalTypeController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect BalTypeController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String BalTypeController.create(@Valid BalType balType, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, balType);
            return "baltypes/create";
        }
        uiModel.asMap().clear();
        balType.persist();
        return "redirect:/baltypes/" + encodeUrlPathSegment(balType.getBalTypeId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String BalTypeController.createForm(Model uiModel) {
        populateEditForm(uiModel, new BalType());
        return "baltypes/create";
    }
    
    @RequestMapping(value = "/{balTypeId}", produces = "text/html")
    public String BalTypeController.show(@PathVariable("balTypeId") Long balTypeId, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("baltype", BalType.findBalType(balTypeId));
        uiModel.addAttribute("itemId", balTypeId);
        return "baltypes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String BalTypeController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("baltypes", BalType.findBalTypeEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) BalType.countBalTypes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("baltypes", BalType.findAllBalTypes(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "baltypes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String BalTypeController.update(@Valid BalType balType, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, balType);
            return "baltypes/update";
        }
        uiModel.asMap().clear();
        balType.merge();
        return "redirect:/baltypes/" + encodeUrlPathSegment(balType.getBalTypeId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{balTypeId}", params = "form", produces = "text/html")
    public String BalTypeController.updateForm(@PathVariable("balTypeId") Long balTypeId, Model uiModel) {
        populateEditForm(uiModel, BalType.findBalType(balTypeId));
        return "baltypes/update";
    }
    
    @RequestMapping(value = "/{balTypeId}", method = RequestMethod.DELETE, produces = "text/html")
    public String BalTypeController.delete(@PathVariable("balTypeId") Long balTypeId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        BalType balType = BalType.findBalType(balTypeId);
        balType.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/baltypes";
    }
    
    void BalTypeController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("balType_effdate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("balType_expdate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void BalTypeController.populateEditForm(Model uiModel, BalType balType) {
        uiModel.addAttribute("balType", balType);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("billingcycletypes", BillingCycleType.findAllBillingCycleTypes());
        uiModel.addAttribute("unittypes", UnitType.findAllUnitTypes());
    }
    
    String BalTypeController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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