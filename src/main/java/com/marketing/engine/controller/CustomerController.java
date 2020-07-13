package com.marketing.engine.controller;


import static org.springframework.http.HttpStatus.OK;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.marketing.engine.domain.Product;
import com.marketing.engine.service.impl.IProductService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;


/**
 * created by niraj on Sep, 2018
 */
@RestController
@RequestMapping("/api")
@Api(value = "Product API", description = "Customer related operations")
public class CustomerController
{

    private IProductService productService;

    @Autowired
    public void setProductService(IProductService productService) {
        this.productService = productService;
    }


    @ApiOperation(value = "View a list of available products")
    @ApiResponses(value = {
            @ApiResponse(code = 200, message = "Successfully retrieved list"),
            @ApiResponse(code = 401, message = "You are not authorized to view the resource"),
            @ApiResponse(code = 403, message = "Accessing the resource you were trying to reach is forbidden"),
            @ApiResponse(code = 404, message = "The resource you were trying to reach is not found")
    })
    @GetMapping(value = "/customers")
    public ResponseEntity<List<Product>> getAllProduct() {
        return new ResponseEntity<>(productService.listAllProducts(), OK);
    }

    @ApiOperation(value = "View Product by an ID",response = Product.class)
    @GetMapping(value = "/customer/{id}")
    public ResponseEntity<Product> getProductById(@PathVariable Integer id) {
        return new ResponseEntity<>(productService.getProductById(id), OK);
    }

    @ApiOperation(value = "Add Product")
    @PostMapping(value = "/customer")
    public ResponseEntity<String> saveProduct(@RequestBody Product product) {
        productService.saveProduct(product);
        return new ResponseEntity("Product saved successfully", OK);
    }


    @ApiOperation(value = "Update Product")
    @PutMapping(value = "/customer/{id}")
    public ResponseEntity<String> updateProduct(@PathVariable Integer id, @RequestBody Product product) {
        Product storedProduct = productService.getProductById(id);
        storedProduct.setDescription(product.getDescription());
        storedProduct.setImageUrl(product.getImageUrl());
        storedProduct.setPrice(product.getPrice());
        productService.saveProduct(storedProduct);
        return new ResponseEntity("Product updated successfully", OK);
    }


    @ApiOperation(value = "Delete Product")
    @DeleteMapping(value = "/customer/{id}")
    public ResponseEntity<String> deleteProductById(@PathVariable Integer id) {
        productService.deleteProduct(id);
        return new ResponseEntity("Product deleted successfully", OK);

    }

}
