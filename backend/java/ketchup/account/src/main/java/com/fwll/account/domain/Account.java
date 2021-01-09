package com.fwll.account.domain;

import com.fwll.common.utils.UUIDHelper;
import lombok.Getter;
import lombok.Setter;
import tk.mybatis.mapper.annotation.KeySql;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Setter
@Getter
@Table(name = "account")
public class Account {
  /** id */
  @Id
  @KeySql(genId = UUIDHelper.class)
  private String id;

  /** name */
  private String name;

  /** email */
  private String email;

  /** phone number */
  private String phone;

  /** gender */
  private Boolean gender;

  /** avatar */
  @Column(name = "avatar_url")
  private String avatarUrl;

  /** create time */
  @Column(name = "create_time")
  private Date createTime;

  /** password */
  private String password;

  /** default language */
  private String language;

  /** occupation */
  private String position;

  /** preference setting */
  @Column(name = "preference_id")
  private String preferenceId;

  /** is active or not */
  @Column(name = "is_active")
  private Boolean isActive;
}
