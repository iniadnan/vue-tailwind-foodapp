// import express
import express from "express";
 
// import function from controller
import { showProducts, showProductBySlug, createProduct, updateProduct, deleteProduct } from "../controllers/productsController.js";
 
// init express router
const productsRouter = express.Router();
 
// Get All Product
productsRouter.get('/:category', showProducts);
 
// Get Single Product
productsRouter.get('/single/:slug', showProductBySlug);
 
// Create New Product
productsRouter.post('/create', createProduct);
 
// Update Product
productsRouter.put('/update/:id', updateProduct);
 
// Delete Product
productsRouter.delete('/delete/:id', deleteProduct);
 
// export default router
export default productsRouter;