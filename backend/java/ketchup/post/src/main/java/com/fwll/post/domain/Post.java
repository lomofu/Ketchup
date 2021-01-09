package com.fwll.post.domain;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Setter
@Getter
@Table(name = "post")
public class Post {
  /** post id */
  @Id
  @Column(name = "post_id")
  private String postId;

  @Column(name = "post_title")
  private String postTitle;

  @Column(name = "post_create_time")
  private Date postCreateTime;

  @Column(name = "post_update_time")
  private Date postUpdateTime;

  @Column(name = "post_size")
  private String postSize;

  @Column(name = "post_mark")
  private Integer postMark;

  @Column(name = "post_errors")
  private Integer postErrors;

  @Column(name = "user_id")
  private String userId;

  @Column(name = "is_active")
  private Boolean isActive;

  @Column(name = "post_content")
  private String postContent;

  @Column(name = "post_extra")
  private String postExtra;
}
