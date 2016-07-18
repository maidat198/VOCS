package com.nw.web;
import com.nw.domain.Normalizer;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/normalizers")
@Controller
@RooWebScaffold(path = "normalizers", formBackingObject = Normalizer.class)
public class NormalizerController {
}
