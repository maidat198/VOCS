package com.nw.web;
import com.nw.domain.NormalizerNormParamMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/normalizernormparammaps")
@Controller
@RooWebScaffold(path = "normalizernormparammaps", formBackingObject = NormalizerNormParamMap.class)
public class NormalizerNormParamMapController {
}
