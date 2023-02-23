import { Controller } from '@hotwired/stimulus'

// Connects to data-controller="favorite-product"
export default class extends Controller {
  static values = { productId: Number }
  static targets = ['form']

  async updateFavorite() {
    const url = this.formTarget.action
    const response = await fetch(url, {
      method: 'POST',
      headers: { Accept: 'text/plain' },
      body: new FormData(this.formTarget), // for CSRF token
    })
    console.log(response)
  }
}
