package com.nw.web;
import com.nw.domain.RateTable;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/ratetables")
@Controller
@RooWebScaffold(path = "ratetables", formBackingObject = RateTable.class)
public class RateTableController {
}
