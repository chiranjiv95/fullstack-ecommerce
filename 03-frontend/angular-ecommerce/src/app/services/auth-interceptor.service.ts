import {
  HttpEvent,
  HttpHandler,
  HttpInterceptor,
  HttpRequest,
} from '@angular/common/http';
import { Inject, Injectable } from '@angular/core';
import { OKTA_AUTH } from '@okta/okta-angular';
import { OktaAuth } from '@okta/okta-auth-js';
import { from, Observable } from 'rxjs';

@Injectable({
  providedIn: 'root',
})
export class AuthInterceptorService implements HttpInterceptor {
  constructor(@Inject(OKTA_AUTH) private oktaAuth: OktaAuth) {}

  intercept(
    request: HttpRequest<any>,
    next: HttpHandler
  ): Observable<HttpEvent<any>> {
    return from(this.handleAccess(request, next));
  }

  private async handleAccess(
    request: HttpRequest<any>|undefined,
    next: HttpHandler
  ): Promise<HttpEvent<any>> {
    // Only add an access token for secured endpoints
    const securedEndpoints = ['http://localhost:8080/api/orders'];

    if (securedEndpoints.some((url) => request?.urlWithParams.includes(url))) {
      // get the access token
      const accessToken = await this.oktaAuth.getAccessToken();

      // clone the request and add new header with access token
      // we clone because request is immutable
      request = request?.clone({
        setHeaders: {
          Authorization: 'Bearer' + accessToken,
        },
      });
    }
    
  }
}
