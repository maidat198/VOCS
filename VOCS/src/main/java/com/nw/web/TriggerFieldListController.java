package com.nw.web;
import com.nw.domain.TriggerFieldList;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/triggerfieldlists")
@Controller
@RooWebScaffold(path = "triggerfieldlists", formBackingObject = TriggerFieldList.class)
public class TriggerFieldListController {
}
