package com.fwll.common.utils;

import tk.mybatis.mapper.genid.GenId;

import java.util.UUID;

/**
 * @author lomofu
 * @desc UUID generator
 * @create 08/Jan/2021 18:02
 */
public class UUIDHelper implements GenId<String> {

  public static String getUUID() {
    return UUID.randomUUID().toString().replace("-", "");
  }

  @Override
  public String genId(String s, String s1) {
    return getUUID();
  }
}
