// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.NormParam;
import com.nw.domain.Normalizer;
import com.nw.domain.NormalizerNormParamMap;
import com.nw.web.NormalizerNormParamMapController;
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

privileged aspect NormalizerNormParamMapController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String NormalizerNormParamMapController.create(@Valid NormalizerNormParamMap normalizerNormParamMap, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, normalizerNormParamMap);
            return "normalizernormparammaps/create";
        }
        uiModel.asMap().clear();
        normalizerNormParamMap.persist();
        return "redirect:/normalizernormparammaps/" + encodeUrlPathSegment(normalizerNormParamMap.getNormalizerNormParamMapId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String NormalizerNormParamMapController.createForm(Model uiModel) {
        populateEditForm(uiModel, new NormalizerNormParamMap());
        return "normalizernormparammaps/create";
    }
    
    @RequestMapping(value = "/{normalizerNormParamMapId}", produces = "text/html")
    public String NormalizerNormParamMapController.show(@PathVariable("normalizerNormParamMapId") Long normalizerNormParamMapId, Model uiModel) {
        uiModel.addAttribute("normalizernormparammap", NormalizerNormParamMap.findNormalizerNormParamMap(normalizerNormParamMapId));
        uiModel.addAttribute("itemId", normalizerNormParamMapId);
        return "normalizernormparammaps/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String NormalizerNormParamMapController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("normalizernormparammaps", NormalizerNormParamMap.findNormalizerNormParamMapEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) NormalizerNormParamMap.countNormalizerNormParamMaps() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("normalizernormparammaps", NormalizerNormParamMap.findAllNormalizerNormParamMaps(sortFieldName, sortOrder));
        }
        return "normalizernormparammaps/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String NormalizerNormParamMapController.update(@Valid NormalizerNormParamMap normalizerNormParamMap, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, normalizerNormParamMap);
            return "normalizernormparammaps/update";
        }
        uiModel.asMap().clear();
        normalizerNormParamMap.merge();
        return "redirect:/normalizernormparammaps/" + encodeUrlPathSegment(normalizerNormParamMap.getNormalizerNormParamMapId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{normalizerNormParamMapId}", params = "form", produces = "text/html")
    public String NormalizerNormParamMapController.updateForm(@PathVariable("normalizerNormParamMapId") Long normalizerNormParamMapId, Model uiModel) {
        populateEditForm(uiModel, NormalizerNormParamMap.findNormalizerNormParamMap(normalizerNormParamMapId));
        return "normalizernormparammaps/update";
    }
    
    @RequestMapping(value = "/{normalizerNormParamMapId}", method = RequestMethod.DELETE, produces = "text/html")
    public String NormalizerNormParamMapController.delete(@PathVariable("normalizerNormParamMapId") Long normalizerNormParamMapId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        NormalizerNormParamMap normalizerNormParamMap = NormalizerNormParamMap.findNormalizerNormParamMap(normalizerNormParamMapId);
        normalizerNormParamMap.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/normalizernormparammaps";
    }
    
    void NormalizerNormParamMapController.populateEditForm(Model uiModel, NormalizerNormParamMap normalizerNormParamMap) {
        uiModel.addAttribute("normalizerNormParamMap", normalizerNormParamMap);
        uiModel.addAttribute("normparams", NormParam.findAllNormParams());
        uiModel.addAttribute("normalizers", Normalizer.findAllNormalizers());
    }
    
    String NormalizerNormParamMapController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
