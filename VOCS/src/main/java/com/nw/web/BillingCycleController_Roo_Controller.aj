// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.BillingCycle;
import com.nw.domain.BillingCycleType;
import com.nw.web.BillingCycleController;
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

privileged aspect BillingCycleController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String BillingCycleController.create(@Valid BillingCycle billingCycle, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, billingCycle);
            return "billingcycles/create";
        }
        uiModel.asMap().clear();
        billingCycle.persist();
        return "redirect:/billingcycles/" + encodeUrlPathSegment(billingCycle.getBillingCycleId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String BillingCycleController.createForm(Model uiModel) {
        populateEditForm(uiModel, new BillingCycle());
        return "billingcycles/create";
    }
    
    @RequestMapping(value = "/{billingCycleId}", produces = "text/html")
    public String BillingCycleController.show(@PathVariable("billingCycleId") Long billingCycleId, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("billingcycle", BillingCycle.findBillingCycle(billingCycleId));
        uiModel.addAttribute("itemId", billingCycleId);
        return "billingcycles/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String BillingCycleController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("billingcycles", BillingCycle.findBillingCycleEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) BillingCycle.countBillingCycles() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("billingcycles", BillingCycle.findAllBillingCycles(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "billingcycles/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String BillingCycleController.update(@Valid BillingCycle billingCycle, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, billingCycle);
            return "billingcycles/update";
        }
        uiModel.asMap().clear();
        billingCycle.merge();
        return "redirect:/billingcycles/" + encodeUrlPathSegment(billingCycle.getBillingCycleId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{billingCycleId}", params = "form", produces = "text/html")
    public String BillingCycleController.updateForm(@PathVariable("billingCycleId") Long billingCycleId, Model uiModel) {
        populateEditForm(uiModel, BillingCycle.findBillingCycle(billingCycleId));
        return "billingcycles/update";
    }
    
    @RequestMapping(value = "/{billingCycleId}", method = RequestMethod.DELETE, produces = "text/html")
    public String BillingCycleController.delete(@PathVariable("billingCycleId") Long billingCycleId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        BillingCycle billingCycle = BillingCycle.findBillingCycle(billingCycleId);
        billingCycle.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/billingcycles";
    }
    
    void BillingCycleController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("billingCycle_cyclebegindate_date_format", DateTimeFormat.patternForStyle("S-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("billingCycle_cycleenddate_date_format", DateTimeFormat.patternForStyle("S-", LocaleContextHolder.getLocale()));
    }
    
    void BillingCycleController.populateEditForm(Model uiModel, BillingCycle billingCycle) {
        uiModel.addAttribute("billingCycle", billingCycle);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("billingcycletypes", BillingCycleType.findAllBillingCycleTypes());
    }
    
    String BillingCycleController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
