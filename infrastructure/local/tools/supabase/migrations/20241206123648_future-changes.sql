-- Default Categories
INSERT INTO categories (name, description, is_default) VALUES
('Food & Dining', 'Restaurants, cafes, and food delivery', true),
('Groceries', 'Supermarket and grocery shopping', true),
('Transportation', 'Public transport, fuel, and ride-sharing', true),
('Shopping', 'Clothing, electronics, and general retail', true),
('Bills & Utilities', 'Electricity, water, internet, and phone bills', true),
('Entertainment', 'Movies, games, and recreational activities', true),
('Health', 'Medical expenses and healthcare', true),
('Education', 'Courses, books, and learning materials', true)
-- Default Tags
INSERT INTO tags (name, description, is_default) VALUES
('Essential', 'Necessary expenses', true),
('Non-Essential', 'Optional or luxury expenses', true),
('Business', 'Work-related expenses', true),
('Personal', 'Personal expenses', true),
('Investment', 'Investment-related expenses', true)
-- Sample Users
INSERT INTO users (name, email) VALUES
('John Doe', 'john@example.com'),
('Jane Smith', 'jane@example.com'),
('Bob Wilson', 'bob@example.com')
-- Sample Bank Accounts
INSERT INTO bank_accounts (user_id, account_name, account_number, bank_name) VALUES
(1, 'Primary Checking', '1234567890', 'Chase Bank'),
(1, 'Savings Account', '0987654321', 'Chase Bank'),
(2, 'Main Account', '1122334455', 'Bank of America'),
(3, 'Salary Account', '5544332211', 'Wells Fargo')
-- Sample Virtual Accounts
INSERT INTO virtual_accounts (user_id, name, description, balance, account_type) VALUES
(1, 'Emergency Fund', 'For unexpected expenses', 5000.00, 'savings'),
(1, 'Car Loan', 'Auto loan payments', 15000.00, 'loan'),
(2, 'House Down Payment', 'Saving for house', 25000.00, 'savings'),
(3, 'Travel Fund', 'Vacation savings', 2500.00, 'savings')
-- Sample Virtual Bank Mappings
INSERT INTO virtual_bank_mappings (virtual_account_id, bank_account_id) VALUES
(1, 1),
(2, 1),
(3, 3),
(4, 4)
-- Sample Loan Installments
INSERT INTO loan_installments (virtual_account_id, amount, due_date, is_paid) VALUES
(2, 500.00, CURRENT_DATE + INTERVAL '1 month', false),
(2, 500.00, CURRENT_DATE + INTERVAL '2 months', false)
-- Sample Expenses
INSERT INTO expenses (user_id, amount, description, date, merchant_name, virtual_account_id, category_id, is_recurring) VALUES
(1, 50.00, 'Grocery shopping', CURRENT_TIMESTAMP - INTERVAL '2 days', 'Whole Foods', 1, 2, false),
(1, 25.00, 'Netflix subscription', CURRENT_TIMESTAMP - INTERVAL '1 day', 'Netflix', 1, 6, true),
(2, 35.00, 'Lunch with colleagues', CURRENT_TIMESTAMP - INTERVAL '3 days', 'Local Cafe', 3, 1, false),
(3, 100.00, 'Monthly internet bill', CURRENT_TIMESTAMP, 'ISP Corp', 4, 5, true)
-- Sample Savings Goals
INSERT INTO savings_goals (user_id, virtual_account_id, name, target_amount, current_amount, target_date) VALUES
(1, 1, 'Emergency Fund Goal', 10000.00, 5000.00, CURRENT_DATE + INTERVAL '6 months'),
(2, 3, 'House Down Payment', 50000.00, 25000.00, CURRENT_DATE + INTERVAL '1 year')
-- Sample User Preferences
INSERT INTO user_preferences (user_id, push_notifications_enabled, expense_reminder_frequency, theme_preference, currency_code) VALUES
(1, true, 'DAILY', 'DARK', 'USD'),
(2, true, 'WEEKLY', 'SYSTEM', 'USD'),
(3, true, 'MONTHLY', 'DARK', 'USD')
-- Sample Dashboard Configurations
INSERT INTO dashboard_configurations (user_id, name, config_data, is_default) VALUES
(1, 'Default View', '{"widgets": ["expenses", "savings", "budget"]}', true),
(2, 'Minimal View', '{"widgets": ["expenses", "budget"]}', true)