package com.fwll.main;

import com.fwll.common.utils.SpringContextHelper;
import com.fwll.main.config.AppConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;

/**
 * @author lomofu
 * @desc boot class
 * @create 08/Jan/2021 00:12
 */
@SpringBootApplication
@Import(value = SpringContextHelper.class)
public class BootApplication {
  public static void main(String[] args) {
    SpringApplication.run(BootApplication.class, args);
    SpringContextHelper.getApplicationContext().getBean(AppConfiguration.class).printfInfo();
  }
}
