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
-- Tracks stock movement
-- src/pages/stock/StockHistory.jsx  
*/

import React, { useState, useEffect } from 'react';
import { getStockHistory } from '../../services/stockService';
import './StockHistory.css';

const StockHistory = () => {
    const [stockHistory, setStockHistory] = useState([]);
    
    useEffect(() => {
        getStockHistory()
            .then(response => {
                setStockHistory(response.data);
            })
            .catch(error => {
                console.error("There was an error fetching stock history!", error);
            });
    }, []);

    return (
        <div className="stock-history">
            <h1>Stock History</h1>
            <table>
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Change Type</th>
                        <th>Quantity Changed</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                    {stockHistory.map(record => (
                        <tr key={record.id}>
                            <td>{record.productName}</td>
                            <td>{record.changeType}</td>
                            <td>{record.quantityChanged}</td>
                            <td>{new Date(record.date).toLocaleDateString()}</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
};


export default StockHistory;

