package com.nw.web;
import com.nw.domain.GeoHomeZone;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/geohomezones")
@Controller
@RooWebScaffold(path = "geohomezones", formBackingObject = GeoHomeZone.class)
public class GeoHomeZoneController {
}
