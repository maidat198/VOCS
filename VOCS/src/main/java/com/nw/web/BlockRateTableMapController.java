package com.nw.web;
import com.nw.domain.BlockRateTableMap;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/blockratetablemaps")
@Controller
@RooWebScaffold(path = "blockratetablemaps", formBackingObject = BlockRateTableMap.class)
public class BlockRateTableMapController {
}
