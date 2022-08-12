import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { map, Observable, of } from 'rxjs';
import { Country } from '../common/country';
import { State } from '../common/state';

@Injectable({
  providedIn: 'root',
})
export class EcommerceFormService {
  private countriesUrl = 'http://localhost:8081/api/countries';
  private statesurl = 'http://localhost:8081/api/states';

  constructor(private httpClient: HttpClient) {}

  getCountries(): Observable<Country[]> {
    return this.httpClient
      .get<GetResponseCountries>(this.countriesUrl)
      .pipe(map((response) => response._embedded.countries));
  }

  getStates(theCountryCode: string): Observable<State[]> {
    // search url
    const searchStatesUrl = `${this.statesurl}/search/findByCountryCode?code=${theCountryCode}`;

    return this.httpClient
      .get<GetResponseStates>(searchStatesUrl)
      .pipe(map((response) => response._embedded.states));
  }

  // Add Methods to form service for months and years
  getCreditCardMonths(startMonth: number): Observable<number[]> {
    let data: number[] = [];

    // Build an array for 'Month' dropdown list
    // start at desired startMonth and loop until 12

    for (let theMonth = startMonth; theMonth <= 12; theMonth++) {
      data.push(theMonth);
    }

    return of(data);
  }

  getCreditCardYears(): Observable<number[]> {
    let data: number[] = [];

    // Build an array for 'Month' dropdown list
    // start at current year and loop for next 10
    const startYear: number = new Date().getFullYear();
    const endyear: number = startYear + 10;

    for (let theYear = startYear; theYear <= endyear; theYear++) {
      data.push(theYear);
    }

    // This 'of' will wrap an object as an Observable
    return of(data);
  }
}

interface GetResponseCountries {
  _embedded: {
    countries: Country[];
  };
}

interface GetResponseStates {
  _embedded: {
    states: State[];
  };
}
