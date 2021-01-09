package com.fwll.post.service.impl;

import com.fwll.post.dao.PostMapper;
import com.fwll.post.domain.Post;
import com.fwll.post.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lomofu
 * @desc
 * @create 09/Jan/2021 20:59
 */
@Service
public class PostServiceImpl implements PostService {

    private final PostMapper postMapper;

    @Autowired
    public PostServiceImpl(PostMapper postMapper) {
        this.postMapper = postMapper;
    }

    @Override
    public List<Post> getPostList() {
        return postMapper.selectAll();
    }
}
