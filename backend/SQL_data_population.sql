INSERT INTO users (user_id, user_username, user_email, user_password) VALUES
  ('550e8400-e29b-41d4-a716-446655440000', 'alice_wonder', 'alice@example.com', 'hashed_password_1'),
  ('550e8400-e29b-41d4-a716-446655440001', 'bob_builder', 'bob@example.com', 'hashed_password_2'),
  ('550e8400-e29b-41d4-a716-446655440002', 'charlie_delta', 'charlie@example.com', 'hashed_password_3'),
  ('550e8400-e29b-41d4-a716-446655440003', 'diana_prince', 'diana@example.com', 'hashed_password_4'),
  ('550e8400-e29b-41d4-a716-446655440004', 'eve_online', 'eve@example.com', 'hashed_password_5');


INSERT INTO account (account_id, account_user, account_name, account_type, account_balance) VALUES
  -- Alice's Accounts
  ('111e8400-e29b-41d4-a716-446655440000', '550e8400-e29b-41d4-a716-446655440000', 'Alice Bank', 'BANK', 3000.00),
  ('111e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440000', 'Alice Savings', 'SAVINGS', 5000.00),
  ('111e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440000', 'Alice Wallet', 'WALLET', 150.00),

  -- Bob's Accounts
  ('111e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440001', 'Bob Bank', 'BANK', 2000.00),
  ('111e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440001', 'Bob Wallet', 'WALLET', 250.00),
  ('111e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440001', 'Bob Savings', 'SAVINGS', 7000.00),

  -- Charlie's Accounts
  ('111e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440002', 'Charlie Bank', 'BANK', 4000.00),
  ('111e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440002', 'Charlie Savings', 'SAVINGS', 2000.00),

  -- Diana's Accounts
  ('111e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440003', 'Diana Bank', 'BANK', 3500.00),
  ('111e8400-e29b-41d4-a716-446655440009', '550e8400-e29b-41d4-a716-446655440003', 'Diana Savings', 'SAVINGS', 1000.00),

  -- Eve's Accounts
  ('111e8400-e29b-41d4-a716-446655440010', '550e8400-e29b-41d4-a716-446655440004', 'Eve Bank', 'BANK', 6000.00),
  ('111e8400-e29b-41d4-a716-446655440011', '550e8400-e29b-41d4-a716-446655440004', 'Eve Wallet', 'WALLET', 80.00);

  INSERT INTO category (category_id, category_name, category_type) VALUES
  -- Income Categories
  ('222e8400-e29b-41d4-a716-446655440000', 'Salary', 'INCOME'),
  ('222e8400-e29b-41d4-a716-446655440001', 'Freelance', 'INCOME'),
  ('222e8400-e29b-41d4-a716-446655440002', 'Investments', 'INCOME'),
  ('222e8400-e29b-41d4-a716-446655440003', 'Gifts', 'INCOME'),

  -- Expense Categories
  ('222e8400-e29b-41d4-a716-446655440004', 'Groceries', 'EXPENSE'),
  ('222e8400-e29b-41d4-a716-446655440005', 'Entertainment', 'EXPENSE'),
  ('222e8400-e29b-41d4-a716-446655440006', 'Utilities', 'EXPENSE'),
  ('222e8400-e29b-41d4-a716-446655440007', 'Dining Out', 'EXPENSE');

  INSERT INTO budget (id, budget_user, budget_type, budget_category, budget_amount, budget_start_date, budget_finish_date) VALUES
  -- Savings Budgets
  ('333e8400-e29b-41d4-a716-446655440000', '550e8400-e29b-41d4-a716-446655440000', 'SAVINGS', NULL, 1000.00, '2025-02-01', '2025-12-31'),
  ('333e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440002', 'SAVINGS', NULL, 2000.00, '2025-02-01', '2025-12-31'),

  -- Expense Budget (LIMIT)
  ('333e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440001', 'LIMIT', '222e8400-e29b-41d4-a716-446655440004', 500.00, '2025-02-01', '2025-02-28');

  -- User 1 (Alice) Transactions
-- Alice Bank (account_id: 111e8400-e29b-41d4-a716-446655440000), balance: 3000.00

  
  INSERT INTO transaction (transaction_id, transaction_user, transaction_category, transaction_account, transaction_value, transaction_date, transaction_description) VALUES
  ('444e8400-e29b-41d4-a716-446655440000', '550e8400-e29b-41d4-a716-446655440000', '222e8400-e29b-41d4-a716-446655440000', '111e8400-e29b-41d4-a716-446655440000', 1500.00, '2025-02-01 08:30:00', 'Salary deposit part 1'),
  ('444e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440000', '222e8400-e29b-41d4-a716-446655440001', '111e8400-e29b-41d4-a716-446655440000', 1000.00, '2025-02-01 08:45:00', 'Salary deposit part 2'),
  ('444e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440000', '222e8400-e29b-41d4-a716-446655440007', '111e8400-e29b-41d4-a716-446655440000', -300.00, '2025-02-02 12:00:00', 'Dinner expense'),
  ('444e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440000', '222e8400-e29b-41d4-a716-446655440006', '111e8400-e29b-41d4-a716-446655440000', -200.00, '2025-02-02 15:00:00', 'Utility bill'),
  ('444e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440000', '222e8400-e29b-41d4-a716-446655440001', '111e8400-e29b-41d4-a716-446655440000', 1000.00, '2025-02-03 09:00:00', 'Freelance payment'),

