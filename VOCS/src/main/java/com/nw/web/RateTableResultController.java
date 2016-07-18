package com.nw.web;
import com.nw.domain.RateTableResult;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ratetableresults")
@Controller
@RooWebScaffold(path = "ratetableresults", formBackingObject = RateTableResult.class)
public class RateTableResultController {
}
