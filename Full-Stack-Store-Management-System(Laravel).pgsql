Full-Stack-Store-Management-System(SMS)
│
├── backend/(Laravel)
│   ├── app/                                                          # Application-specific code
│   │   ├── Console/
│   │   ├── Exceptions/
│   │   │   └── Handler.php
│   │   ├── Http/                                                     # API route definitions                         
│   │   │   ├── Controllers/
│   │   │   │   ├── API/
│   │   │   │   │   ├── AuthController.php
│   │   │   │   │   ├── ProductController.php
│   │   │   │   │   ├── SaleController.php
│   │   │   │   │   ├── CustomerController.php
│   │   │   │   │	└── ReportController.php
│   │   │   │	└── Admin/ (optional for dashboard)
│   │   │   ├── Requests/
│   │   │   │   ├── ProductRequest.php
│   │   │   │   ├── SaleRequest.php
│   │   │   │	└── CustomerRequest.php
│   │   │   ├── Resources/
│   │   │   │   ├── ProductResourcet.php
│   │   │   │   ├── SaleResourece.php
│   │   │   │	└── CustomerResource.php
│   │   │   └── Middleware/                                                     
│   │   │   	└── RoleMiddleware.php
│   │   ├── Models/                                                    # Eloquent models
│   │   │   ├── User.php                                         
│   │   │   ├── Role.php
│   │   │   ├── Permission.php
│   │   │   ├── Product.php
│   │   │   ├── Sale.php
│   │   │   ├── SaleItem.php
│   │   │   ├── Customer.php
│   │   │   ├── Supplier.php
│   │   │   ├── Purchase.php
│   │   │   ├── PurchaseItem.php
│   │   │   ├── Store.php
│   │   │   ├── StockMovement.php
│   │   │   ├── Payment.php
│   │   │   └── AuditLog.php
│   │   ├── Services/                                                  # Business logic layer (optional)
│   │   │   ├── ProductService.php
│   │   │   ├── SaleService.php
│   │   │   ├── PurchaseService.php
│   │   │   └── ReportService.php          
│   │   ├── Repositories/
│   │   │   ├── Interfaces/
│   │   │   │   ├── ProductRepositoryInterface.php
│   │   │   │   ├── SaleRepositoryInterface.php
│   │   │   │	└── PurchaseRepositoryInterface.php
│   │   │   ├── ProductRepository.php
│   │   │   ├── SaleRepository.php
│   │   │   └── PurchaseRepository.php
│   │   ├── Traits/
│   │   │   └── ApiResourceTrait.php
│   │   └── Policies/ 
│   │       ├── ProductPolicy.php
│   │       └── SalePolicy.php
│   ├── database/                                                   
│   │   ├── factories/
│   │   │   ├── UserFactory.php
│   │   │   ├── ProductFactory.php
│   │   │   ├── CategoryFactory.php
│   │   │   ├── CustomerFactory.php
│   │   │   ├── SupplierFactory.php
│   │   │   ├── SaleFactory.php
│   │   │   ├── SaleItemFactory.php
│   │   │   ├── PurchaseFactory.php
│   │   │   └── PurchaseItemFactory.php
│   │   ├── migrations/
│   │   │   ├── 2026_03_19_000001_create_users_table.php
│   │   │   ├── 2026_03_19_000002_create_roles_and_permissions_table.php
│   │   │   ├── 2026_03_19_000003_create_stores_and_suppliers.php
│   │   │   ├── 2026_03_19_000004_create_categories_products_table.php
│   │   │   ├── 2026_03_19_000005_create_customers_table.php
│   │   │   ├── 2026_03_19_000006_create_sales_and_items_table.php
│   │   │   ├── 2026_03_19_000007_create_purchases_and_items_table.php
│   │   │   ├── 2026_03_19_000008_create_payments_table.php
│   │   │   ├── 2026_03_19_000009_create_stock_movements_table.php
│   │   │   ├── 2026_03_19_000010_create_audit_logs_table.php
│   │   │   └── 2026_03_19_000011_create_notifications_table.php
│   │   └── seeders/
│   │       ├── UserSeeder.php
│   │       ├── RoleSeeder.php
│   │       └── ProductSeeder.php
│   ├── routes/       
│   │   ├── api.php
│   │   └── web.php                                                  # API routes (like FastAPI routers)
│   ├── tests/       
│   │   ├── Feature/
│   │   │   ├── AuthTest.php
│   │   │   ├── ProductTest.php
│   │   │   └── SaleTest.php
│   │   └── Unit/                                                 
│   ├── .env                                                         # Environment variables
│   ├── artisan                                                      # Laravel CLI
│   ├── composer.json                                                # Dependencies
│   ├── composer.lock
│   ├── .gitignore
│   └── README.md                                                   
│
│=>public/index.php => Router => api.php => v1/products.php => Middleware(cors -> auth -> rule) => ProductController => Service => Model => Response(JSON)
│ 
├── Frontend/(HTML, CSS, JavaScript, React)
│   ├── public/
│   │   ├── index.html
│   │   └── favicon.ico
│   ├── src/
│   │   ├── components/                                            
│   │	│   ├── ui/
│   │   │   │   ├── Button.js
│   │   │   │   ├── Input.js
│   │   │   │   ├── Modal.js
│   │   │   │   ├── Alert.js
│   │   │   │   ├── Loader.js
│   │   │   │   ├── Table.js
│   │   │   │	└── DashboardCard.js
│   │	│   ├── layout/
│   │   │   │   ├── DashboardLayout.js
│   │   │   │   ├── AuthLayout.js
│   │   │   │   ├── Header.js
│   │   │   │   ├── Sidebar.js
│   │   │   │   ├── Footer.js
│   │   │   │	└── Breadcrumb.js
│   │	│   └── protected/
│   │   │       ├── ProtectedRoute.js
│   │   │   	└── RoleBaseRoute.js
│   │	│ 
│   │   ├── pages/                                             
│   │	│	├── auth/
│   │	│   ├── Dashboard/
│   │	│   ├── products/
│   │   │   │   ├── ProductList.jsx
│   │   │   │   ├── AddProduct.jsx
│   │   │   │   ├── EditProduct.jsx
│   │   │   │	└── ProductDetails.jsx
│   │	│   ├── stock/
│   │   │   │   ├── StockList.jsx 
│   │   │   │   ├── UpdateStock.jsx
│   │   │   │   ├── StockHistory.jsx
│   │   │   │	└── LowStock.jsx
│   │	│   ├── Orders/
│   │	│   ├── Customer/
│   │	│   ├── Suppliers/
│   │	│   └── Reports/
│   │   ├── services/                                          # API calls to backend (Node.js/MongoDB)
│   │	│   ├── api.js                                         # Central Axios or Fetch call request to backend
│   │	│   ├── authService.js                                
│   │	│   ├── productService.js                     
│   │	│   ├── saleService.js                         
│   │	│   ├── customerService.js
│   │	│   ├── supplierService.js
│   │	│   ├── reportService.js   
│   │   │   └──        
│   │   ├── context/                                           # React context for global state 
│   │	│   ├── AuthContext.jsx                                                         
│   │	│   ├──                           
│   │	│   ├──                            
│   │   │   └──                                 
│   │   ├── hooks/                                             # Custom hook
│   │	│   ├── useAuth.js                                
│   │	│   ├── useFetch.js                                                                  
│   │   │   └──        
│   │   ├── utils/                                             # Utility Helper function
│   │	│   ├── helper.js                                           
│   │   │   └──   
│   │   ├── styles/                                            # Utility Helper function
│   │	│   ├── global.css                                         
│   │   │   └──   
│   │   ├── App.js                                             #  integrate reusable components    
│   │   ├── index.js                                           #  ReactDOM render, React based sms frontend.                           
│   │   └── reportWebVitals.js                                       
│   │   
│   └──                     
├── static/                                     
│   └──    
├── .gitignore 
└── README.md
