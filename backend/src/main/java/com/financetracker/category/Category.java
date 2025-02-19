package com.financetracker.category;


import jakarta.persistence.*;
import org.antlr.v4.runtime.misc.NotNull;

import java.util.UUID;

@Entity
@Table(name="category")
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name="category_id")
    private UUID id;

    @Column(name="category_name", nullable = false, unique = true)
    private String name;

    @Column(name="category_type", nullable = false)
    @Enumerated(EnumType.STRING)
    private CategoryType expense;


    public Category(
            String name,
            CategoryType expense
    ) {
        this.name = name;
        this.expense = expense;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public CategoryType getExpense() {
        return expense;
    }

    public void setExpense(CategoryType expense) {
        this.expense = expense;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }
}
