package com.nw.web;
import com.nw.domain.SortPriceComponent;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/sortpricecomponents")
@Controller
@RooWebScaffold(path = "sortpricecomponents", formBackingObject = SortPriceComponent.class)
public class SortPriceComponentController {
}
