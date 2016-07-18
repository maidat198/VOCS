package com.nw.web;
import com.nw.domain.ZoneData;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/zonedatas")
@Controller
@RooWebScaffold(path = "zonedatas", formBackingObject = ZoneData.class)
public class ZoneDataController {
}
