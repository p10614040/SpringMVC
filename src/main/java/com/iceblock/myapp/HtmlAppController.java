/*
 * Copyright (c) 2016. Iceblock.
 */

package com.iceblock.myapp;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * htmlApp
 *
 * @author YanLiang
 * @date 2016-1-12.
 */
@Controller
@RequestMapping(value = "htmlApp")
public class HtmlAppController {

    @RequestMapping(value = "examples3")
    public String getExamples3() {
        return "htmlApp/examples3";
    }
}
