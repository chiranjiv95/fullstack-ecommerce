import { Component, OnInit } from '@angular/core';
import { OktaAuthStateService } from '@okta/okta-angular';

@Component({
  selector: 'app-members-page',
  templateUrl: './members-page.component.html',
  styleUrls: ['./members-page.component.css'],
})
export class MembersPageComponent implements OnInit {
  isAuthenticated: boolean = false;

  constructor(private oktaAuthService: OktaAuthStateService) {}

  ngOnInit(): void {
    this.oktaAuthService.authState$.subscribe((result) => {
      this.isAuthenticated = result.isAuthenticated!;
    });
  }
}
