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
 /*  src/components/ui/Alert.js  */

import React from 'react';
import PropTypes from 'prop-types';
import './Alert.css'; // Assuming you have a CSS file for styling

const Alert = ({ message, type = 'info', onClose }) => {
    return (
        <div className={`alert ${type}`}>
            <span>{message}</span>
            <button className="close-btn" onClick={onClose}>X</button>
        </div>
    );
};

Alert.propTypes = {
    message: PropTypes.string.isRequired,
    type: PropTypes.oneOf(['info', 'success', 'warning', 'error']),
    onClose: PropTypes.func.isRequired,
};



