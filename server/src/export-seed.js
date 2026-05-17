import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { pool } from './config/db.js';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

async function exportSeed() {
  const connection = await pool.getConnection();
  try {
    let sql = `-- Auto-generated seed file including all 9 restaurants and 33 food items\n\n`;

    // 1. Users
    const [users] = await connection.query('SELECT name, email, password, role FROM users');
    if (users.length > 0) {
      sql += `INSERT INTO users (name, email, password, role) VALUES\n`;
      sql += users.map(u => `('${u.name}', '${u.email}', '${u.password}', '${u.role}')`).join(',\n');
      sql += `\nON DUPLICATE KEY UPDATE email = VALUES(email);\n\n`;
    }

    // 2. Restaurants
    const [restaurants] = await connection.query('SELECT restaurant_id, restaurant_name, address, contact, cuisine, rating, image_url FROM restaurants');
    if (restaurants.length > 0) {
      sql += `INSERT INTO restaurants (restaurant_id, restaurant_name, address, contact, cuisine, rating, image_url) VALUES\n`;
      sql += restaurants.map(r => `(${r.restaurant_id}, '${r.restaurant_name.replace(/'/g, "''")}', '${r.address.replace(/'/g, "''")}', '${r.contact}', '${r.cuisine}', ${r.rating}, ${r.image_url ? `'${r.image_url}'` : 'NULL'})`).join(',\n');
      sql += `\nON DUPLICATE KEY UPDATE restaurant_name = VALUES(restaurant_name);\n\n`;
    }

    // 3. Food Items
    const [foods] = await connection.query('SELECT restaurant_id, food_name, category, price, image_url, calories, protein, carbohydrates, fats, fiber, sugar, vitamins, minerals FROM food_items');
    if (foods.length > 0) {
      sql += `INSERT INTO food_items (restaurant_id, food_name, category, price, image_url, calories, protein, carbohydrates, fats, fiber, sugar, vitamins, minerals) VALUES\n`;
      sql += foods.map(f => `(${f.restaurant_id}, '${f.food_name.replace(/'/g, "''")}', '${f.category}', ${f.price}, ${f.image_url ? `'${f.image_url}'` : 'NULL'}, ${f.calories}, ${f.protein}, ${f.carbohydrates}, ${f.fats}, ${f.fiber || 0}, ${f.sugar || 0}, ${f.vitamins ? `'${f.vitamins.replace(/'/g, "''")}'` : 'NULL'}, ${f.minerals ? `'${f.minerals.replace(/'/g, "''")}'` : 'NULL'})`).join(',\n');
      sql += `\nON DUPLICATE KEY UPDATE food_name = VALUES(food_name);\n\n`;
    }

    // 4. Set Database Use
    sql += `USE \`${process.env.DB_NAME || 'onlineorder'}\`;\n`;

    const seedPath = path.join(__dirname, '../../database/seed.sql');
    fs.writeFileSync(seedPath, sql);
    console.log('✅ Successfully exported all database rows to database/seed.sql');

  } catch (error) {
    console.error('❌ Export failed:', error);
  } finally {
    connection.release();
    pool.end();
  }
}

exportSeed();
