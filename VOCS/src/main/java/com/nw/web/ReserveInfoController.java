package com.nw.web;
import com.nw.domain.ReserveInfo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/reserveinfoes")
@Controller
@RooWebScaffold(path = "reserveinfoes", formBackingObject = ReserveInfo.class)
public class ReserveInfoController {
}
