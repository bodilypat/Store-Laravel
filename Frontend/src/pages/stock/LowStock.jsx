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
| -- multi-warehouse stock management
| -- automatic restock alerts
| -- integration with sales and purchase modules for accurate stock tracking
|--------------------------------------------------------
 --> */
/* 
-- Display products that need restocking
-- src/pages/stock/LowStock.jsx  
*/

import React, { useState, useEffect } from 'react';
import { getLowStockProducts } from '../../services/stockService';
import './LowStock.css';

const LowStock = () => {
    const [lowStockProducts, setLowStockProducts] = useState([]);
    useEffect(() => {
        getLowStockProducts()
            .then(response => {
                setLowStockProducts(response.data);
            })
            .catch(error => {
                console.error("There was an error fetching low stock products!", error);
            });
    }, []);

    return (
        <div className="low-stock">
            <h1>Low Stock Products</h1>
            <table>
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Current Stock</th>
                        <th>Low Stock Threshold</th>
                    </tr>
                </thead>
                <tbody>
                    {lowStockProducts.map(product => (
                        <tr key={product.id}>
                            <td>{product.productName}</td>
                            <td>{product.currentStock}</td>
                            <td>{product.lowStockThreshold}</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
};

export default LowStock;



