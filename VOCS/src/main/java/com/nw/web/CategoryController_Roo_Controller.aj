// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nw.web;

import com.nw.domain.Category;
import com.nw.web.CategoryController;
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

privileged aspect CategoryController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String CategoryController.create(@Valid Category category, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, category);
            return "categorys/create";
        }
        uiModel.asMap().clear();
        category.persist();
        return "redirect:/categorys/" + encodeUrlPathSegment(category.getCategoryId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String CategoryController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Category());
        return "categorys/create";
    }
    
    @RequestMapping(value = "/{categoryId}", produces = "text/html")
    public String CategoryController.show(@PathVariable("categoryId") Long categoryId, Model uiModel) {
        uiModel.addAttribute("category", Category.findCategory(categoryId));
        uiModel.addAttribute("itemId", categoryId);
        return "categorys/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String CategoryController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("categorys", Category.findCategoryEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Category.countCategorys() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("categorys", Category.findAllCategorys(sortFieldName, sortOrder));
        }
        return "categorys/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String CategoryController.update(@Valid Category category, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, category);
            return "categorys/update";
        }
        uiModel.asMap().clear();
        category.merge();
        return "redirect:/categorys/" + encodeUrlPathSegment(category.getCategoryId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{categoryId}", params = "form", produces = "text/html")
    public String CategoryController.updateForm(@PathVariable("categoryId") Long categoryId, Model uiModel) {
        populateEditForm(uiModel, Category.findCategory(categoryId));
        return "categorys/update";
    }
    
    @RequestMapping(value = "/{categoryId}", method = RequestMethod.DELETE, produces = "text/html")
    public String CategoryController.delete(@PathVariable("categoryId") Long categoryId, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Category category = Category.findCategory(categoryId);
        category.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/categorys";
    }
    
    void CategoryController.populateEditForm(Model uiModel, Category category) {
        uiModel.addAttribute("category", category);
    }
    
    String CategoryController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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