package com.nw.web;
import com.nw.domain.RowDT;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/rowdts")
@Controller
@RooWebScaffold(path = "rowdts", formBackingObject = RowDT.class)
public class RowDTController {
}
