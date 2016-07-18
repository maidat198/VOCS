package com.nw.web;
import com.nw.domain.ActionType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/actiontypes")
@Controller
@RooWebScaffold(path = "actiontypes", formBackingObject = ActionType.class)
public class ActionTypeController {
}
