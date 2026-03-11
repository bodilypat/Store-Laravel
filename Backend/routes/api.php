<!-- app/routes/api.php -->
<?php
use Core\Router;
/* Global API Middleware */
$router->middleware('api', function() use ($router) {
    /* API Routes */
    $router->get('/users', 'UserController@index');
    $router->post('/users', 'UserController@store');
    $router->get('/users/{id}', 'UserController@show');
    $router->put('/users/{id}', 'UserController@update');
    $router->delete('/users/{id}', 'UserController@destroy');
});

/* API Version 1 Routes */
$router->prefix('/v1', function() use ($router) {
    $router->get('/products', 'ProductController@index');
    $router->post('/products', 'ProductController@store');
    $router->get('/products/{id}', 'ProductController@show');
    $router->put('/products/{id}', 'ProductController@update');
    $router->delete('/products/{id}', 'ProductController@destroy');
});






