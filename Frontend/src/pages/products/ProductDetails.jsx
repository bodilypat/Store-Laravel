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
/* src/pages/products/ProductDetails.jsx */

import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import { getProductById } from '../../services/productService';
import './ProductDetails.css';

const ProductDetails = () => {
    const { id } = useParams();
    const [product, setProduct] = useState(null);

    useEffect(() => {
        getProductById(id)
            .then(response => {
                setProduct(response.data);
            })
            .catch(error => {
                console.error("There was an error fetching the product!", error);
            });
    }, [id]);

    if (!product) {
        return <div>Loading...</div>;
    }

    return (
        <div className="product-details">
            <h1>{product.name}</h1>
            <p><strong>Price:</strong> ${product.price}</p>
            <p><strong>Stock:</strong> {product.stock}</p>
            <p><strong>Category:</strong> {product.category}</p>
            <p><strong>Description:</strong> {product.description}</p>
        </div>
    );
}

export default ProductDetails;

