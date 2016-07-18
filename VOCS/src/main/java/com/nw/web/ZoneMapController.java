package com.nw.web;
import com.nw.domain.ZoneMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/zonemaps")
@Controller
@RooWebScaffold(path = "zonemaps", formBackingObject = ZoneMap.class)
public class ZoneMapController {
}
