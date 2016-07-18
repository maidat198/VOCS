// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.ColumnDT;
import com.nw.domain.Normalizer;
import com.nw.web.ColumnDTController;
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

privileged aspect ColumnDTController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ColumnDTController.create(@Valid ColumnDT columnDT, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, columnDT);
            return "columndts/create";
        }
        uiModel.asMap().clear();
        columnDT.persist();
        return "redirect:/columndts/" + encodeUrlPathSegment(columnDT.getColumnId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ColumnDTController.createForm(Model uiModel) {
        populateEditForm(uiModel, new ColumnDT());
        return "columndts/create";
    }
    
    @RequestMapping(value = "/{columnId}", produces = "text/html")
    public String ColumnDTController.show(@PathVariable("columnId") Long columnId, Model uiModel) {
        uiModel.addAttribute("columndt", ColumnDT.findColumnDT(columnId));
        uiModel.addAttribute("itemId", columnId);
        return "columndts/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ColumnDTController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("columndts", ColumnDT.findColumnDTEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) ColumnDT.countColumnDTs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("columndts", ColumnDT.findAllColumnDTs(sortFieldName, sortOrder));
        }
        return "columndts/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ColumnDTController.update(@Valid ColumnDT columnDT, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, columnDT);
            return "columndts/update";
        }
        uiModel.asMap().clear();
        columnDT.merge();
        return "redirect:/columndts/" + encodeUrlPathSegment(columnDT.getColumnId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{columnId}", params = "form", produces = "text/html")
    public String ColumnDTController.updateForm(@PathVariable("columnId") Long columnId, Model uiModel) {
        populateEditForm(uiModel, ColumnDT.findColumnDT(columnId));
        return "columndts/update";
    }
    
    @RequestMapping(value = "/{columnId}", method = RequestMethod.DELETE, produces = "text/html")
    public String ColumnDTController.delete(@PathVariable("columnId") Long columnId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ColumnDT columnDT = ColumnDT.findColumnDT(columnId);
        columnDT.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/columndts";
    }
    
    void ColumnDTController.populateEditForm(Model uiModel, ColumnDT columnDT) {
        uiModel.addAttribute("columnDT", columnDT);
        uiModel.addAttribute("normalizers", Normalizer.findAllNormalizers());
    }
    
    String ColumnDTController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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