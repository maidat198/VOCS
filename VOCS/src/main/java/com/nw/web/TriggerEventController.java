package com.nw.web;
import com.nw.domain.TriggerEvent;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/triggerevents")
@Controller
@RooWebScaffold(path = "triggerevents", formBackingObject = TriggerEvent.class)
public class TriggerEventController {
}
