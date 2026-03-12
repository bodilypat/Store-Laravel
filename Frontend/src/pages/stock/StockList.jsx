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
/* * view stock  #src/pages/stock/StockList.jsx  */

import React, { useState, useEffect } from 'react';
import { getStockList } from '../../services/stockService';
import './StockList.css';

const StockList = () => {
    const [stockList, setStockList] = useState([]);

    useEffect(() => {
        getStockList()
            .then(response => {
                setStockList(response.data);
            })
            .catch(error => {
                console.error("There was an error fetching the stock list!", error);
            });
    }, []);

    return (
        <div className="stock-list">
            <h1>Stock List</h1>
            <table>
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Current Stock</th>
                        <th>Low Stock Alert</th>
                    </tr>
                </thead>
                <tbody>
                    {stockList.map(stock => (
                        <tr key={stock.id}>
                            <td>{stock.productName}</td>
                            <td>{stock.currentStock}</td>
                            <td>{stock.currentStock < stock.lowStockThreshold ? 'Yes' : 'No'}</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
};

export default StockList;



