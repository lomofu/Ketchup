package com.fwll.account.controller;

import com.fwll.account.domain.Account;
import com.fwll.account.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author lomofu
 * @desc
 * @create 08/Jan/2021 17:40
 */
@RestController
@RequestMapping(path = "/api/account")
public class AccountController {

  private final AccountService accountService;

  @Autowired
  public AccountController(AccountService accountService) {
    this.accountService = accountService;
  }

  @GetMapping("/all")
  public List<Account> getAccount() {
    return accountService.getAccountList();
  }
}
