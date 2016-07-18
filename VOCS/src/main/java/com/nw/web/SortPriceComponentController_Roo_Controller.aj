// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.Category;
import com.nw.domain.SortPriceComponent;
import com.nw.web.SortPriceComponentController;
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

privileged aspect SortPriceComponentController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String SortPriceComponentController.create(@Valid SortPriceComponent sortPriceComponent, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, sortPriceComponent);
            return "sortpricecomponents/create";
        }
        uiModel.asMap().clear();
        sortPriceComponent.persist();
        return "redirect:/sortpricecomponents/" + encodeUrlPathSegment(sortPriceComponent.getSortPriceComponentId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String SortPriceComponentController.createForm(Model uiModel) {
        populateEditForm(uiModel, new SortPriceComponent());
        return "sortpricecomponents/create";
    }
    
    @RequestMapping(value = "/{sortPriceComponentId}", produces = "text/html")
    public String SortPriceComponentController.show(@PathVariable("sortPriceComponentId") Long sortPriceComponentId, Model uiModel) {
        uiModel.addAttribute("sortpricecomponent", SortPriceComponent.findSortPriceComponent(sortPriceComponentId));
        uiModel.addAttribute("itemId", sortPriceComponentId);
        return "sortpricecomponents/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String SortPriceComponentController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("sortpricecomponents", SortPriceComponent.findSortPriceComponentEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) SortPriceComponent.countSortPriceComponents() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("sortpricecomponents", SortPriceComponent.findAllSortPriceComponents(sortFieldName, sortOrder));
        }
        return "sortpricecomponents/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String SortPriceComponentController.update(@Valid SortPriceComponent sortPriceComponent, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, sortPriceComponent);
            return "sortpricecomponents/update";
        }
        uiModel.asMap().clear();
        sortPriceComponent.merge();
        return "redirect:/sortpricecomponents/" + encodeUrlPathSegment(sortPriceComponent.getSortPriceComponentId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{sortPriceComponentId}", params = "form", produces = "text/html")
    public String SortPriceComponentController.updateForm(@PathVariable("sortPriceComponentId") Long sortPriceComponentId, Model uiModel) {
        populateEditForm(uiModel, SortPriceComponent.findSortPriceComponent(sortPriceComponentId));
        return "sortpricecomponents/update";
    }
    
    @RequestMapping(value = "/{sortPriceComponentId}", method = RequestMethod.DELETE, produces = "text/html")
    public String SortPriceComponentController.delete(@PathVariable("sortPriceComponentId") Long sortPriceComponentId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        SortPriceComponent sortPriceComponent = SortPriceComponent.findSortPriceComponent(sortPriceComponentId);
        sortPriceComponent.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/sortpricecomponents";
    }
    
    void SortPriceComponentController.populateEditForm(Model uiModel, SortPriceComponent sortPriceComponent) {
        uiModel.addAttribute("sortPriceComponent", sortPriceComponent);
        uiModel.addAttribute("categorys", Category.findAllCategorys());
    }
    
    String SortPriceComponentController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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