import { Component, Inject, OnInit } from '@angular/core';
import { OktaAuth } from '@okta/okta-auth-js';
import { OktaAuthStateService, OKTA_AUTH } from '@okta/okta-angular';
import { CartService } from 'src/app/services/cart.service';

@Component({
  selector: 'app-login-status',
  templateUrl: './login-status.component.html',
  styleUrls: ['./login-status.component.css'],
})
export class LoginStatusComponent implements OnInit {
  isAuthenticated: boolean = false;
  userFullName: string = '';

  storage: Storage = sessionStorage;

  constructor(
    private oktaAuthService: OktaAuthStateService,
    @Inject(OKTA_AUTH)
    private oktaAuth: OktaAuth
  ) {}

  ngOnInit(): void {
    this.oktaAuthService.authState$.subscribe((result) => {
      this.isAuthenticated = result.isAuthenticated!;
      this.getUserDetails();
    });
  }

  getUserDetails() {
    if (this.isAuthenticated) {
      // fetch logged in user details (user's claim)
      this.oktaAuth.getUser().then((res) => {
        this.userFullName = res.name!;

        // retrieve the user's email from authentication response
        const theEmail = res.email;

        // now store the email in browsers storage
        this.storage.setItem('userEmail', JSON.stringify(theEmail));
      });
    }
  }

  logout() {
    // terminates the session
    this.oktaAuth.signOut();
  }
}
