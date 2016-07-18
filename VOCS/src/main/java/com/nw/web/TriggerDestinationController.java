package com.nw.web;
import com.nw.domain.TriggerDestination;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/triggerdestinations")
@Controller
@RooWebScaffold(path = "triggerdestinations", formBackingObject = TriggerDestination.class)
public class TriggerDestinationController {
}
