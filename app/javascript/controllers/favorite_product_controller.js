import { Controller } from '@hotwired/stimulus'

// Connects to data-controller="favorite-product"
export default class extends Controller {
  static values = { productId: Number, deletePath: String }
  static targets = ['form', 'card']

  async favoriteProduct() {
    const url = this.formTarget.action
    const response = await fetch(url, {
      method: 'POST',
      headers: { Accept: 'text/plain' },
      body: new FormData(this.formTarget), // for CSRF token
    })
    const html = await response.text()
    this.cardTarget.outerHTML = html
  }

  async unfavoriteProduct() {
    const url = this.deletePathValue
    const csrfToken = document.head
      .querySelector('meta[name="csrf-token"]')
      .getAttribute('content')

    const response = await fetch(url, {
      method: 'DELETE',
      headers: { Accept: 'text/plain', 'X-CSRF-Token': csrfToken },
    })

    const html = await response.text()
    this.cardTarget.outerHTML = html
  }
}
