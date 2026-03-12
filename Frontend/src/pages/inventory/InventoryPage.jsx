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
/* * main Inventory page  #src/pages/inventory/InventoryPage.jsx  */
import React from 'react';
import InventoryTable from '/InventoryTable';
import AddStock from './AddStock';
import LowStockAlerts from './LowStockAlerts';
import InventoryHistory from './InventoryHistory';
import InventoryReports from './InventoryReports';
import MultiWarehouseInventory from './MultiWarehouseInventory';
import BarcodeScanning from './BarcodeScanning';

const InventoryPage = () => {
    return (
        <div className="inventory-page">
            <h1>Inventory Management</h1>
            <AddStock />
            <LowStockAlerts />
            <InventoryHistory />
            <InventoryReports />
            <MultiWarehouseInventory />
            <BarcodeScanning />
            <InventoryTable />
        </div>
    );
}
export default InventoryPage;



