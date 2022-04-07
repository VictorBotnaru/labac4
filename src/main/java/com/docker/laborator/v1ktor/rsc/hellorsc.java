package com.docker.laborator.v1ktor.rsc;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rest/docker/hello")
public class hellorsc {
    @GetMapping
    public String hello () {
        return "Salut V1ktor";
    }
}
