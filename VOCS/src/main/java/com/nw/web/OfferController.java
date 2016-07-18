package com.nw.web;
import com.nw.domain.Offer;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/offers")
@Controller
@RooWebScaffold(path = "offers", formBackingObject = Offer.class)
public class OfferController {
}
