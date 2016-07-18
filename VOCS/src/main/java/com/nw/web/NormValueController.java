package com.nw.web;
import com.nw.domain.NormValue;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/normvalues")
@Controller
@RooWebScaffold(path = "normvalues", formBackingObject = NormValue.class)
public class NormValueController {
}