-- Alice Savings (account_id: 111e8400-e29b-41d4-a716-446655440001), balance: 5000.00
  ('444e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440000', '222e8400-e29b-41d4-a716-446655440000', '111e8400-e29b-41d4-a716-446655440001', 2500.00, '2025-02-04 10:00:00', 'Salary deposit part 1'),
  ('444e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440000', '222e8400-e29b-41d4-a716-446655440002', '111e8400-e29b-41d4-a716-446655440001', 1500.00, '2025-02-04 10:15:00', 'Investment income part 1'),
  ('444e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440000', '222e8400-e29b-41d4-a716-446655440006', '111e8400-e29b-41d4-a716-446655440001', -500.00, '2025-02-04 11:00:00', 'Transfer expense'),

-- Alice Wallet (account_id: 111e8400-e29b-41d4-a716-446655440002), balance: 150.00
  ('444e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440000', '222e8400-e29b-41d4-a716-446655440003', '111e8400-e29b-41d4-a716-446655440002', 100.00, '2025-02-05 08:00:00', 'Gift received'),
  ('444e8400-e29b-41d4-a716-446655440009', '550e8400-e29b-41d4-a716-446655440000', '222e8400-e29b-41d4-a716-446655440001', '111e8400-e29b-41d4-a716-446655440002', 50.00, '2025-02-05 09:00:00', 'Small freelance payment'),

