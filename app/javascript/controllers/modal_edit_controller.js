import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["modalEdit"]
  // connect() {
  //   console.log(this.modalEditTargets[0])
  // }
  open(event) {
    this.modalEditTargets.forEach(modal => {
      if (modal.dataset.id === event.currentTarget.dataset.id) {
        modal.classList.remove('hidden')
        modal.classList.add('flex')
      }
    });
  }
}