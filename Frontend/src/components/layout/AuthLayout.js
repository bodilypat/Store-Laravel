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
/* src/components/layout/AuthLayout.js */

import React from 'react';
import PropTypes from 'prop-types';
import './AuthLayout.css';

const AuthLayout = ({ children }) => {
    return (
        <div className="auth-layout">
            <div className="auth-container">
                <div className="auth-header">
                    <h1 className="auth-title">Store Management System</h1>
                    <p className="auth-subtitle">Please sign in to your account</p>
                </div>
                <div className="auth-content">
                    {children}
                </div>
            </div>
        </div>
    );
};

AuthLayout.propTypes = {
    children: PropTypes.node.isRequired
};

export default AuthLayout;

