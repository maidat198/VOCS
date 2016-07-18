package com.nw.web;
import com.nw.domain.DecisionTable;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/decisiontables")
@Controller
@RooWebScaffold(path = "decisiontables", formBackingObject = DecisionTable.class)
public class DecisionTableController {
}
