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
/* Displays product stock  #src/pages/inventory/InventoryTable.jsx  */

import React from 'react';
import './InventoryTable.css';

const InventoryTable = () => {
    const [inventory, setInventory] = React.useState([]);

    React.useEffect(() => {
        // Fetch inventory data from API
        fetch('/api/inventory')
            .then(response => response.json())
            .then(data => setInventory(data))
            .catch(error => console.error('Error fetching inventory:', error));
    }, []);

    return (
        <div className="inventory-table">
            <h2>Current Inventory</h2>
            <table>
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>SKU</th>
                        <th>Quantity</th>
                        <th>Warehouse</th>
                    </tr>
                </thead>
                <tbody>
                    {inventory.map(item => (
                        <tr key={item.id}>
                            <td>{item.productName}</td>
                            <td>{item.sku}</td>
                            <td>{item.quantity}</td>
                            <td>{item.warehouse}</td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
};

export default InventoryTable;

