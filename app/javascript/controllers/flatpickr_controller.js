import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "startAt" ]
  connect() {
    flatpickr(this.startAtTarget, {
      enableTime: true,
      dateFormat: "d-m-y H:i"
    })
  }
}
