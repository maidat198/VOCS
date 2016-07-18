package com.nw.web;
import com.nw.domain.ActionPriceComponentMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/actionpricecomponentmaps")
@Controller
@RooWebScaffold(path = "actionpricecomponentmaps", formBackingObject = ActionPriceComponentMap.class)
public class ActionPriceComponentMapController {
}
