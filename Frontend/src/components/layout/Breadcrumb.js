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
/* src/components/layout/Breadcrumb.js */

import React from 'react';
import { Link, useLocation } from 'react-router-dom';
import './Breadcrumb.css'; // Import CSS for styling

const Breadcrumb = () => {
    const location = useLocation();
    const pathnames = location.pathname.split('/').filter(x => x);

    return (
        <nav className="breadcrumb">
            <Link to="/dashboard">Dashboard</Link>
            {pathnames.map((value, index) => {
                const to = `/${pathnames.slice(0, index + 1).join('/')}`;
                return (
                    <span key={to}>
                        {' > '}
                        <Link to={to}>{value.charAt(0).toUpperCase() + value.slice(1)}</Link>
                    </span>
                );
            })}
        </nav>
    );
};

export default Breadcrumb;








