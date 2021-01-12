package com.fwll.post.dao;

import com.fwll.post.domain.Post;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

/**
 * @author lomofu
 */
@Repository
public interface PostMapper extends Mapper<Post> {
}