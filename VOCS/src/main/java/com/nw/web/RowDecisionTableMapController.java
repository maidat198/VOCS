package com.nw.web;
import com.nw.domain.RowDecisionTableMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/rowdecisiontablemaps")
@Controller
@RooWebScaffold(path = "rowdecisiontablemaps", formBackingObject = RowDecisionTableMap.class)
public class RowDecisionTableMapController {
}
