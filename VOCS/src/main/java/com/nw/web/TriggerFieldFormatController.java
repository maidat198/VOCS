package com.nw.web;
import com.nw.domain.TriggerFieldFormat;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/triggerfieldformats")
@Controller
@RooWebScaffold(path = "triggerfieldformats", formBackingObject = TriggerFieldFormat.class)
public class TriggerFieldFormatController {
}
