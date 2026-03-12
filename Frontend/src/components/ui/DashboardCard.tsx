/* <!--
|----------------------Store Management System------------------ 
| Product & Inventory Management
| Sales & Billing(POS)
| Customer Management 
| Supplier Management
| Reports & Analytics
| Authentication & Authorization
|--------------------------------------------------------
 --> */
 /*  src/components/ui/DashboardCard.jsx  */
 
import React from 'react';

const DashboardCard = ({ title, value, icon }) => {
    return (
        <div className="bg-white shadow rounded-lg p-4 flex items-center">
            <div className="p-3 rounded-full bg-blue-100 text-blue-500 mr-4">
                {icon}
            </div>
            <div>
                <p className="text-sm text-gray-500">{title}</p>
                <p className="text-xl font-semibold text-gray-800">{value}</p>
            </div>
        </div>
    );
};

export default DashboardCard;

