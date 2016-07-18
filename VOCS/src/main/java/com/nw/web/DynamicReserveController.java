package com.nw.web;
import com.nw.domain.DynamicReserve;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/dynamicreserves")
@Controller
@RooWebScaffold(path = "dynamicreserves", formBackingObject = DynamicReserve.class)
public class DynamicReserveController {
}
