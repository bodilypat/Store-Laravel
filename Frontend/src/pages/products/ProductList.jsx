/* <!--
|----------------------Store Management System------------------ 
| Product Management
| -- Add new products, product image upload, Barcode, including details like name, price, stock quantity, and category.
| -- Edit existing product details.
| -- Delete products from the inventory.
| -- View a list of all products with their details.
| -- Search and filter products 
| -- Category management , Category hierarchy 
| -- Stock Quantity tracking , Low-stack alerts
| -- Product analytics 
|--------------------------------------------------------
 --> */
/* src/pages/products/ProductList.jsx */

import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { getProducts, deleteProduct } from '../../services/productService';
import './ProductList.css';

const ProductList = () => {
    const [products, setProducts] = useState([]);

    useEffect(() => {
        getProducts()
            .then(response => {
                setProducts(response.data);
            })
            .catch(error => {
                console.error("There was an error fetching the products!", error);
            });
    }, []);

    const handleDelete = (id) => {
        if (window.confirm("Are you sure you want to delete this product?")) {
            deleteProduct(id)
                .then(() => {
                    setProducts(products.filter(product => product.id !== id));
                })
                .catch(error => {
                    console.error("There was an error deleting the product!", error);
                });
        }
    };

    return (
        <div className="product-list">
            <h1>Product List</h1>
            <Link to="/products/add" className="add-button">Add Product</Link>
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Price</th>
                        <th>Stock</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody> 
                    {products.map(product => (
                        <tr key={product.id}>
                            <td>{product.name}</td>
                            <td>${product.price}</td>
                            <td>{product.stock}</td>
                            <td>
                                <Link to={`/products/${product.id}`} className="view-button">View</Link>
                                <Link to={`/products/edit/${product.id}`} className="edit-button">Edit</Link>
                                <button onClick={() => handleDelete(product.id)} className="delete-button">Delete</button>
                            </td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
}

export default ProductList;

