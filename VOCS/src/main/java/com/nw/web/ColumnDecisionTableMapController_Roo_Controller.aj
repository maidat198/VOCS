// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.ColumnDT;
import com.nw.domain.ColumnDecisionTableMap;
import com.nw.domain.DecisionTable;
import com.nw.web.ColumnDecisionTableMapController;
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

privileged aspect ColumnDecisionTableMapController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ColumnDecisionTableMapController.create(@Valid ColumnDecisionTableMap columnDecisionTableMap, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, columnDecisionTableMap);
            return "columndecisiontablemaps/create";
        }
        uiModel.asMap().clear();
        columnDecisionTableMap.persist();
        return "redirect:/columndecisiontablemaps/" + encodeUrlPathSegment(columnDecisionTableMap.getColumnDecisionTableMapId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ColumnDecisionTableMapController.createForm(Model uiModel) {
        populateEditForm(uiModel, new ColumnDecisionTableMap());
        return "columndecisiontablemaps/create";
    }
    
    @RequestMapping(value = "/{columnDecisionTableMapId}", produces = "text/html")
    public String ColumnDecisionTableMapController.show(@PathVariable("columnDecisionTableMapId") Long columnDecisionTableMapId, Model uiModel) {
        uiModel.addAttribute("columndecisiontablemap", ColumnDecisionTableMap.findColumnDecisionTableMap(columnDecisionTableMapId));
        uiModel.addAttribute("itemId", columnDecisionTableMapId);
        return "columndecisiontablemaps/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ColumnDecisionTableMapController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("columndecisiontablemaps", ColumnDecisionTableMap.findColumnDecisionTableMapEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) ColumnDecisionTableMap.countColumnDecisionTableMaps() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("columndecisiontablemaps", ColumnDecisionTableMap.findAllColumnDecisionTableMaps(sortFieldName, sortOrder));
        }
        return "columndecisiontablemaps/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ColumnDecisionTableMapController.update(@Valid ColumnDecisionTableMap columnDecisionTableMap, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, columnDecisionTableMap);
            return "columndecisiontablemaps/update";
        }
        uiModel.asMap().clear();
        columnDecisionTableMap.merge();
        return "redirect:/columndecisiontablemaps/" + encodeUrlPathSegment(columnDecisionTableMap.getColumnDecisionTableMapId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{columnDecisionTableMapId}", params = "form", produces = "text/html")
    public String ColumnDecisionTableMapController.updateForm(@PathVariable("columnDecisionTableMapId") Long columnDecisionTableMapId, Model uiModel) {
        populateEditForm(uiModel, ColumnDecisionTableMap.findColumnDecisionTableMap(columnDecisionTableMapId));
        return "columndecisiontablemaps/update";
    }
    
    @RequestMapping(value = "/{columnDecisionTableMapId}", method = RequestMethod.DELETE, produces = "text/html")
    public String ColumnDecisionTableMapController.delete(@PathVariable("columnDecisionTableMapId") Long columnDecisionTableMapId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ColumnDecisionTableMap columnDecisionTableMap = ColumnDecisionTableMap.findColumnDecisionTableMap(columnDecisionTableMapId);
        columnDecisionTableMap.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/columndecisiontablemaps";
    }
    
    void ColumnDecisionTableMapController.populateEditForm(Model uiModel, ColumnDecisionTableMap columnDecisionTableMap) {
        uiModel.addAttribute("columnDecisionTableMap", columnDecisionTableMap);
        uiModel.addAttribute("columndts", ColumnDT.findAllColumnDTs());
        uiModel.addAttribute("decisiontables", DecisionTable.findAllDecisionTables());
    }
    
    String ColumnDecisionTableMapController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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