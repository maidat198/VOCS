package com.nw.web;
import com.nw.domain.PriceRateMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/priceratemaps")
@Controller
@RooWebScaffold(path = "priceratemaps", formBackingObject = PriceRateMap.class)
public class PriceRateMapController {
}
