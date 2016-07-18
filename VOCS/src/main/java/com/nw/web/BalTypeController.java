package com.nw.web;
import com.nw.domain.BalType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/baltypes")
@Controller
@RooWebScaffold(path = "baltypes", formBackingObject = BalType.class)
public class BalTypeController {
}
