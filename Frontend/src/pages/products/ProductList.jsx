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
/* src/pages/products/ProductList.jsx */
import React, { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { getProducts, deleteProduct } from '../../services/productService';
import './ProductList.css';

const ProductList = () => {
    const [products, setProducts] = useState([]);

    useEffect(() => {
        axios.get("http://localhost:8080/api/products")
            .then(response => {
                setProducts(response.data);
            }
            )
            .catch(error => {
                console.error("There was an error fetching the products!", error);
            });
    }, []);

    const handleDelete = (id) => {
        if (window.confirm("Are you sure you want to delete this product?")) {
            deleteProduct(id)
                .then(() => {
                    setProducts(products.filter(product => product.id !== id));
                }
                )
                .catch(error => {
                    console.error("There was an error deleting the product!", error);
                });
        }
    };

    return (
        <div className="product-list">
            <h1>Product List</h1>
            <Link to="/products/add" className="add-product-button">Add Product</Link>
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
                            <td>${product.price.toFixed(2)}</td>
                            <td>{product.stock}</td>
                            <td>
                                <Link to={`/products/edit/${product.id}`} className="edit-button">Edit</Link>
                                <button onClick={() => handleDelete(product.id)} className="delete-button">Delete</button>
                            </td>
                        </tr>
                    ))}
                </tbody>
            </table>
        </div>
    );
};


