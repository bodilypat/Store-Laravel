Fullstack-Sale-Management-System(SMS)
│   
├── Frontend (React.js)
│   │
│   ├── public/
│   │   ├── index.html
│   │   └── favicon.ico
│   ├── src/
│   │   ├── assets/                                            
│   │	│   ├── images/
│   │	│   ├── icons/
│   │	│   └── styles/
│   │	│
│   │   ├── components/                                          # Shared reusable components 
│   │	│   ├── ui/
│   │   │   │   ├── Button.jsx 
│   │   │   │   ├── Input.jsx 
│   │   │   │   ├── Select.jsx 
│   │   │   │   ├── Textarea.jsx
│   │   │   │   ├── Checkbox.jsx
│   │   │   │   ├── Modal.jsx 
│   │   │   │   ├── Card.jsx
│   │   │   │   ├── Table.jsx 
│   │   │   │   ├── Pagination.jsx
│   │   │   │   ├── SearchInput.jsx 
│   │   │   │   ├── Badge.jsx 
│   │   │   │   ├── Alert.jsx 
│   │   │   │   ├── Dropdown.jsx 
│   │   │   │   ├── Spinner.jsx 
│   │   │   │   ├── Loader.jsx 
│   │   │   │   ├── EmptyState.jsx 
│   │   │   │   ├── ConfirmDialog.jsx 
│   │   │   │	└── ErrorMessage.jsx 
│   │	│   ├── forms/
│   │	│   ├── chart/
│   │	│   ├── tables/
│   │	│   └── feedback/
│   │	│ 
│   │   ├── layouts/                                            
│   │	│   ├── MainLayout.jsx 
│   │	│   ├── AuthLayout.jsx 
│   │	│   ├── DashboardLayout.jsx 
│   │	│   ├── Sidebar.jsx 
│   │	│   ├── Header.jsx 
│   │	│   ├── Footer.jsx
│   │	│   └── Breadcrumbs.jsx 
│   │   ├── config/                                           
│   │	│   ├── apiConfig.js                                       
│   │	│   ├── appConfig.js
│   │   │   └── navigation.js 
│   │	│
│   │   ├── services/                                          # Global API infra 
│   │	│   ├── api.js                                         # Axios instance
│   │	│   ├── apiError.js
│   │   │   └── interceptors.js 
│   │	│
│   │   ├── hooks/                                             # Global hooks
│   │	│   ├── useDebounce.js 
│   │	│   ├── useFetch.js 
│   │	│   ├── usePagination.js                          
│   │	│   ├── useModal.js                                                             
│   │   │   └── useLocalStorage.js      
│   │   ├── routes/
│   │	│   ├── AppRoutes.jsx                                                                                
│   │	│   ├── ProtectedRoute.jsx
│   │	│   ├── PublicRoute.jsx
│   │   │   └── RouteError.jsx    
│   │   │
│   │   ├── store/                                            # Global state                                      
│   │	│   ├── index.js                                         
│   │	│   ├── authStore.js
│   │   │   └── uiStore.js 
│   │	│
│   │   ├── utils/                                             
│   │	│   ├── helpers.js                                           
│   │	│   ├── formatters.js
│   │	│   ├── validators.js
│   │	│   ├── dateUtils.js
│   │   │   └── constants.js
│   │   │
│   │   ├── features/                                             
│   │	│	├── auth/
│   │   │   │   ├── components/
│   │   │   │   │   ├── LoginForm.jsx 
│   │   │   │   │   ├── Registerform.jsx 
│   │   │   │   │   ├── ForgotPasswordForm.jsx
│   │   │   │   │   ├── ResetPasswordForm
│   │   │   │   │   ├── ChangePasswrodForm.jsx  
│   │   │   │   │   ├── AuthGuard.jsx 
│   │   │   │   │   ├── GuestGuard.jsx
│   │   │   │   │   ├── PermissionGuard.jsx                          
│   │   │   │	│   └── RoleGuard.jsx 
│   │   │   │   ├── pages/
│   │   │   │   │   ├── Login.jsx  
│   │   │   │   │   ├── Register.jsx 
│   │   │   │   │   ├── ForgotPassword.jsx
│   │   │   │   │   ├── ResetPassword.jsx       
│   │   │   │   │   ├── ChangePassword.jsx
│   │   │   │	│   └── Unauthorized.jsx 
│   │   │   │   ├── hooks/
│   │   │   │   │   ├── useAuth.js                     
│   │   │   │	│   └── usePermission.js
│   │   │   │   ├── services/
│   │   │   │	│   └── authApi.js
│   │   │   │   ├── utils/
│   │   │   │   │   ├── authHelpers.js    
│   │   │   │	│   └── tokenHelpers.js
│   │   │   │   ├── constants/
│   │   │   │	│   └── authConstants.js
│   │   │   │	└── index.js  
│   │   │   │
│   │	│   ├── products/
│   │   │   │   ├── components/
│   │   │   │   │   ├── ProductTable.jsx                         # Product data table 
│   │   │   │   │   ├── ProductForm.jsx                          # Shared form for add/edit product 
│   │   │   │   │   ├── ProductCard.jsx                          # Card layout for grid view 
│   │   │   │   │   ├── ProductDetails.jsx  
│   │   │   │   │   ├── ProductSearch.jsx                            
│   │   │   │   │   ├── ProductFilter.jsx  
│   │   │   │   │   ├── ProductStatus.jsx                      
│   │   │   │	│   └── ProductActions.jsx                  
│   │   │   │   ├── pages/
│   │   │   │   │   ├── Products.jsx
│   │   │   │   │   ├── AddProduct.jsx                           
│   │   │   │   │   ├── EditProduct.jsx                                              
│   │   │   │	│   └── ProductDetails.jsx    
│   │   │   │   ├── hooks/
│   │   │   │	│   └── useProducts.js 
│   │   │   │   ├── services/
│   │   │   │	│   └── productApi.js                      
│   │   │   │   ├── utils/
│   │   │   │   │   ├── ProductHelpers.js 
│   │   │   │	│   └── productFormatter.js
│   │   │   │	└── index.js 
│   │   │   │
│   │	│   ├── categories/
│   │   │   │   ├── components/
│   │   │   │   │   ├── CategoryForm.jsx 
│   │   │   │   │   ├── CategoryTable.jsx                          
│   │   │   │   │   ├── CategoryCard.jsx                         
│   │   │   │   │   ├── CategoryDetails.jsx                        
│   │   │   │   │   ├── CategorySearch.jsx 
│   │   │   │   │   ├── CategoryFilters.jsx 
│   │   │   │	│   └── CategoryActions.jsx
│   │   │   │   ├── pages/ 
│   │   │   │   │   ├── Categories.jsx
│   │   │   │   │   ├── AddCategory.jsx                          # Create a new category 
│   │   │   │   │   ├── EditCategory.jsx                         # Update an existing categories 
│   │   │   │	│   └── CategoryDetails.jsx                      # View category information and related products 
│   │   │   │   ├── hooks/
│   │   │   │	│   └── useCategories.js 
│   │   │   │   ├── services/
│   │   │   │	│   └── categoryApi.js 
│   │   │   │   ├── utils/
│   │   │   │	│   └── categoryHelpers.js 
│   │   │   │   ├── constants/
│   │   │   │	│   └── categoryConstants.js
│   │   │   │	└── index.js 
│   │   │   │
│   │	│   ├── customers/
│   │   │   │   ├── components/
│   │   │   │   │   ├── CustomerForm.jsx                         
│   │   │   │   │   ├── CustomerTable.jsx                        
│   │   │   │   │   ├── CustomerCard.jsx                         
│   │   │   │   │   ├── CustomerDetails.jsx                        
│   │   │   │   │   ├── CustomerSearch.jsx
│   │   │   │   │   ├── CustomerFilters.jsx                         
│   │   │   │   │   ├── CustomerStats.jsx                        
│   │   │   │	│   └── CustomerActions.jsx                   
│   │   │   │   ├── pages/
│   │   │   │   │   ├── Customers.jsx
│   │   │   │   │   ├── AddCustomer.jsx
│   │   │   │   │   ├── EditCustomer.jsx
│   │   │   │	│   └── CustomerDetails.jsx 
│   │   │   │   ├── services/
│   │   │   │	│   └── customerApi.js 
│   │   │   │   ├── hooks/
│   │   │   │	│   └── useCustomers.js 
│   │   │   │   ├── utils/
│   │   │   │   │   ├── customerHelpers.js 
│   │   │   │	│   └── customerFormatters.js 
│   │   │   │   ├── constants/
│   │   │   │	│   └── customerConstants.js 
│   │   │   │	└── index.js 
│   │   │   │
│   │	│   ├── suppliers/
│   │   │   │   ├── components/
│   │   │   │   │   ├── SupplierForm.jsx                         
│   │   │   │   │   ├── SupplierTable.jsx                        
│   │   │   │   │   ├── SupplierCard.jsx                         
│   │   │   │   │   ├── SupplierDetails.jsx                        
│   │   │   │   │   ├── SupplierSearch.jsx
│   │   │   │   │   ├── SupplierFilters.jsx                                                 
│   │   │   │	│   └── SupplierActions.jsx                   
│   │   │   │   ├── pages/
│   │   │   │   │   ├── Suppliers.jsx
│   │   │   │   │   ├── AddSupplier.jsx
│   │   │   │   │   ├── EditSupplier.jsx
│   │   │   │	│   └── SupplierDetails.jsx 
│   │   │   │   ├── hooks/
│   │   │   │	│   └── useSuppliers.js
│   │   │   │   ├── services/
│   │   │   │	│   └── supplierApi.js  
│   │   │   │   ├── utils/
│   │   │   │   │   ├── supplierHelpers.js 
│   │   │   │	│   └── supplierFormatters.js 
│   │   │   │   ├── constants/
│   │   │   │	│   └── supplierConstants.js 
│   │   │   │	└── index.js 
│   │   │   │
│   │	│   ├── purchases/
│   │   │   │   ├── components/
│   │   │   │   │   ├── PurchaseForm.jsx                         
│   │   │   │   │   ├── PurchaseTable.jsx                        
│   │   │   │   │   ├── PurchaseDetails.jsx                         
│   │   │   │   │   ├── PurchaseItems.jsx                        
│   │   │   │   │   ├── ProductSelector.jsx
│   │   │   │   │   ├── SupplierSelector.jsx                                                 
│   │   │   │   │   ├── QuantityInput.jsx 
│   │   │   │   │   ├── PurchaseSummary.jsx 
│   │   │   │   │   ├── PurchaseStatus.jsx
│   │   │   │	│   └── PurchaseSearch.jsx                   
│   │   │   │   ├── pages/
│   │   │   │   │   ├── Purchases.jsx
│   │   │   │   │   ├── NewPurchase.jsx
│   │   │   │   │   ├── EditPurchase.jsx
│   │   │   │	│   └── PurchaseDetails.jsx 
│   │   │   │   ├── hooks/
│   │   │   │   │   ├── usePurchases.js 
│   │   │   │	│   └── useCreatePurchase.js
│   │   │   │   ├── services/
│   │   │   │	│   └── purchaseApi.js  
│   │   │   │   ├── utils/
│   │   │   │   │   ├── purchaseCalculations.js 
│   │   │   │	│   └── purchaseHelpers.js 
│   │   │   │   ├── constants/
│   │   │   │	│   └── purchaseConstants.js 
│   │   │   │	└── index.js 
│   │   │   │
│   │	│   ├── sales/
│   │   │   │   ├── components/
│   │   │   │   │   ├── SaleForm.jsx 
│   │   │   │   │   ├── SaleTable.jsx 
│   │   │   │   │   ├── SaleDetails.jsx
│   │   │   │   │   ├── SaleItems.jsx 
│   │   │   │   │   ├── ProductSelector.jsx 
│   │   │   │   │   ├── CustomerSelector.jsx 
│   │   │   │   │   ├── QuantityInput.jsx 
│   │   │   │   │   ├── DiscountInput.jsx 
│   │   │   │   │   ├── TaxInput.jsx 
│   │   │   │   │   ├── SaleSummary.jsx 
│   │   │   │   │   ├── PaymentSelector.jsx 
│   │   │   │   │   ├── SaleStatus.jsx
│   │   │   │	│   └── SalesSearch.jsx
│   │   │   │   ├── pages/
│   │   │   │   │   ├── Sales.jsx 
│   │   │   │   │   ├── NewSale.jsx 
│   │   │   │   │   ├── EditSale.jsx 
│   │   │   │	│   └── SaleDetails.jsx 
│   │   │   │   ├── hooks/                
│   │   │   │   │   ├── useSales.js 
│   │   │   │   │   ├── useSale.js
│   │   │   │	│   └── useCreateSale.js 
│   │   │   │   ├── services/
│   │   │   │	│   └── saleApi.js
│   │   │   │   ├── utils/
│   │   │   │   │   ├── saleCalculations.js 
│   │   │   │   │   ├── saleHelpers.js
│   │   │   │	│   └── saleFormatter.js
│   │   │   │   ├── constants/
│   │   │   │	│   └── saleConstants.js
│   │   │   │	└── index.js 
│   │   │   │
│   │	│   ├── dashboard/
│   │   │   │   ├── components/
│   │   │   │   │   ├── StatCard.jsx                             
│   │   │   │   │   ├── SalesOverview.jsx                        
│   │   │   │   │   ├── RevenueChart.jsx                         
│   │   │   │   │   ├── SalesByCategory.jsx
│   │   │   │   │   ├── RecentSales.jsx                          
│   │   │   │   │   ├── TopProducts.jsx                          
│   │   │   │   │   ├── TopCustomers.jsx
│   │   │   │   │   ├── LowStockProducts.jsx                         
│   │   │   │	│   └── QuickActions.jsx
│   │   │   │   ├── pages/
│   │   │   │	│   └── Dashboard.jsx 
│   │   │   │   ├── hooks/
│   │   │   │	│   └── useDashboard.js 
│   │   │   │   ├── services/
│   │   │   │	│   └── dashboardApi.js 
│   │   │   │   ├── utils/
│   │   │   │	│   └── dashboardHelpers.js
│   │   │   │	└── index.js 
│   │   │   │
│   │	│   ├── inventory/
│   │   │   │   ├── components/
│   │   │   │   │   ├── InventoryTable.jsx 
│   │   │   │   │   ├── InventoryCard.jsx                          
│   │   │   │   │   ├── InventoryFilters.jsx                         
│   │   │   │   │   ├── InventorySearch.jsx                        
│   │   │   │   │   ├── InventoryStats.jsx
│   │   │   │   │   ├── StockInForm.jsx 
│   │   │   │   │   ├── StockOutForm.jsx
│   │   │   │   │   ├── StockAdjustmentForm.jsx 
│   │   │   │	│   └── StockMovementTable.jsx
│   │   │   │   ├── pages/ 
│   │   │   │   │   ├── Inventory.jsx 
│   │   │   │   │   ├── StockIn.jsx  
│   │   │   │   │   ├── StockOut.jsx  
│   │   │   │   │   ├── StockAdjustment.jsx 
│   │   │   │	│   └── StockHistory.jsx 
│   │   │   │   ├── hooks/
│   │   │   │	│   └── useInventory.js 
│   │   │   │   ├── services/
│   │   │   │	│   └── inventoryA pi.js 
│   │   │   │   ├── utils/
│   │   │   │	│   └── InventoryHelpers.js 
│   │   │   │   ├── constants/
│   │   │   │	│   └── InventoryConstants.js 
│   │   │   │	└── index.js 
│   │   │   │
│   │	│   ├── payments/
│   │   │   │   ├── components/
│   │   │   │   │   ├── PaymentTable.jsx 
│   │   │   │   │   ├── PaymentForm.jsx
│   │   │   │   │   ├── PaymentDetails.jsx                         
│   │   │   │   │   ├── PaymentMethod.jsx                        
│   │   │   │   │   ├── PaymentStatus.jsx 
│   │   │   │   │   ├── PaymentSummary.jsx
│   │   │   │   │   ├── PaymentFilters.jsx 
│   │   │   │   │   ├── PaymentSearch.jsx
│   │   │   │   │   ├── RefundForm.jsx 
│   │   │   │	│   └── PaymentStats.jsx
│   │   │   │   ├── pages/ 
│   │   │   │   │   ├── Payments.jsx 
│   │   │   │   │   ├── PaymentDetails.jsx  
│   │   │   │   │   ├── RecordPayment.jsx  
│   │   │   │	│   └── RefundPayment.jsx 
│   │   │   │   ├── hooks/
│   │   │   │   │   ├── usePayments.js
│   │   │   │	│   └── usePayment.js 
│   │   │   │   ├── services/
│   │   │   │	│   └── PaymentApi.js 
│   │   │   │   ├── utils/
│   │   │   │   │   ├── PaymentHelpers.js 
│   │   │   │	│   └── PaymentFormatter.js  
│   │   │   │   ├── constants/
│   │   │   │	│   └── PaymentConstants.js 
│   │   │   │	└── index.js 
│   │   │   │
│   │	│   ├── invoices/
│   │   │   │   ├── components/
│   │   │   │   │   ├── InvoiceTable.jsx 
│   │   │   │   │   ├── InvoiceDetails.jsx                          
│   │   │   │   │   ├── InvoiceHeader.jsx                         
│   │   │   │   │   ├── InvoiceItems.jsx                        
│   │   │   │   │   ├── InvoiceSummary.jsx 
│   │   │   │   │   ├── InvoiceCustomer.jsx
│   │   │   │   │   ├── InvoiceStatus.jsx
│   │   │   │   │   ├── InvoiceFilters.jsx 
│   │   │   │   │   ├── InvoiceSearch.jsx
│   │   │   │   │   ├── PaymentStatus.jsx
│   │   │   │	│   └── InvoiceActions.jsx
│   │   │   │   ├── pages/ 
│   │   │   │   │   ├── Invoices.jsx 
│   │   │   │   │   ├── InvoiceDetails.jsx  
│   │   │   │	│   └── PrintInvoice.jsx 
│   │   │   │   ├── hooks/
│   │   │   │	│   └── useInvoices.js 
│   │   │   │   ├── services/
│   │   │   │	│   └── invoiceApi.js
│   │   │   │   ├── utils/
│   │   │   │   │   ├── InvoiceHelpers.js 
│   │   │   │	│   └── InvoiceFormater.js 
│   │   │   │   ├── constants/
│   │   │   │	│   └── InvoiceConstants.js 
│   │   │   │	└── index.js 
│   │   │   │
│   │	│   ├── reports/
│   │   │   │   ├── components/
│   │   │   │   │   ├── ReportFilters.jsx 
│   │   │   │   │   ├── ReportHeader.jsx                          
│   │   │   │   │   ├── ReportSummary.jsx                         
│   │   │   │   │   ├── SaleReportTable.jsx                        
│   │   │   │   │   ├── SalesChart.jsx 
│   │   │   │   │   ├── RevenueChart.jsx
│   │   │   │   │   ├── ProductSalesTable.jsx
│   │   │   │   │   ├── CustomerSalesTable.jsx 
│   │   │   │   │   ├── InventoryReportTable.jsx
│   │   │   │   │   ├── PaymentReportTable.jsx
│   │   │   │   │   ├── ProfitLossSummry.jsx
│   │   │   │   │   ├── ReportExport.jsx
│   │   │   │	│   └── InvoiceActions.jsx
│   │   │   │   ├── pages/ 
│   │   │   │   │   ├── Reports.jsx 
│   │   │   │   │   ├── SalesReport.jsx 
│   │   │   │   │   ├── RevenueReport.jsx
│   │   │   │   │   ├── ProductReport.jsx 
│   │   │   │   │   ├── CustomerReport.jsx 
│   │   │   │   │   ├── InventoryReport.jsx 
│   │   │   │   │   ├── PaymentReport.jsx   
│   │   │   │	│   └── ProfitLossReport.jsx 
│   │   │   │   ├── hooks/
│   │   │   │   │   ├── useSalesReport.js 
│   │   │   │   │   ├── useProductReport.js 
│   │   │   │   │   ├── useCustomerReport.js 
│   │   │   │	│   └── useInventoryReport.js 
│   │   │   │   ├── services/
│   │   │   │	│   └── reportApi.js
│   │   │   │   ├── utils/
│   │   │   │   │   ├── reportHelpers.js 
│   │   │   │   │   ├── reportFormatter.js
│   │   │   │	│   └── reportCalculations.js 
│   │   │   │   ├── constants/
│   │   │   │	│   └── reportConstants.js 
│   │   │   │	└── index.js 
│   │   │   │
│   │	│   └── users/
│   │   │       ├── components/
│   │   │       │   ├── UserTable.jsx 
│   │   │       │   ├── UserForm.jsx 
│   │   │       │   ├── UserDetails.jsx 
│   │   │       │   ├── UserAvatar.jsx 
│   │   │       │   ├── UserStatus.jsx 
│   │   │       │   ├── UserRole.jsx 
│   │   │       │   ├── UserFilters.jsx 
│   │   │       │   ├── UserSearch.jsx 
│   │   │       │   ├── RoleSelector.jsx 
│   │   │       │   ├── PermissionSelector.jsx 
│   │   │       │   ├── PasswordForm.jsx 
│   │   │    	│   └── UserActions.jsx
│   │   │       ├── pages/
│   │   │       │   ├── Users.jsx
│   │   │       │   ├── NewUser.jsx
│   │   │       │   ├── UserDetails.jsx
│   │   │       │   ├── EditUser.jsx
│   │   │    	│   └── UserProfile.jsx
│   │   │       ├── hooks/
│   │   │       │   ├── useUsers.js 
│   │   │    	│   └── useUser.js
│   │   │       ├── services/
│   │   │   	│   └── userApi.js
│   │   │       ├── utils/
│   │   │   	│   └── userHelpers.js
│   │   │       ├── constants/
│   │   │   	│   └── userConstants.js
│   │   │    	└── index.js
│   │	│   
│   │   ├── styles/   
│   │	│   ├── global.css 
│   │	│   ├── variables.css                                                                                
│   │   │   └── print.css                                     
│   │   ├── App.js                                             # Main routing & layout integration                           
│   │   └── main.jsx                                           # ReactDOM render, React based sms frontend.                                 
│   ├── .env 
│   ├── .env.example
│   ├── package.json
│   └── README.md                     
│
├── backend(Laravel)
│   ├── app/
│   │   ├── Console/                                           
│   │   │   └── Commands/
│   │   │
│   │   ├── Enums/ 
│   │   │   ├── UserRole.php                                      
│   │   │   ├── UserStatus.php 
│   │   │   ├── SaleStatus.php 
│   │   │   ├── PurchaseStatus.php 
│   │   │   ├── PaymentMethod.php
│   │   │   ├── InventoryStatus.php 
│   │   │   └── StockMovementType.php                
│   │   │
│   │   ├── Http/  
│   │   │   ├── Controllers/
│   │   │   │ 	└── Api/
│   │   │   │       └── V1/
│   │   │   │           ├── Auth/
│   │   │   │           │   ├── AuthController.php 
│   │   │   │           │   ├── PasswordController.php
│   │   │   │	        │   └── ProfileController.php 
│   │   │   │           ├── DashboardController.php 
│   │   │   │           ├── UserController.php 
│   │   │   │           ├── ProductController.php  
│   │   │   │           ├── CategoryController.php
│   │   │   │           ├── CustomerController.php
│   │   │   │           ├── SupplierController.php
│   │   │   │           ├── PurchaseController.php
│   │   │   │           ├── SaleController.php
│   │   │   │           ├── InventoryController.php
│   │   │   │           ├── StockMovementController.php
│   │   │   │           ├── InvoiceController.php
│   │   │   │           ├── PaymentController.php 
│   │   │   │ 	        └── ReportController.php 
│   │   │   ├── Requests/  
│   │   │   │   ├── Auth/
│   │   │   │   ├── User/
│   │   │   │   ├── Product/
│   │   │   │   ├── Category/
│   │   │   │   ├── Customer/
│   │   │   │   ├── Supplier/
│   │   │   │   ├── Purchase/
│   │   │   │   ├── Sale/
│   │   │   │   ├── Inventory/
│   │   │   │   ├── Invoice/
│   │   │   │	└── Payment/
│   │   │   │
│   │   │   └── Resources/      
│   │   │       ├── UserResource.php 
│   │   │       ├── ProductResource.php 
│   │   │       ├── CategoryResource.php 
│   │   │       ├── CustomerResource.php 
│   │   │       ├── SupplierResource.php 
│   │   │       ├── PurchaseResource.php 
│   │   │       ├── SaleResource.php 
│   │   │       ├── InventoryResource.php 
│   │   │       ├── InvoiceResource.php 
│   │   │       ├── PaymentResource.php 
│   │   │    	└── DahboardResource.php            
│   │   │   
│   │   ├── Models/                                       
│   │   │   ├── User.php 
│   │   │   ├── Role.php 
│   │   │   ├── Permission.php 
│   │   │   ├── Product.php 
│   │   │   ├── Category.php 
│   │   │   ├── Customer.php 
│   │   │   ├── Supplier.php 
│   │   │   ├── Purchase.php 
│   │   │   ├── PurchaseItem.php
│   │   │   ├── Sale.php
│   │   │   ├── SaleItem.php
│   │   │   ├── Inventory.php
│   │   │   ├── StockMovement.php 
│   │   │   ├── Invoice.php 
│   │   │   ├── Payment.php
│   │   │   └── AuditLog.php 
│   │   │
│   │   ├── services/                                            # Business logic 
│   │   │   ├── Auth/
│   │   │   │   ├── AuthService.php 
│   │   │   │   ├── TokenService.php 
│   │   │   │ 	└── PasswordService.php
│   │   │   ├── user/
│   │   │   │ 	└── UserService.php 
│   │   │   ├── Product/
│   │   │   │ 	└── ProductService.php 
│   │   │   ├── Category/
│   │   │   │ 	└── CategoryService.php 
│   │   │   ├── Customer/
│   │   │   │ 	└── CustomerService.php
│   │   │   ├── Supplier/
│   │   │   │ 	└── SupplierService.php 
│   │   │   ├── Purchase/
│   │   │   │ 	└── PurchaseService.php 
│   │   │   ├── Sale/
│   │   │   │   ├── SaleService.php 
│   │   │   │ 	└── saleCalculationService.php 
│   │   │   ├── Inventory/ 
│   │   │   │   ├── InventoryService.php 
│   │   │   │ 	└── StockMovementService.php 
│   │   │   ├── Invoice/
│   │   │   │ 	└── InvoiceService.php 
│   │   │   ├── Payment/  
│   │   │   │ 	└── PaymentService.php 
│   │   │   ├── dashboard/
│   │   │   │ 	└── DashboardService.php 
│   │   │   └── Reports/
│   │   │     	└── ReportService.php 
│   │   │
│   │   ├── repositories/                                         
│   │   │   ├── UserRepository.php                        
│   │   │   ├── ProductRepository.php  
│   │   │   ├── CategoryRepository.php  
│   │   │   ├── CustomerRepository.php 
│   │   │   ├── SupplierRepository.php 
│   │   │   ├── PurchaseRepository.php 
│   │   │   ├── SaleRepository.php 
│   │   │   ├── InventoryRepository.php 
│   │   │   ├── InvoiceRepository.php  
│   │   │   └── PaymentRepository.php  
│   │   │
│   │   ├── Policies/                                        
│   │   │   ├── UserPolicy.php                        
│   │   │   ├── ProductPolicy.php  
│   │   │   ├── SalePolicy.php  
│   │   │   ├── PurchasePolicy.php 
│   │   │   ├── InventoryPolicy.php 
│   │   │   └── PaymentPolicy.php
│   │   │
│   │   ├── Middleware/                                        
│   │   │   ├── Authenticate.php                        
│   │   │   ├── CheckRole.php  
│   │   │   └── CheckPermission.php 
│   │   │
│   │   ├── Notifications/                                        
│   │   │   ├── SaleCreateNotification.php                        
│   │   │   ├── PaymentReceiveNotification.php  
│   │   │   └── LowStockNotification.php 
│   │   │
│   │   ├── Jobs/                           
│   │   │   ├── SendInvoiceEmail.php 
│   │   │   ├── GenerateReport.php 
│   │   │   └── SendLowStockAlert.php                                      
│   │   │
│   │   └── providers/                                           
│   │
│	├── bootstrap/                                              
│   │   └── app.php 
│   │
│	├── config/                                              
│   │   ├── app.php 
│   │   ├── auth.php
│   │   ├── database.php 
│   │   ├── filesystems.php 
│   │   ├── mail.php
│   │   ├── queue.php 
│   │   └── services.php 
│	├── database/
│   │   ├── factories/
│   │   │   ├── UserFactory.php  
│   │   │   ├── ProductFactory.php 
│   │   │   ├── CustomerFactory.php  
│   │   │   └── SupplierFactory.php 
│   │   ├── migrations/ 
│   │   │   ├── xxxx_create_users_table.php  
│   │   │   ├── xxxx_create_roles_table.php 
│   │   │   ├── xxxx_create_permissions_table.php 
│   │   │   ├── xxxx_create_categories_table.php 
│   │   │   ├── xxxx_create_products_table.php 
│   │   │   ├── xxxx_create_customers_table.php 
│   │   │   ├── xxxx_create_suppliers_table.php 
│   │   │   ├── xxxx_create_purchases_table.php 
│   │   │   ├── xxxx_create_purchase_items_table.php 
│   │   │   ├── xxxx_create_sales_table.php 
│   │   │   ├── xxxx_create_sale_items_table.php 
│   │   │   ├── xxxx_create_inventory_table.php 
│   │   │   ├── xxxx_create_stock_movements_table.php
│   │   │   ├── xxxx_create_invoices_table.php 
│   │   │   ├── xxxx_create_payments_table.php
│   │   │   └── xxxx_create_audit_logs_table.php                       
│   │   │
│   │   └── seeders/
│   │       ├── DatabaseSeeder.php 
│   │       ├── ReleSeeder.php 
│   │       ├── PermissionSeeder.php 
│   │       ├── UserSeeder.php 
│   │       ├── CategorySeeder.php 
│   │       └── ProductSeeder.php 
│   │
│	├── routes/
│   │   ├── api.php 
│   │   ├── web.php 
│   │   └── console.php
│	├── storage/
│	├── tests/
│   │   ├── Features/
│   │   │   ├── Auth/
│   │   │   ├── Products/
│   │   │   ├── Customers/
│   │   │   ├── Suppliers/
│   │   │   ├── Purchases/
│   │   │   ├── Sales/
│   │   │   ├── Inventory/
│   │   │   ├── Invoices/
│   │   │   └── Payments/
│   │   └── Unit/
│   │       ├── SaleServiceTest.php 
│   │       ├── InventoryServiceTest.php 
│   │       └── PaymentServiceTest.php 
│	├── .env
│	├── .env.example
│	├── artisan 
│	├── composer.json 
│	├── phpunit.xml 
│   └── README.md 
│   


