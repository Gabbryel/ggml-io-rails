import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["menu", "burger"];
  connect() {
    // this.element.textContent = "Hello World!"
  }
  open() {
    this.menuTarget.classList.remove("hidden");
    this.burgerTarget.classList.add("hidden");
  }
  close() {
    this.menuTarget.classList.add("hidden");
    this.burgerTarget.classList.remove("hidden");
  }
}
