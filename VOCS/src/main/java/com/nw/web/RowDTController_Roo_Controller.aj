// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.RowDT;
import com.nw.web.RowDTController;
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

privileged aspect RowDTController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String RowDTController.create(@Valid RowDT rowDT, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, rowDT);
            return "rowdts/create";
        }
        uiModel.asMap().clear();
        rowDT.persist();
        return "redirect:/rowdts/" + encodeUrlPathSegment(rowDT.getRowId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String RowDTController.createForm(Model uiModel) {
        populateEditForm(uiModel, new RowDT());
        return "rowdts/create";
    }
    
    @RequestMapping(value = "/{rowId}", produces = "text/html")
    public String RowDTController.show(@PathVariable("rowId") Long rowId, Model uiModel) {
        uiModel.addAttribute("rowdt", RowDT.findRowDT(rowId));
        uiModel.addAttribute("itemId", rowId);
        return "rowdts/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String RowDTController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("rowdts", RowDT.findRowDTEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) RowDT.countRowDTs() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("rowdts", RowDT.findAllRowDTs(sortFieldName, sortOrder));
        }
        return "rowdts/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String RowDTController.update(@Valid RowDT rowDT, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, rowDT);
            return "rowdts/update";
        }
        uiModel.asMap().clear();
        rowDT.merge();
        return "redirect:/rowdts/" + encodeUrlPathSegment(rowDT.getRowId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{rowId}", params = "form", produces = "text/html")
    public String RowDTController.updateForm(@PathVariable("rowId") Long rowId, Model uiModel) {
        populateEditForm(uiModel, RowDT.findRowDT(rowId));
        return "rowdts/update";
    }
    
    @RequestMapping(value = "/{rowId}", method = RequestMethod.DELETE, produces = "text/html")
    public String RowDTController.delete(@PathVariable("rowId") Long rowId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        RowDT rowDT = RowDT.findRowDT(rowId);
        rowDT.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/rowdts";
    }
    
    void RowDTController.populateEditForm(Model uiModel, RowDT rowDT) {
        uiModel.addAttribute("rowDT", rowDT);
    }
    
    String RowDTController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
