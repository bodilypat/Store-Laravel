/* <!--
|----------------------Store Management System------------------ 
| Stock Management
| -- Track current stock levels
| -- Low Stock alerts
| -- Stack Adjustment
| -- Inventory history
| -- Real- time stock updates 
| -- Stock reporting and analytics with charts and graphs
| -- Barcode scanning for stock management
| --  multi-warehouse stock management
| -- automatic restock alerts
| -- integration with sales and purchase modules for accurate stock tracking
|--------------------------------------------------------
 --> */
/* Add, or removing stock  #src/pages/stock/UpdateStock.jsx  */

import React, { useState } from 'react';
import { updateStock } from '../../services/stockService';
import './UpdateStock.css';

const UpdateStock = () => {
    const [productId, setProductId] = useState('');
    const [quantity, setQuantity] = useState(0);
    const [message, setMessage] = useState('');

    const handleUpdateStock = () => {
        updateStock(productId, quantity)
            .then(response => {
                setMessage('Stock updated successfully!');
            })
            .catch(error => {
                console.error("There was an error updating the stock!", error);
                setMessage('Failed to update stock. Please try again.');
            }
        );
    };

    return (
        <div className="update-stock">
            <h1>Update Stock</h1>
            <div className="form-group">
                <label htmlFor="productId">Product ID:</label>
                <input
                    type="text"
                    id="productId"
                    value={productId}
                    onChange={(e) => setProductId(e.target.value)}
                />
            </div>
            <div className="form-group">
                <label htmlFor="quantity">Quantity to Add/Remove:</label>
                <input
                    type="number"
                    id="quantity"
                    value={quantity}
                    onChange={(e) => setQuantity(parseInt(e.target.value))}
                />
            </div>
            <button onClick={handleUpdateStock}>Update Stock</button>
            {message && <p>{message}</p>}
        </div>
    );
};

export default UpdateStock;



