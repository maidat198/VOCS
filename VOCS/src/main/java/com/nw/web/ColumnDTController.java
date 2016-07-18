package com.nw.web;
import com.nw.domain.ColumnDT;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/columndts")
@Controller
@RooWebScaffold(path = "columndts", formBackingObject = ColumnDT.class)
public class ColumnDTController {
}
