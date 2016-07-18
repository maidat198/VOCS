package com.nw.web;
import com.nw.domain.EventActionTypeMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/eventactiontypemaps")
@Controller
@RooWebScaffold(path = "eventactiontypemaps", formBackingObject = EventActionTypeMap.class)
public class EventActionTypeMapController {
}
