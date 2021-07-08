// import connection
import db from "../config/database.js";
 
// Get All Products
export const getProducts = (category, result) => {
    if( category == 'all' ) {
        db.query("SELECT * FROM products ORDER BY id desc LIMIT 15", (err, results) => {             
            if(err) {
                console.log(err);
                result(err, null);
            } else {
                result(null, results);
            }
        });
    } else if( category == 'popular' ) {
        db.query("SELECT * FROM products ORDER BY sold desc LIMIT 5", (err, results) => {             
            if(err) {
                console.log(err);
                result(err, null);
            } else {
                result(null, results);
            }
        });
    } else {
        db.query("SELECT * FROM products WHERE category = ? ORDER BY id desc LIMIT 15", [category], (err, results) => {             
            if(err) {
                console.log(err);
                result(err, null);
            } else {
                result(null, results);
            }
        });
    }
}
 
// Get Single Product
export const getProductBySlug = (slug, result) => {
    db.query("SELECT * FROM products WHERE slug = ?", [slug], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results[0]);
        }
    });   
}
 
// Insert Product to Database
export const insertProduct = (data, result) => {
    db.query("INSERT INTO products SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}
 
// Update Product to Database
export const updateProductById = (data, id, result) => {
    db.query("UPDATE products SET name = ?, category = ?, price = ?, weight = ?, star = ?, slug = ? WHERE id = ?", [data.name, data.category, data.price, data.weight, data.star, data.slug, id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}
 
// Delete Product to Database
export const deleteProductById = (id, result) => {
    db.query("DELETE FROM products WHERE id = ?", [id], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}