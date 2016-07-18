package com.nw.web;
import com.nw.domain.PriceComponent;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/pricecomponents")
@Controller
@RooWebScaffold(path = "pricecomponents", formBackingObject = PriceComponent.class)
public class PriceComponentController {
}
