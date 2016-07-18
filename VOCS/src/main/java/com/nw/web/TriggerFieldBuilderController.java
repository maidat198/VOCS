package com.nw.web;
import com.nw.domain.TriggerFieldBuilder;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/triggerfieldbuilders")
@Controller
@RooWebScaffold(path = "triggerfieldbuilders", formBackingObject = TriggerFieldBuilder.class)
public class TriggerFieldBuilderController {
}
