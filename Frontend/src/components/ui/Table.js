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
/* src/components/ui/Table.js */
import React from 'react';
import PropTypes from 'prop-types';

const Table = ({ columns, data }) => {
    return (
        <table className="min-w-full bg-white border border-gray-200">
            <thead>
                <tr>
                    {columns.map((col) => (
                        <th key={col.key} className="py-2 px-4 border-b">
                            {col.title}
                        </th>
                    ))}
                </tr>
            </thead>
            <tbody>
                {data.map((row, index) => (
                    <tr key={index} className={index % 2 === 0 ? 'bg-gray-100' : 'bg-white'}>
                        {columns.map((col) => (
                            <td key={col.key} className="py-2 px-4 border-b">
                                {row[col.key]}
                            </td>
                        ))}
                    </tr>
                ))}
            </tbody>
        </table>
    );
};

Table.propTypes = {
    columns: PropTypes.arrayOf(
        PropTypes.shape({
            key: PropTypes.string.isRequired,
            title: PropTypes.string.isRequired
        })
    ).isRequired,
    data: PropTypes.arrayOf(PropTypes.object).isRequired
};

export default Table;
