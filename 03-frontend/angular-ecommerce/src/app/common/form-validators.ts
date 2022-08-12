import { FormControl, ValidationErrors } from '@angular/forms';

export class FormValidators {
  // Whitespace Validation
  static notOnlyWhitespace(control: FormControl): ValidationErrors {
    // check if string only contains whitespace
    if (control.value != null && control.value.trim().length === 0) {
      //  Invalid, return error object
      return { notOnlyWhitespace: true };
    } else {
      // valid, return null
      return null as any;
    }
  }
}
