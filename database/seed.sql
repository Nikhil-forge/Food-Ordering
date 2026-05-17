-- Auto-generated seed file including all 9 restaurants and 33 food items

INSERT INTO users (name, email, password, role) VALUES
('Demo User', 'user@demo.com', '$2b$10$WhGalCAaMkoWCLhqHxrVv.ZCRWIc/VPBZXGVSN8G74iKWhJEi8raG', 'user'),
('Demo Admin', 'admin@demo.com', '$2b$10$7GdXFXEpvM1TeWPSv.B.i.RfYa3cVagtOKDc0jiqlZ4LV74uvrkHe', 'admin')
ON DUPLICATE KEY UPDATE email = VALUES(email);

INSERT INTO restaurants (restaurant_id, restaurant_name, address, contact, cuisine, rating, image_url) VALUES
(1, 'Green Bowl Cafe', '123 Health Ave, Diet City', '+91 9876543210', 'Healthy', 4.8, 'https://images.unsplash.com/photo-1490818387583-1b0ba6873562?auto=format&fit=crop&w=800&q=80'),
(2, 'Spice Villa', '102 Royal Residency, Heritage Road, Foodville', '+91 9876543201', 'Indian', 4.5, 'https://images.unsplash.com/photo-1585937421612-70a008356fbe?auto=format&fit=crop&w=800&q=80'),
(3, 'Dragon Wok', '88 Chinatown Arcade, Lantern Street, Foodville', '+91 9876543202', 'Chinese', 4.3, 'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?auto=format&fit=crop&w=800&q=80'),
(4, 'Pasta Palace', '404 Italian Plaza, Venice Way, Foodville', '+91 9876543203', 'Italian', 4.6, 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=800&q=80'),
(5, 'Burger Hub', '12 Street Food Lane, Gourmet Square, Foodville', '+91 9876543204', 'Fast Food', 4.2, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=800&q=80'),
(6, 'Dosa Kingdom', '55 Coconut Grove, Sambhar Lane, Foodville', '+91 9876543205', 'South Indian', 4.7, 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?auto=format&fit=crop&w=800&q=80'),
(7, 'Smoke House BBQ', '77 Pitmaster Boulevard, Hickory Drive, Foodville', '+91 9876543206', 'Grill & BBQ', 4.4, 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?auto=format&fit=crop&w=800&q=80'),
(8, 'Sweet Cravings', '9 Chocolatier Arcade, Sweet Street, Foodville', '+91 9876543207', 'Desserts', 4.8, 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?auto=format&fit=crop&w=800&q=80'),
(9, 'Green Bowl', '32 Organic Plaza, Garden Road, Foodville', '+91 9876543208', 'Healthy Food', 4.5, 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?auto=format&fit=crop&w=800&q=80')
ON DUPLICATE KEY UPDATE restaurant_name = VALUES(restaurant_name);

INSERT INTO food_items (restaurant_id, food_name, category, price, image_url, calories, protein, carbohydrates, fats, fiber, sugar, vitamins, minerals) VALUES
(1, 'Grilled Chicken Salad', 'Main Course', 250.00, 'https://images.unsplash.com/photo-1512621776951-a57141f2eefd?auto=format&fit=crop&w=500&q=80', 350, 35, 12, 18, 5, 2, NULL, NULL),
(1, 'Quinoa Protein Bowl', 'Main Course', 300.00, 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80', 420, 22, 45, 15, 8, 4, NULL, NULL),
(1, 'Fruit & Nut Smoothie', 'Beverages', 180.00, 'https://images.unsplash.com/photo-1553530666-ba11a7ddc2ed?auto=format&fit=crop&w=500&q=80', 250, 8, 30, 10, 6, 15, NULL, NULL),
(2, 'Butter Chicken', 'Main Course', 380.00, 'https://images.unsplash.com/photo-1603894584373-5ac82b6ae39c?auto=format&fit=crop&w=500&q=80', 650, 35, 20, 45, 0, 0, NULL, NULL),
(2, 'Paneer Tikka Masala', 'Main Course', 320.00, 'https://images.unsplash.com/photo-1565557623262-b51c2513a641?auto=format&fit=crop&w=500&q=80', 520, 18, 15, 38, 0, 0, NULL, NULL),
(2, 'Garlic Naan', 'Bread', 80.00, 'https://images.unsplash.com/photo-1626082927389-6cd097cdc6ec?auto=format&fit=crop&w=500&q=80', 220, 6, 40, 5, 0, 0, NULL, NULL),
(3, 'Kung Pao Chicken', 'Main Course', 350.00, 'https://images.unsplash.com/photo-1525755662778-989d0524087e?auto=format&fit=crop&w=500&q=80', 480, 28, 22, 18, 0, 0, NULL, NULL),
(3, 'Veg Hakka Noodles', 'Main Course', 280.00, 'https://images.unsplash.com/photo-1612966608967-312ba5979940?auto=format&fit=crop&w=500&q=80', 420, 8, 65, 12, 0, 0, NULL, NULL),
(3, 'Chili Paneer Dry', 'Appetizer', 300.00, 'https://images.unsplash.com/photo-1534422298391-e4f8c172dddb?auto=format&fit=crop&w=500&q=80', 390, 14, 18, 22, 0, 0, NULL, NULL),
(4, 'Penne Alfredo', 'Main Course', 390.00, 'https://images.unsplash.com/photo-1645112411341-6c4fd023714a?auto=format&fit=crop&w=500&q=80', 580, 15, 60, 28, 0, 0, NULL, NULL),
(4, 'Lasagna Classica', 'Main Course', 450.00, 'https://images.unsplash.com/photo-1574894709920-11b28e7367e3?auto=format&fit=crop&w=500&q=80', 720, 25, 55, 32, 0, 0, NULL, NULL),
(4, 'Garlic Bread with Cheese', 'Appetizer', 180.00, 'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?auto=format&fit=crop&w=500&q=80', 310, 8, 35, 14, 0, 0, NULL, NULL),
(5, 'Gourmet Cheeseburger', 'Main Course', 260.00, 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?auto=format&fit=crop&w=500&q=80', 560, 30, 42, 26, 0, 0, NULL, NULL),
(5, 'Crispy Chicken Zinger', 'Main Course', 280.00, 'https://images.unsplash.com/photo-1513185158878-8d8c2a2a3ad3?auto=format&fit=crop&w=500&q=80', 610, 34, 48, 28, 0, 0, NULL, NULL),
(5, 'Loaded Fries', 'Sides', 190.00, 'https://images.unsplash.com/photo-1576107232684-1279f3908594?auto=format&fit=crop&w=500&q=80', 450, 10, 52, 22, 0, 0, NULL, NULL),
(6, 'Masala Dosa', 'Main Course', 150.00, 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?auto=format&fit=crop&w=500&q=80', 340, 6, 58, 8, 0, 0, NULL, NULL),
(6, 'Idli Sambar (2 Pcs)', 'Main Course', 100.00, 'https://images.unsplash.com/photo-1589301760014-d929f3979dbc?auto=format&fit=crop&w=500&q=80', 180, 5, 38, 1, 0, 0, NULL, NULL),
(6, 'Rava Onion Dosa', 'Main Course', 180.00, 'https://images.unsplash.com/photo-1668236543090-82eba5ee5976?auto=format&fit=crop&w=500&q=80', 390, 7, 62, 10, 0, 0, NULL, NULL),
(7, 'Smoked BBQ Chicken', 'Main Course', 420.00, 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?auto=format&fit=crop&w=500&q=80', 650, 45, 15, 32, 0, 0, NULL, NULL),
(7, 'Grilled Paneer Skewers', 'Main Course', 340.00, 'https://images.unsplash.com/photo-1594002684730-5f15ca7c1e65?auto=format&fit=crop&w=500&q=80', 410, 22, 8, 25, 0, 0, NULL, NULL),
(7, 'BBQ Pulled Chicken Slider', 'Appetizer', 290.00, 'https://images.unsplash.com/photo-1525059696034-4967a8e1dca2?auto=format&fit=crop&w=500&q=80', 480, 28, 35, 18, 0, 0, NULL, NULL),
(8, 'Death by Chocolate Cake', 'Dessert', 220.00, 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?auto=format&fit=crop&w=500&q=80', 480, 6, 68, 22, 0, 0, NULL, NULL),
(8, 'Red Velvet Pastry', 'Dessert', 180.00, 'https://images.unsplash.com/photo-1616541823729-00fe0aacd32c?auto=format&fit=crop&w=500&q=80', 390, 4, 52, 18, 0, 0, NULL, NULL),
(8, 'Classic NY Cheesecake', 'Dessert', 250.00, 'https://images.unsplash.com/photo-1533134242443-d4fd215305ad?auto=format&fit=crop&w=500&q=80', 450, 8, 42, 28, 0, 0, NULL, NULL),
(9, 'Avocado Quinoa Salad', 'Main Course', 340.00, 'https://images.unsplash.com/photo-1540420773420-3366772f4999?auto=format&fit=crop&w=500&q=80', 310, 8, 28, 18, 0, 0, NULL, NULL),
(9, 'Tofu Teriyaki Bowl', 'Main Course', 380.00, 'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?auto=format&fit=crop&w=500&q=80', 420, 18, 52, 12, 0, 0, NULL, NULL),
(9, 'Acai Protein Smoothie', 'Beverages', 240.00, 'https://images.unsplash.com/photo-1553530666-ba11a7ddc2ed?auto=format&fit=crop&w=500&q=80', 220, 12, 32, 4, 0, 0, NULL, NULL)
ON DUPLICATE KEY UPDATE food_name = VALUES(food_name);

USE `onlineorder`;
