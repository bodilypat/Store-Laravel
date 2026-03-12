/* <!--
|----------------------Store Management System------------------ 
| Inventory Management
| -- Stock in / stock out
| -- Low Stock alerts
| -- inventory History
| -- inventory Reports
| -- Stock history LoginRequest
| -- Multi-warehouse inventory
| -- Barcord scanning
|--------------------------------------------------------
 --> */
/* #src/pages/inventory/StockHistory.jsx  */

import React from 'react';
import './StockHistory.css';

const StockHistory = () => {
    const [history, setHistory] = UserState([]);

    React.useEffect(() => {
        // Fetch stock history data from API
        fetch('/api/inventory/history')
            .then(response => response.json())
            .then(data => setHistory(data))
            .catch(error => console.error('Error fetching stock history:', error));
    }, []);

    return (
        <div className="stock-history">
            <h2>Stock History</h2>
            <table>
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Product Name</th>
                        <th>Change Type</th>
                        <th>Quantity Changed</th>
                        <th>Warehouse</th>
                    </tr>
                </thead>
                <tbody>
                    {history.map(record => (
                        <tr key={record.id}>
                            <td>{new Date(record.date).toLocaleString()}</td>
                            <td>{record.productName}</td>
                            <td>{record.changeType}</td>
                            <td>{record.quantityChanged}</td>
                            <td>{record.warehouse}</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
}

export default StockHistory;


    