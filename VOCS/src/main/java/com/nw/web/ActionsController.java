package com.nw.web;
import com.nw.domain.Actions;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/actionses")
@Controller
@RooWebScaffold(path = "actionses", formBackingObject = Actions.class)
public class ActionsController {
}
