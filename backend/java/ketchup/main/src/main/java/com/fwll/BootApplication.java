package com.fwll;

import com.fwll.common.utils.SpringContextHelper;
import com.fwll.main.config.AppConfiguration;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Import;
import tk.mybatis.spring.annotation.MapperScan;

/**
 * @author lomofu
 * @desc boot class
 * @create 08/Jan/2021 00:12
 */
@SpringBootApplication
@MapperScan(basePackages = "com.fwll.*.dao")
@Import(value = SpringContextHelper.class)
public class BootApplication {
  public static void main(String[] args) {
    SpringApplication.run(BootApplication.class, args);
    SpringContextHelper.getApplicationContext().getBean(AppConfiguration.class).printfInfo();
  }
}
