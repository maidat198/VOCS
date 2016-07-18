package com.nw.web;
import com.nw.domain.Parameters;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/parameterses")
@Controller
@RooWebScaffold(path = "parameterses", formBackingObject = Parameters.class)
public class ParametersController {
}
