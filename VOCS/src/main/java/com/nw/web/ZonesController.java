package com.nw.web;
import com.nw.domain.Zones;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/zoneses")
@Controller
@RooWebScaffold(path = "zoneses", formBackingObject = Zones.class)
public class ZonesController {
}
