Full-Stack-Store-Management-System(SMS)
│
├── backend/(Laravel)
│   ├── app/                                                          # Application-specific code
│   │   ├── Console/
│   │   ├── Exceptions/
│   │   │   └── Handler.php
│   │   ├── Http/                                                     # API route definitions                         
│   │   │   ├── Controllers/
│   │   │   │   ├── AuthController.php
│   │   │   │   ├── ProductController.php
│   │   │   │   ├── CategoryController.php
│   │   │   │   ├── SaleController.php
│   │   │   │   ├── PurchaseController.php
│   │   │   │   ├── CustomerController.php
│   │   │   │   ├── SupplierController.php
│   │   │   │	└── DashboardController.php
│   │   │   ├── Middleware/
│   │   │   │   ├── AuthMiddlware.php
│   │   │   │   ├── RoleMiddlware.php
│   │   │   │	└── ErrorHandler.php
│   │   │   └── request/                                                     
│   │   │       ├── Auth/
│   │   │       │   ├── LoginRequest.php
│   │   │       │	└── RegisterRequest.php
│   │   │       ├── Product/
│   │   │       │   ├── CreateProductRequest.php
│   │   │       │	└── UpdateProductRequest.php
│   │   │       ├── Sale/
│   │   │       │	└── createSaleRequest.php
│   │   │   	└── Purchase/
│   │   │        	└── CreatePurchaseRequest.php
│   │   ├── Models/                                                    # Eloquent models
│   │   │   ├── User.php                                         
│   │   │   ├── Product.php
│   │   │   ├── Category.php
│   │   │   ├── Sale.php
│   │   │   ├── SaleItem.php
│   │   │   ├── Purchase.php
│   │   │   ├── PurchaseItem.php
│   │   │   ├── Customer.php
│   │   │   └── Supplier.php
│   │   ├── Services/                                                  # Business logic layer (optional)
│   │   │   ├── AuthService.php
│   │   │   ├── ProductService.php
│   │   │   ├── SaleService.php
│   │   │   ├── PurchaseService.php
│   │   │   ├── CustomerService.php                       
│   │   │   ├── SupplierService.php
│   │   │   └── DashboardService.php          
│   │   ├── Repositories/
│   │   │   ├── ProductRepository.php
│   │   │   ├── SaleRepositories.php
│   │   │   ├── PurchaseRepository.php                       
│   │   │   ├── CustomerRepository.php
│   │   │   └── SupplierRepository.php
│   │   ├── Providers/
│   │   │   ├── AppServiceProvider.php
│   │   │   ├── EmailServiceProvider.php                       
│   │   │   ├── SmsServiceProvider.php
│   │   │   └── PaymentServiceProvider.php
│   │   └── Helpers/ 
│   │       ├── ResponseHelper.php
│   │       ├── ValidatorHelper.php
│   │       └── Constants.php
│   ├── bootstrap/    
│   │   └── app.php                                         
│   ├── config/       
│   │   ├── app.php
│   │   ├── auth.php
│   │   ├── database.php
│   │   └── services.php
│   ├── database/                                                    # Laravel migration
│   │   ├── factories/
│   │   ├── migrations/
│   │   │   ├── create_users_table.php
│   │   │   ├── create_categories_table.php
│   │   │   ├── create_products_table.php
│   │   │   ├── create_sales_table.php
│   │   │   ├── create_sale_items_table.php
│   │   │   ├── create_purcahses_table.php
│   │   │   ├── create_purcahse_items_table.php
│   │   │   ├── create_customers_table.php
│   │   │   └── create_suppliers_table.php
│   │   └── seeders/
│   │       ├── DatabaseSeeder.php
│   │       ├── UserSeeder.php
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
│   │	│   ├── Inventory.js
│   │	│   ├── Sales.js
│   │	│   ├── Purchases.js
│   │	│   ├── Customers.js
│   │	│   ├── Suppliers.js
│   │	│   └── 
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
