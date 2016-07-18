package com.nw.web;
import com.nw.domain.MapShareBalBal;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/mapsharebalbals")
@Controller
@RooWebScaffold(path = "mapsharebalbals", formBackingObject = MapShareBalBal.class)
public class MapShareBalBalController {
}
