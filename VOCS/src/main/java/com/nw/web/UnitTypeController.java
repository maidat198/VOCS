package com.nw.web;
import com.nw.domain.UnitType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/unittypes")
@Controller
@RooWebScaffold(path = "unittypes", formBackingObject = UnitType.class)
public class UnitTypeController {
}
