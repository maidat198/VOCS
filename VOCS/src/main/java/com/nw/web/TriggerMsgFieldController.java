package com.nw.web;
import com.nw.domain.TriggerMsgField;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/triggermsgfields")
@Controller
@RooWebScaffold(path = "triggermsgfields", formBackingObject = TriggerMsgField.class)
public class TriggerMsgFieldController {
}
