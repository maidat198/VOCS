package com.nw.web;
import com.nw.domain.TriggerEventType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/triggereventtypes")
@Controller
@RooWebScaffold(path = "triggereventtypes", formBackingObject = TriggerEventType.class)
public class TriggerEventTypeController {
}
