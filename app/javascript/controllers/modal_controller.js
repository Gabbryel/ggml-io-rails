import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modal"]
  // connect() {
  //   console.log(this.element)
  // }
  open() {
    this.modalTarget.classList.remove("hidden")
    this.modalTarget.classList.add("block")
  }
  close() {
    this.modalTarget.classList.remove("block")
    this.modalTarget.classList.add("hidden")
  }
}
