package com.financetracker.account;


import com.financetracker.user.User;
import jakarta.persistence.*;

import java.util.UUID;

@Entity
@Table(name = "account")
public class Account {


    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "account_id")
    private UUID id;

    @ManyToOne
    @JoinColumn(name="account_user")
    private User user;

    @Column(name="account_name", nullable = false)
    private String name;

    @Column(name="account_type", nullable = false)
    @Enumerated(EnumType.STRING)
    private AccountType accountType;

    @Column(name = "account_balance", nullable = false)
    private double balance = 0.0;

    public Account(
            User user,
            String name,
            AccountType accountType,
            double balance
    ) {
        this.user = user;
        this.name = name;
        this.accountType = accountType;
        this.balance = balance;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public AccountType getAccountType() {
        return accountType;
    }

    public void setAccountType(AccountType accountType) {
        this.accountType = accountType;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    @Override
    public String toString() {
        return "Account{" +
                "user=" + user +
                ", name='" + name + '\'' +
                ", accountType=" + accountType +
                ", balance=" + balance +
                '}';
    }
}
