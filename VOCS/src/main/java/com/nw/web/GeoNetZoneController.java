package com.nw.web;
import com.nw.domain.GeoNetZone;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/geonetzones")
@Controller
@RooWebScaffold(path = "geonetzones", formBackingObject = GeoNetZone.class)
public class GeoNetZoneController {
}
