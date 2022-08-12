import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { OrderHistory } from '../common/order-history';

@Injectable({
  providedIn: 'root',
})
export class OrderHistoryService {
  private orderUrl = 'http://localhost:8081/api/orders';

  constructor(private httpClient: HttpClient) {}

  getOrderHistory(theEmail: string): Observable<GetResponseOrderHistory> {
    // need to build URL based on the customer email
    const orderHistoryUrl = `${this.orderUrl}/search/findByCustomerEmail?email=${theEmail}`;

    // calls the API
    return this.httpClient.get<GetResponseOrderHistory>(orderHistoryUrl);
  }
}

// Unwraps the JSON from spring data rest _embedded entry
interface GetResponseOrderHistory {
  _embedded: {
    orders: OrderHistory[];
  };
}
