package com.nw.web;
import com.nw.domain.TriggerMsg;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/triggermsgs")
@Controller
@RooWebScaffold(path = "triggermsgs", formBackingObject = TriggerMsg.class)
public class TriggerMsgController {
}
