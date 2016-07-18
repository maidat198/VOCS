package com.nw.web;
import com.nw.domain.ReserveInfoActionMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/reserveinfoactionmaps")
@Controller
@RooWebScaffold(path = "reserveinfoactionmaps", formBackingObject = ReserveInfoActionMap.class)
public class ReserveInfoActionMapController {
}
