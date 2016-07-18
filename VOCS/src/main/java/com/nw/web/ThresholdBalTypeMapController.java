package com.nw.web;
import com.nw.domain.ThresholdBalTypeMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/thresholdbaltypemaps")
@Controller
@RooWebScaffold(path = "thresholdbaltypemaps", formBackingObject = ThresholdBalTypeMap.class)
public class ThresholdBalTypeMapController {
}
