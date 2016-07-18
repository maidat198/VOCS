// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.Actions;
import com.nw.domain.Offer;
import com.nw.domain.OfferActionMap;
import com.nw.web.OfferActionMapController;
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

privileged aspect OfferActionMapController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String OfferActionMapController.create(@Valid OfferActionMap offerActionMap, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, offerActionMap);
            return "offeractionmaps/create";
        }
        uiModel.asMap().clear();
        offerActionMap.persist();
        return "redirect:/offeractionmaps/" + encodeUrlPathSegment(offerActionMap.getOfferActionMapId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String OfferActionMapController.createForm(Model uiModel) {
        populateEditForm(uiModel, new OfferActionMap());
        return "offeractionmaps/create";
    }
    
    @RequestMapping(value = "/{offerActionMapId}", produces = "text/html")
    public String OfferActionMapController.show(@PathVariable("offerActionMapId") Long offerActionMapId, Model uiModel) {
        uiModel.addAttribute("offeractionmap", OfferActionMap.findOfferActionMap(offerActionMapId));
        uiModel.addAttribute("itemId", offerActionMapId);
        return "offeractionmaps/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String OfferActionMapController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("offeractionmaps", OfferActionMap.findOfferActionMapEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) OfferActionMap.countOfferActionMaps() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("offeractionmaps", OfferActionMap.findAllOfferActionMaps(sortFieldName, sortOrder));
        }
        return "offeractionmaps/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String OfferActionMapController.update(@Valid OfferActionMap offerActionMap, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, offerActionMap);
            return "offeractionmaps/update";
        }
        uiModel.asMap().clear();
        offerActionMap.merge();
        return "redirect:/offeractionmaps/" + encodeUrlPathSegment(offerActionMap.getOfferActionMapId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{offerActionMapId}", params = "form", produces = "text/html")
    public String OfferActionMapController.updateForm(@PathVariable("offerActionMapId") Long offerActionMapId, Model uiModel) {
        populateEditForm(uiModel, OfferActionMap.findOfferActionMap(offerActionMapId));
        return "offeractionmaps/update";
    }
    
    @RequestMapping(value = "/{offerActionMapId}", method = RequestMethod.DELETE, produces = "text/html")
    public String OfferActionMapController.delete(@PathVariable("offerActionMapId") Long offerActionMapId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        OfferActionMap offerActionMap = OfferActionMap.findOfferActionMap(offerActionMapId);
        offerActionMap.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/offeractionmaps";
    }
    
    void OfferActionMapController.populateEditForm(Model uiModel, OfferActionMap offerActionMap) {
        uiModel.addAttribute("offerActionMap", offerActionMap);
        uiModel.addAttribute("actionses", Actions.findAllActionses());
        uiModel.addAttribute("offers", Offer.findAllOffers());
    }
    
    String OfferActionMapController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
