package com.nw.web;
import com.nw.domain.EventActionMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/eventactionmaps")
@Controller
@RooWebScaffold(path = "eventactionmaps", formBackingObject = EventActionMap.class)
public class EventActionMapController {
}
