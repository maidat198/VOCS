package com.nw.web;
import com.nw.domain.OfferActionMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/offeractionmaps")
@Controller
@RooWebScaffold(path = "offeractionmaps", formBackingObject = OfferActionMap.class)
public class OfferActionMapController {
}
