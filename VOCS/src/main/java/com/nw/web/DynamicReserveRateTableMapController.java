package com.nw.web;
import com.nw.domain.DynamicReserveRateTableMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dynamicreserveratetablemaps")
@Controller
@RooWebScaffold(path = "dynamicreserveratetablemaps", formBackingObject = DynamicReserveRateTableMap.class)
public class DynamicReserveRateTableMapController {
}
