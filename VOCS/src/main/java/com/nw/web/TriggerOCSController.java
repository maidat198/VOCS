package com.nw.web;
import com.nw.domain.TriggerOCS;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/triggerocss")
@Controller
@RooWebScaffold(path = "triggerocss", formBackingObject = TriggerOCS.class)
public class TriggerOCSController {
}
