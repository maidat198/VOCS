package com.nw.web;
import com.nw.domain.SortPriceRateTableMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/sortpriceratetablemaps")
@Controller
@RooWebScaffold(path = "sortpriceratetablemaps", formBackingObject = SortPriceRateTableMap.class)
public class SortPriceRateTableMapController {
}