-- User 2 (Bob)
-- Bob Bank (account_id: 111e8400-e29b-41d4-a716-446655440003), balance: 2000.00
  ('444e8400-e29b-41d4-a716-446655440010', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440000', '111e8400-e29b-41d4-a716-446655440003', 1800.00, '2025-02-06 08:30:00', 'Salary deposit'),
  ('444e8400-e29b-41d4-a716-446655440011', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440007', '111e8400-e29b-41d4-a716-446655440003', -300.00, '2025-02-06 12:00:00', 'Lunch out'),
  ('444e8400-e29b-41d4-a716-446655440012', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440001', '111e8400-e29b-41d4-a716-446655440003', 500.00, '2025-02-06 14:00:00', 'Freelance project'),

-- Bob Wallet (account_id: 111e8400-e29b-41d4-a716-446655440004), balance: 250.00
  ('444e8400-e29b-41d4-a716-446655440013', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440003', '111e8400-e29b-41d4-a716-446655440004', 200.00, '2025-02-07 09:00:00', 'Gift received'),
  ('444e8400-e29b-41d4-a716-446655440014', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440001', '111e8400-e29b-41d4-a716-446655440004', 50.00, '2025-02-07 10:00:00', 'Small bonus'),

-- Bob Savings (account_id: 111e8400-e29b-41d4-a716-446655440005), balance: 7000.00
  ('444e8400-e29b-41d4-a716-446655440015', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440000', '111e8400-e29b-41d4-a716-446655440005', 2500.00, '2025-02-07 11:00:00', 'Salary deposit part 1'),
  ('444e8400-e29b-41d4-a716-446655440016', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440000', '111e8400-e29b-41d4-a716-446655440005', 1500.00, '2025-02-07 11:15:00', 'Salary deposit part 2'),
  ('444e8400-e29b-41d4-a716-446655440017', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440002', '111e8400-e29b-41d4-a716-446655440005', 3500.00, '2025-02-07 12:00:00', 'Investment income'),
  ('444e8400-e29b-41d4-a716-446655440018', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440006', '111e8400-e29b-41d4-a716-446655440005', -500.00, '2025-02-07 13:00:00', 'Utility bill'),

-- User 3 (Charlie)
-- Charlie Bank (account_id: 111e8400-e29b-41d4-a716-446655440006), balance: 4000.00
  ('444e8400-e29b-41d4-a716-446655440019', '550e8400-e29b-41d4-a716-446655440002', '222e8400-e29b-41d4-a716-446655440000', '111e8400-e29b-41d4-a716-446655440006', 2500.00, '2025-02-08 08:00:00', 'Salary deposit'),
  ('444e8400-e29b-41d4-a716-446655440020', '550e8400-e29b-41d4-a716-446655440002', '222e8400-e29b-41d4-a716-446655440004', '111e8400-e29b-41d4-a716-446655440006', -500.00, '2025-02-08 09:30:00', 'Grocery shopping'),
  ('444e8400-e29b-41d4-a716-446655440021', '550e8400-e29b-41d4-a716-446655440002', '222e8400-e29b-41d4-a716-446655440001', '111e8400-e29b-41d4-a716-446655440006', 1000.00, '2025-02-08 10:00:00', 'Freelance work part 1'),
  ('444e8400-e29b-41d4-a716-446655440022', '550e8400-e29b-41d4-a716-446655440002', '222e8400-e29b-41d4-a716-446655440001', '111e8400-e29b-41d4-a716-446655440006', 1000.00, '2025-02-08 10:15:00', 'Freelance work part 2'),

-- Charlie Savings (account_id: 111e8400-e29b-41d4-a716-446655440007), balance: 2000.00
  ('444e8400-e29b-41d4-a716-446655440023', '550e8400-e29b-41d4-a716-446655440002', '222e8400-e29b-41d4-a716-446655440002', '111e8400-e29b-41d4-a716-446655440007', 1500.00, '2025-02-08 11:00:00', 'Investment income'),
  ('444e8400-e29b-41d4-a716-446655440024', '550e8400-e29b-41d4-a716-446655440002', '222e8400-e29b-41d4-a716-446655440000', '111e8400-e29b-41d4-a716-446655440007', 500.00, '2025-02-08 11:15:00', 'Salary bonus'),

-- User 4 (Diana)
-- Diana Bank (account_id: 111e8400-e29b-41d4-a716-446655440008), balance: 3500.00
  ('444e8400-e29b-41d4-a716-446655440025', '550e8400-e29b-41d4-a716-446655440003', '222e8400-e29b-41d4-a716-446655440000', '111e8400-e29b-41d4-a716-446655440008', 2000.00, '2025-02-09 08:30:00', 'Salary deposit'),
  ('444e8400-e29b-41d4-a716-446655440026', '550e8400-e29b-41d4-a716-446655440003', '222e8400-e29b-41d4-a716-446655440007', '111e8400-e29b-41d4-a716-446655440008', -300.00, '2025-02-09 12:00:00', 'Lunch expense'),
  ('444e8400-e29b-41d4-a716-446655440027', '550e8400-e29b-41d4-a716-446655440003', '222e8400-e29b-41d4-a716-446655440001', '111e8400-e29b-41d4-a716-446655440008', 1000.00, '2025-02-09 14:00:00', 'Freelance work part 1'),
  ('444e8400-e29b-41d4-a716-446655440028', '550e8400-e29b-41d4-a716-446655440003', '222e8400-e29b-41d4-a716-446655440001', '111e8400-e29b-41d4-a716-446655440008', 800.00, '2025-02-09 14:15:00', 'Freelance work part 2'),

-- Diana Savings (account_id: 111e8400-e29b-41d4-a716-446655440009), balance: 1000.00
  ('444e8400-e29b-41d4-a716-446655440029', '550e8400-e29b-41d4-a716-446655440003', '222e8400-e29b-41d4-a716-446655440002', '111e8400-e29b-41d4-a716-446655440009', 1200.00, '2025-02-10 09:00:00', 'Investment income'),
  ('444e8400-e29b-41d4-a716-44665544002A', '550e8400-e29b-41d4-a716-446655440003', '222e8400-e29b-41d4-a716-446655440006', '111e8400-e29b-41d4-a716-446655440009', -200.00, '2025-02-10 09:30:00', 'Utility bill'),

-- User 5 (Eve)
-- Eve Bank (account_id: 111e8400-e29b-41d4-a716-446655440010), balance: 6000.00
  ('444e8400-e29b-41d4-a716-44665544002B', '550e8400-e29b-41d4-a716-446655440004', '222e8400-e29b-41d4-a716-446655440000', '111e8400-e29b-41d4-a716-446655440010', 2500.00, '2025-02-11 08:30:00', 'Salary deposit part 1'),
  ('444e8400-e29b-41d4-a716-44665544002C', '550e8400-e29b-41d4-a716-446655440004', '222e8400-e29b-41d4-a716-446655440000', '111e8400-e29b-41d4-a716-446655440010', 1500.00, '2025-02-11 08:45:00', 'Salary deposit part 2'),
  ('444e8400-e29b-41d4-a716-44665544002D', '550e8400-e29b-41d4-a716-446655440004', '222e8400-e29b-41d4-a716-446655440001', '111e8400-e29b-41d4-a716-446655440010', 2500.00, '2025-02-11 09:00:00', 'Freelance work'),
  ('444e8400-e29b-41d4-a716-44665544002E', '550e8400-e29b-41d4-a716-446655440004', '222e8400-e29b-41d4-a716-446655440004', '111e8400-e29b-41d4-a716-446655440010', -500.00, '2025-02-11 10:00:00', 'Grocery shopping'),

-- Eve Wallet (account_id: 111e8400-e29b-41d4-a716-446655440011), balance: 80.00
  ('444e8400-e29b-41d4-a716-44665544002F', '550e8400-e29b-41d4-a716-446655440004', '222e8400-e29b-41d4-a716-446655440003', '111e8400-e29b-41d4-a716-446655440011', 80.00, '2025-02-11 11:00:00', 'Gift received'),

-- Adjustment Pairs (7 pairs => 14 transactions)
-- Pair 1: Alice Wallet
  ('444e8400-e29b-41d4-a716-446655440030', '550e8400-e29b-41d4-a716-446655440000', '222e8400-e29b-41d4-a716-446655440003', '111e8400-e29b-41d4-a716-446655440002', 20.00, '2025-02-12 08:00:00', 'Adjustment deposit'),
  ('444e8400-e29b-41d4-a716-446655440031', '550e8400-e29b-41d4-a716-446655440000', '222e8400-e29b-41d4-a716-446655440007', '111e8400-e29b-41d4-a716-446655440002', -20.00, '2025-02-12 08:05:00', 'Adjustment withdrawal'),
-- Pair 2: Bob Bank
  ('444e8400-e29b-41d4-a716-446655440032', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440000', '111e8400-e29b-41d4-a716-446655440003', 100.00, '2025-02-12 09:00:00', 'Adjustment deposit'),
  ('444e8400-e29b-41d4-a716-446655440033', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440004', '111e8400-e29b-41d4-a716-446655440003', -100.00, '2025-02-12 09:05:00', 'Adjustment withdrawal'),
-- Pair 3: Bob Wallet
  ('444e8400-e29b-41d4-a716-446655440034', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440003', '111e8400-e29b-41d4-a716-446655440004', 30.00, '2025-02-12 10:00:00', 'Adjustment deposit'),
  ('444e8400-e29b-41d4-a716-446655440035', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440007', '111e8400-e29b-41d4-a716-446655440004', -30.00, '2025-02-12 10:05:00', 'Adjustment withdrawal'),
-- Pair 4: Charlie Savings
  ('444e8400-e29b-41d4-a716-446655440036', '550e8400-e29b-41d4-a716-446655440002', '222e8400-e29b-41d4-a716-446655440002', '111e8400-e29b-41d4-a716-446655440007', 50.00, '2025-02-12 11:00:00', 'Adjustment deposit'),
  ('444e8400-e29b-41d4-a716-446655440037', '550e8400-e29b-41d4-a716-446655440002', '222e8400-e29b-41d4-a716-446655440006', '111e8400-e29b-41d4-a716-446655440007', -50.00, '2025-02-12 11:05:00', 'Adjustment withdrawal'),
-- Pair 5: Diana Savings
  ('444e8400-e29b-41d4-a716-446655440038', '550e8400-e29b-41d4-a716-446655440003', '222e8400-e29b-41d4-a716-446655440002', '111e8400-e29b-41d4-a716-446655440009', 40.00, '2025-02-12 12:00:00', 'Adjustment deposit'),
  ('444e8400-e29b-41d4-a716-446655440039', '550e8400-e29b-41d4-a716-446655440003', '222e8400-e29b-41d4-a716-446655440004', '111e8400-e29b-41d4-a716-446655440009', -40.00, '2025-02-12 12:05:00', 'Adjustment withdrawal'),
-- Pair 6: Eve Wallet
  ('444e8400-e29b-41d4-a716-44665544003A', '550e8400-e29b-41d4-a716-446655440004', '222e8400-e29b-41d4-a716-446655440003', '111e8400-e29b-41d4-a716-446655440011', 10.00, '2025-02-12 13:00:00', 'Adjustment deposit'),
  ('444e8400-e29b-41d4-a716-44665544003B', '550e8400-e29b-41d4-a716-446655440004', '222e8400-e29b-41d4-a716-446655440007', '111e8400-e29b-41d4-a716-446655440011', -10.00, '2025-02-12 13:05:00', 'Adjustment withdrawal'),
-- Pair 7: Bob Savings
  ('444e8400-e29b-41d4-a716-44665544003C', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440002', '111e8400-e29b-41d4-a716-446655440005', 200.00, '2025-02-12 14:00:00', 'Adjustment deposit'),
  ('444e8400-e29b-41d4-a716-44665544003D', '550e8400-e29b-41d4-a716-446655440001', '222e8400-e29b-41d4-a716-446655440006', '111e8400-e29b-41d4-a716-446655440005', -200.00, '2025-02-12 14:05:00', 'Adjustment withdrawal');
