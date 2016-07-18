package com.nw.web;
import com.nw.domain.PriceComponentBlockMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/pricecomponentblockmaps")
@Controller
@RooWebScaffold(path = "pricecomponentblockmaps", formBackingObject = PriceComponentBlockMap.class)
public class PriceComponentBlockMapController {
}
