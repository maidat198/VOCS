package com.nw.web;
import com.nw.domain.BillingCycleType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/billingcycletypes")
@Controller
@RooWebScaffold(path = "billingcycletypes", formBackingObject = BillingCycleType.class)
public class BillingCycleTypeController {
}
