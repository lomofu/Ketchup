package com.fwll.main.config;

import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.ConfigurableEnvironment;

/**
 * @author lomofu
 * @desc app configuration file
 * @create 08/Jan/2021 00:30
 */
@Configuration
@ConfigurationProperties(prefix = "app")
@Setter
@Getter
@Slf4j
public class AppConfiguration {
  private String env;

  private final ConfigurableEnvironment environment;

  @Autowired
  public AppConfiguration(ConfigurableEnvironment environment) {
    this.environment = environment;
  }

  public void printfInfo() {
    log.info("======================================");
    log.info("   System: {}", System.getProperty("os.name"));
    log.info("   Name: {}", environment.getProperty("spring.application.name"));
    log.info("   Environment: {}", getEnv());
    log.info("======================================");
  }
}
