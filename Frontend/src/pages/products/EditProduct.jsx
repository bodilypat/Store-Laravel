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
/* src/pages/products/EditProduct.jsx */

import React, { useState, useEffect } from 'react';
import { useParams, useHistory } from 'react-router-dom';
import { getProductById, updateProduct } from '../../services/productService';
import './EditProduct.css';

const EditProduct = () => {
    const { id } = useParams();
    const [name, setName] = useState('');
    const [price, setPrice] = useState('');
    const [stock, setStock] = useState('');
    const history = useHistory();

    useEffect(() => {
        getProductById(id)
            .then(response => {
                const product = response.data;
                setName(product.name);
                setPrice(product.price);
                setStock(product.stock);
            })
            .catch(error => {
                console.error("There was an error fetching the product!", error);
            });
    }, [id]);

    const handleSubmit = (e) => {
        e.preventDefault();
        const updatedProduct = { id, name, price: parseFloat(price), stock: parseInt(stock) };
        updateProduct(id, updatedProduct)
            .then(() => {
                history.push('/products');
            })
            .catch(error => {
                console.error("There was an error updating the product!", error);
            });
    };

    return (
        <div className="edit-product">
            <h1>Edit Product</h1>
            <form onSubmit={handleSubmit}>
                <div className="form-group">
                    <label>Name:</label>
                    <input
                        type="text"
                        value={name}
                        onChange={(e) => setName(e.target.value)}
                        required
                    />
                </div>
                <div className="form-group">    
                    <label>Price:</label>
                    <input
                        type="number"
                        value={price}
                        onChange={(e) => setPrice(e.target.value)}
                        required
                    />
                </div>
                <div className="form-group">
                    <label>Stock:</label>
                    <input
                        type="number"
                        value={stock}
                        onChange={(e) => setStock(e.target.value)}  
                        required
                    />
                </div>
                <button type="submit" className="submit-button">Update Product</button>
            </form>
        </div>
    );
};

export default EditProduct;



