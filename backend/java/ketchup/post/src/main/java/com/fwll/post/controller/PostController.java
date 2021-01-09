package com.fwll.post.controller;

import com.fwll.post.domain.Post;
import com.fwll.post.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author lomofu
 * @desc
 * @create 09/Jan/2021 21:05
 */

@RestController
@RequestMapping(path = "/api/post")
public class PostController {
    private final PostService postService;

    @Autowired
    public PostController(PostService postService) {
        this.postService = postService;
    }

    @GetMapping("/all")
    public List<Post> getAllPost(){
        return postService.getPostList();
    }

}
