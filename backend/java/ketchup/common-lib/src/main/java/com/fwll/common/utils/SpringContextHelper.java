package com.fwll.common.utils;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

import java.util.Objects;

/**
 * @author lomofu
 * @desc
 * @create 08/Jan/2021 00:36
 */
@Component
public class SpringContextHelper implements ApplicationContextAware {
  private static ApplicationContext context = null;

  public static ApplicationContext getApplicationContext() {
    return context;
  }

  @Override
  public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
    if (Objects.isNull(context)) {
      context = applicationContext;
    }
  }
}
