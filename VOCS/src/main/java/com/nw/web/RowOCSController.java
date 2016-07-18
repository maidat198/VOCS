package com.nw.web;
import com.nw.domain.RowOCS;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/rowocss")
@Controller
@RooWebScaffold(path = "rowocss", formBackingObject = RowOCS.class)
public class RowOCSController {
}
