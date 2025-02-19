package com.financetracker.budget;

import com.financetracker.category.Category;
import com.financetracker.user.User;
import jakarta.persistence.*;

import java.time.LocalDate;
import java.util.UUID;

@Entity
@Table(name = "budget")
public class Budget {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @ManyToOne
    @JoinColumn(name="budget_user", nullable = false)
    private User user;

    @Column(name = "budget_type", nullable = false)
    @Enumerated(EnumType.STRING)
    private BudgetType budgetType;

    @ManyToOne
    @JoinColumn(name="budget_category")
    private Category category;

    @Column(name="budget_amount", nullable = false)
    private double amount;

    @Column(name="budget_startDate")
    private LocalDate startDate;

    @Column(name="budget_finishDate")
    private LocalDate finishDate;

    public Budget(
            User user,
            Category category,
            double amount,
            LocalDate startDate,
            LocalDate finishDate
    ) {
        this.user = user;
        this.category = category;
        this.amount = amount;
        this.startDate = startDate;
        this.finishDate = finishDate;
    }

    public Budget(
            User user,
            Category category,
            double amount
    ) {
        this.user = user;
        this.category = category;
        this.amount = amount;
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

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getFinishDate() {
        return finishDate;
    }

    public void setFinishDate(LocalDate finishDate) {
        this.finishDate = finishDate;
    }
}
