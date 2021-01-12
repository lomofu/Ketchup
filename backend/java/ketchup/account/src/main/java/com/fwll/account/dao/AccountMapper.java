package com.fwll.account.dao;

import com.fwll.account.domain.Account;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;

/**
 * @author lomofu
 */
@Repository
public interface AccountMapper extends Mapper<Account> {
}