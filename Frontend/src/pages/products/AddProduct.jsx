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
/* src/pages/products/AddProduct.jsx */
import React, { useState } from 'react';
import { useHistory } from 'react-router-dom';
import { addProduct } from '../../services/productService';
import './AddProduct.css';
const AddProduct = () => {
    const [name, setName] = useState('');
    const [price, setPrice] = useState('');
    const [stock, setStock] = useState('');
    const history = useHistory();

    const handleSubmit = (e) => {
        e.preventDefault();
        const newProduct = { name, price: parseFloat(price), stock: parseInt(stock) };
        addProduct(newProduct)
            .then(() => {
                history.push('/products');
            }
        )
            .catch(error => {
                console.error("There was an error adding the product!", error);
        });
    };

    return (
        <div className="add-product">
            <h1>Add Product</h1>
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
                <button type="submit" className="submit-button">Add Product</button>
            </form>
        </div>
    );
};

export default AddProduct;

