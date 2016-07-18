package com.nw.web;
import com.nw.domain.MapACMBalBal;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/mapacmbalbals")
@Controller
@RooWebScaffold(path = "mapacmbalbals", formBackingObject = MapACMBalBal.class)
public class MapACMBalBalController {
}
