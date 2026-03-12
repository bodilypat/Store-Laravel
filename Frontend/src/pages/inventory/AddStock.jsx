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
/* increase product stock  #src/pages/inventory/AddStock.jsx  */

import React, { useState } from 'react';
import './AddStock.css';

const AddStock = () => {
    const [productId, setProductId] = useState('');
    const [quantity, setQuantity] = useState('');

    const handleAddStock = () => {
        // Validate input
        if (!productId || !quantity) {
            alert('Please enter both product ID and quantity.');
            return;
        }
        // Send request to API to add stock
        fetch('/api/inventory/add', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ productId, quantity: parseInt(quantity) }),
        })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('Stock added successfully!');
                    setProductId('');
                    setQuantity('');
                } else {
                    alert('Error adding stock: ' + data.message);
                }
            })
            .catch(error => console.error('Error adding stock:', error));
    };

    return (
        <div className="add-stock">
            <h2>Add Stock</h2>
            <input
                type="text"
                placeholder="Product ID"
                value={productId}
                onChange={(e) => setProductId(e.target.value)}
            />
            <input
                type="number"
                placeholder="Quantity"
                value={quantity}
                onChange={(e) => setQuantity(e.target.value)}
            />
            <button onClick={handleAddStock}>Add Stock</button>
        </div>
    );
};

export default AddStock;

