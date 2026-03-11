Full-Stack-Store-Management-System(SMS)
│
├── backend/(Laravel)
│   ├── app/                                                          # Application-specific code
│   │   ├── Console/
│   │   ├── Exceptions/
│   │   ├── Http/                                                     # API route definitions                         
│   │   │   ├── AuthMiddleware.php
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
│   │   │   │	└── HandleErrors.php
│   │   │   └── request/                                                     
│   │   │       ├── CreateProductRequest.php
│   │   │       ├── UpdateProductRequest.php
│   │   │   	└── ...  
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
│   │   │   ├── SaleService.php
│   │   │   ├──                        
│   │   │   └──           
│   │   └── Providers/ 
│   │       ├── EmailServiceProvider.php
│   │       ├── SMSServiceProvider.php
│   │       └── PaymentServiceProvider.php
│   ├── bootstrap/    
│   │   └── app.php                                         
│   ├── config/       
│   │   ├── app.php
│   │   ├── database.php
│   │   └── services.php
│   ├── database/                                                    # Laravel migration
│   │   ├── migrations/
│   │   ├── seeders/
│   │   └── factories/
│   ├── routes/       
│   │   └── api.php                                                  # API routes (like FastAPI routers)
│   ├── tests/       
│   │   ├── Feature/
│   │   └── Unit/                                                 
│   ├── .env                                                         # Environment variables
│   ├── artisan                                                      # Laravel CLI
│   ├── composer.json                                                # Dependencies
│   ├── composer.lock
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
