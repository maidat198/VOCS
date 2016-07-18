package com.nw.web;
import com.nw.domain.CalcUnit;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/calcunits")
@Controller
@RooWebScaffold(path = "calcunits", formBackingObject = CalcUnit.class)
public class CalcUnitController {
}
