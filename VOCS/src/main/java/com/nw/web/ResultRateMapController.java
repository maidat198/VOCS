package com.nw.web;
import com.nw.domain.ResultRateMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/resultratemaps")
@Controller
@RooWebScaffold(path = "resultratemaps", formBackingObject = ResultRateMap.class)
public class ResultRateMapController {
}
