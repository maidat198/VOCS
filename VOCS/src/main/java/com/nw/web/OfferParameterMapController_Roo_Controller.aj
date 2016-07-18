// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.Offer;
import com.nw.domain.OfferParameterMap;
import com.nw.domain.Parameters;
import com.nw.web.OfferParameterMapController;
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

privileged aspect OfferParameterMapController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String OfferParameterMapController.create(@Valid OfferParameterMap offerParameterMap, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, offerParameterMap);
            return "offerparametermaps/create";
        }
        uiModel.asMap().clear();
        offerParameterMap.persist();
        return "redirect:/offerparametermaps/" + encodeUrlPathSegment(offerParameterMap.getOfferParameterMapId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String OfferParameterMapController.createForm(Model uiModel) {
        populateEditForm(uiModel, new OfferParameterMap());
        return "offerparametermaps/create";
    }
    
    @RequestMapping(value = "/{offerParameterMapId}", produces = "text/html")
    public String OfferParameterMapController.show(@PathVariable("offerParameterMapId") Long offerParameterMapId, Model uiModel) {
        uiModel.addAttribute("offerparametermap", OfferParameterMap.findOfferParameterMap(offerParameterMapId));
        uiModel.addAttribute("itemId", offerParameterMapId);
        return "offerparametermaps/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String OfferParameterMapController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("offerparametermaps", OfferParameterMap.findOfferParameterMapEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) OfferParameterMap.countOfferParameterMaps() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("offerparametermaps", OfferParameterMap.findAllOfferParameterMaps(sortFieldName, sortOrder));
        }
        return "offerparametermaps/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String OfferParameterMapController.update(@Valid OfferParameterMap offerParameterMap, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, offerParameterMap);
            return "offerparametermaps/update";
        }
        uiModel.asMap().clear();
        offerParameterMap.merge();
        return "redirect:/offerparametermaps/" + encodeUrlPathSegment(offerParameterMap.getOfferParameterMapId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{offerParameterMapId}", params = "form", produces = "text/html")
    public String OfferParameterMapController.updateForm(@PathVariable("offerParameterMapId") Long offerParameterMapId, Model uiModel) {
        populateEditForm(uiModel, OfferParameterMap.findOfferParameterMap(offerParameterMapId));
        return "offerparametermaps/update";
    }
    
    @RequestMapping(value = "/{offerParameterMapId}", method = RequestMethod.DELETE, produces = "text/html")
    public String OfferParameterMapController.delete(@PathVariable("offerParameterMapId") Long offerParameterMapId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        OfferParameterMap offerParameterMap = OfferParameterMap.findOfferParameterMap(offerParameterMapId);
        offerParameterMap.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/offerparametermaps";
    }
    
    void OfferParameterMapController.populateEditForm(Model uiModel, OfferParameterMap offerParameterMap) {
        uiModel.addAttribute("offerParameterMap", offerParameterMap);
        uiModel.addAttribute("offers", Offer.findAllOffers());
        uiModel.addAttribute("parameterses", Parameters.findAllParameterses());
    }
    
    String OfferParameterMapController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
