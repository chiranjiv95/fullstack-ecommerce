package com.simplilearn.ecommerce.dto;


import com.simplilearn.ecommerce.entity.Address;
import com.simplilearn.ecommerce.entity.Customer;
import com.simplilearn.ecommerce.entity.Order;
import com.simplilearn.ecommerce.entity.OrderItem;
import lombok.Data;
import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;

}