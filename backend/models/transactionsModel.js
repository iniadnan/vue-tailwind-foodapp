// import connection
import db from "../config/database.js";

// Insert Transaction to Database
export const insertTransaction = (data, result) => {
    db.query("INSERT INTO transactions SET ?", [data], (err, results) => {             
        if(err) {
            console.log(err);
            result(err, null);
        } else {
            result(null, results);
        }
    });   
}