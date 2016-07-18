package com.nw.web;
import com.nw.domain.NormalizerNormValueMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/normalizernormvaluemaps")
@Controller
@RooWebScaffold(path = "normalizernormvaluemaps", formBackingObject = NormalizerNormValueMap.class)
public class NormalizerNormValueMapController {
}
