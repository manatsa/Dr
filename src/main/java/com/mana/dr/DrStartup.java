package com.mana.dr;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
/**
 * Created by JavaDeveloperZone on 27-07-2017.
 */
@Component
@Order(value = 1)
public class DrStartup implements ApplicationRunner {
    @Override
    public void run(ApplicationArguments applicationArguments) throws Exception {
        System.err.println("++++++++++++++  init application +++++++++++++++++++++++");
    }
}