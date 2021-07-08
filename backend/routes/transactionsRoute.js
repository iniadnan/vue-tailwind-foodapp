// import express
import express from 'express';

// import function from controller
import { createTransaction } from '../controllers/transactionsControllers.js';

// init express router
const transactionsRouter = express.Router();

// Create New Product
transactionsRouter.post('/create', createTransaction);

// export default router
export default transactionsRouter;