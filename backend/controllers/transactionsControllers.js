// Import function from Product Model
import { insertTransaction } from "../models/transactionsModel.js";

// Create New Product
export const createTransaction = (req, res) => {
    const data = req.body;
    insertTransaction(data, (err, results) => {
        if (err){
            res.send(err);
        }else{
            res.json(results);
        }
    });
}