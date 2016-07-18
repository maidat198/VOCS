package com.nw.web;
import com.nw.domain.TriggerType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/triggertypes")
@Controller
@RooWebScaffold(path = "triggertypes", formBackingObject = TriggerType.class)
public class TriggerTypeController {
}
