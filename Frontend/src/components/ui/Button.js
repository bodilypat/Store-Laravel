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
// <!-- src/components/ui/Button.js -->

import React from 'react';
import PropTypes from 'prop-types';
import './Button.css'; // Assuming you have a CSS file for styling
const Button = ({ label, onClick, type = 'button', disabled = false }) => {
  return (
    <button className={`btn ${type}`} onClick={onClick} disabled={disabled}>
      {label}
    </button>
  );
};

Button.propTypes = {
  label: PropTypes.string.isRequired,
  onClick: PropTypes.func.isRequired,
  type: PropTypes.oneOf(['button', 'submit', 'reset']),
  disabled: PropTypes.bool,
};

export default Button;
