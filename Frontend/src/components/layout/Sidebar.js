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
/* src/components/layout/Sidebar.js */

import React from 'react';
import { NavLink } from 'react-router-dom';
import './Sidebar.css'; // Import CSS for styling

const Sidebar = () => {
    return (
        <div className="sidebar">
            <h2 className="sidebar-title">Store Management</h2>
            <nav className="sidebar-nav">
                <NavLink to="/dashboard/products" className="sidebar-link" activeClassName="active-link">
                    Product & Inventory
                </NavLink>
                <NavLink to="/dashboard/sales" className="sidebar-link" activeClassName="active-link">
                    Sales & Billing
                </NavLink>
                <NavLink to="/dashboard/customers" className="sidebar-link" activeClassName="active-link">
                    Customer Management
                </NavLink>
                <NavLink to="/dashboard/suppliers" className="sidebar-link" activeClassName="active-link">
                    Supplier Management
                </NavLink>
                <NavLink to="/dashboard/reports" className="sidebar-link" activeClassName="active-link">
                    Reports & Analytics
                </NavLink>
                <NavLink to="/dashboard/auth" className="sidebar-link" activeClassName="active-link">
                    Authentication & Authorization
                </NavLink>
            </nav>
        </div>
    );
};

export default Sidebar;

