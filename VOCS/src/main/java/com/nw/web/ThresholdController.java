package com.nw.web;
import com.nw.domain.Threshold;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/thresholds")
@Controller
@RooWebScaffold(path = "thresholds", formBackingObject = Threshold.class)
public class ThresholdController {
}
