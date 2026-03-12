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
/* src/components/protected/RoleBaseRoute.js */
import React from 'react';
import { Route, Redirect } from 'react-router-dom';
import { useAuth } from '../../context/AuthContext';

const RoleBaseRoute = ({ component: Component, allowedRoles, ...rest }) => {
    const { isAuthenticated, user } = useAuth();
    return (
        <Route
            {...rest}
            render={props =>
                isAuthenticated && allowedRoles.includes(user.role) ? (
                    <Component {...props} />
                ) : (
                    <Redirect to="/login" />
                )
            }
        />
    );
};

export default RoleBaseRoute;


