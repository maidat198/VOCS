package com.nw.web;
import com.nw.domain.AcmBillCycle;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/acmbillcycles")
@Controller
@RooWebScaffold(path = "acmbillcycles", formBackingObject = AcmBillCycle.class)
public class AcmBillCycleController {
}
