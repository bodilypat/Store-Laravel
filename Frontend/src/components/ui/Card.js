/* <!--
|----------------------Store Management System------------------ 
| Product & Inventory Management
| Sales & Billing(POS)
| Customer Management 
| Supplier Management
| Reports & Analytics
| Authentication & Authorization
|--------------------------------------------------------
 -->  */
/* src/components/ui/Card.js */
import React from 'react';
import PropTypes from 'prop-types';
import './Card.css'; // Assuming you have a CSS file for styling

const Card = ({ title, children }) => {
    return (
        <div className="card">
            {title && <h3 className="card-title">{title}</h3>}
            <div className="card-content">
                {children}
            </div>
        </div>
    );
};

Card.propTypes = {
    title: PropTypes.string,
    children: PropTypes.node.isRequired
};

export default Card;



