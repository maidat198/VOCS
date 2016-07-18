package com.nw.web;
import com.nw.domain.Block;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/blocks")
@Controller
@RooWebScaffold(path = "blocks", formBackingObject = Block.class)
public class BlockController {
}
