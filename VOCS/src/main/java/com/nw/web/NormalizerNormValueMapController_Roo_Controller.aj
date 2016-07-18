// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.NormValue;
import com.nw.domain.Normalizer;
import com.nw.domain.NormalizerNormValueMap;
import com.nw.web.NormalizerNormValueMapController;
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

privileged aspect NormalizerNormValueMapController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String NormalizerNormValueMapController.create(@Valid NormalizerNormValueMap normalizerNormValueMap, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, normalizerNormValueMap);
            return "normalizernormvaluemaps/create";
        }
        uiModel.asMap().clear();
        normalizerNormValueMap.persist();
        return "redirect:/normalizernormvaluemaps/" + encodeUrlPathSegment(normalizerNormValueMap.getNormalizerNormValueMapId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String NormalizerNormValueMapController.createForm(Model uiModel) {
        populateEditForm(uiModel, new NormalizerNormValueMap());
        return "normalizernormvaluemaps/create";
    }
    
    @RequestMapping(value = "/{normalizerNormValueMapId}", produces = "text/html")
    public String NormalizerNormValueMapController.show(@PathVariable("normalizerNormValueMapId") Long normalizerNormValueMapId, Model uiModel) {
        uiModel.addAttribute("normalizernormvaluemap", NormalizerNormValueMap.findNormalizerNormValueMap(normalizerNormValueMapId));
        uiModel.addAttribute("itemId", normalizerNormValueMapId);
        return "normalizernormvaluemaps/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String NormalizerNormValueMapController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("normalizernormvaluemaps", NormalizerNormValueMap.findNormalizerNormValueMapEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) NormalizerNormValueMap.countNormalizerNormValueMaps() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("normalizernormvaluemaps", NormalizerNormValueMap.findAllNormalizerNormValueMaps(sortFieldName, sortOrder));
        }
        return "normalizernormvaluemaps/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String NormalizerNormValueMapController.update(@Valid NormalizerNormValueMap normalizerNormValueMap, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, normalizerNormValueMap);
            return "normalizernormvaluemaps/update";
        }
        uiModel.asMap().clear();
        normalizerNormValueMap.merge();
        return "redirect:/normalizernormvaluemaps/" + encodeUrlPathSegment(normalizerNormValueMap.getNormalizerNormValueMapId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{normalizerNormValueMapId}", params = "form", produces = "text/html")
    public String NormalizerNormValueMapController.updateForm(@PathVariable("normalizerNormValueMapId") Long normalizerNormValueMapId, Model uiModel) {
        populateEditForm(uiModel, NormalizerNormValueMap.findNormalizerNormValueMap(normalizerNormValueMapId));
        return "normalizernormvaluemaps/update";
    }
    
    @RequestMapping(value = "/{normalizerNormValueMapId}", method = RequestMethod.DELETE, produces = "text/html")
    public String NormalizerNormValueMapController.delete(@PathVariable("normalizerNormValueMapId") Long normalizerNormValueMapId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        NormalizerNormValueMap normalizerNormValueMap = NormalizerNormValueMap.findNormalizerNormValueMap(normalizerNormValueMapId);
        normalizerNormValueMap.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/normalizernormvaluemaps";
    }
    
    void NormalizerNormValueMapController.populateEditForm(Model uiModel, NormalizerNormValueMap normalizerNormValueMap) {
        uiModel.addAttribute("normalizerNormValueMap", normalizerNormValueMap);
        uiModel.addAttribute("normvalues", NormValue.findAllNormValues());
        uiModel.addAttribute("normalizers", Normalizer.findAllNormalizers());
    }
    
    String NormalizerNormValueMapController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
