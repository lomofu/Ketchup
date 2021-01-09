package com.fwll.account.service.impl;

import com.fwll.account.dao.AccountMapper;
import com.fwll.account.domain.Account;
import com.fwll.account.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author lomofu
 * @desc
 * @create 08/Jan/2021 20:14
 */
@Service
public class AccountServiceImpl implements AccountService {
    private final AccountMapper accountMapper;

    @Autowired
    public AccountServiceImpl(AccountMapper accountMapper) {
        this.accountMapper = accountMapper;
    }

    @Override
    public List<Account> getAccountList() {
        return accountMapper.selectAll();
    }
}
