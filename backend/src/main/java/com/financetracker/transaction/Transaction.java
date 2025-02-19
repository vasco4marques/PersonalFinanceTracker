package com.financetracker.transaction;

import com.financetracker.account.Account;
import com.financetracker.category.Category;
import com.financetracker.user.User;
import jakarta.persistence.*;

import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(name="transaction")
public class Transaction {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name="transaction_id")
    private UUID id;

    @ManyToOne
    @JoinColumn(name="transaction_user", nullable = false)
    private User user;

    @ManyToOne
    @JoinColumn(name="transaction_category", nullable = false)
    private Category category;

    @ManyToOne
    @JoinColumn(name="transaction_account", nullable = false)
    private Account account;

    @Column(name="transaction_value", nullable = false)
    private double value;

    @Column(name = "transaction_date")
    private LocalDateTime date;

    @Column(name = "transaction_description")
    private String description;

    public Transaction(
            User user,
            Account account,
            Category category,
            double value,
            LocalDateTime date,
            String description
    ) {
        this.user = user;
        this.account = account;
        this.category = category;
        this.value = value;
        this.date = date;
        this.description = description;
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

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public double getValue() {
        return value;
    }

    public void setValue(double value) {
        this.value = value;
    }

    public LocalDateTime getDate() {
        return date;
    }

    public void setDate(LocalDateTime date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
