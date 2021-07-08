// import express
import express from "express";
// import cors
import cors from "cors";

// import routes
import productsRouter from "./routes/productsRoute.js";
import transactionsRouter from "./routes/transactionsRoute.js";
 
// init express
const app = express();
 
// use express json
app.use(express.json());
 
// use cors
app.use(cors());
 
// use router
app.use('/products', productsRouter);
app.use('/transactions', transactionsRouter);
 
app.listen(5000, () => console.log('Server running at http://api.localhost:5000'));