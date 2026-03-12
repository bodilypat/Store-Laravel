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
/* src/components/protected/ProtectedRoute.js */
import React from 'react';
import { Route, Redirect } from 'react-router-dom';
import { useAuth } from '../../context/AuthContext';

const ProtectedRoute = ({ component: Component, ...rest }) => {
    const { isAuthenticated } = useAuth();
    return (
        <Route
            {...rest}
            render={props =>
                isAuthenticated ? (
                    <Component {...props} />
                ) : (
                    <Redirect to="/login" />
                )
            }
        />
    );
};

export default ProtectedRoute;




