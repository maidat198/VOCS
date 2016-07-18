package com.nw.web;
import com.nw.domain.ColumnDecisionTableMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/columndecisiontablemaps")
@Controller
@RooWebScaffold(path = "columndecisiontablemaps", formBackingObject = ColumnDecisionTableMap.class)
public class ColumnDecisionTableMapController {
}
