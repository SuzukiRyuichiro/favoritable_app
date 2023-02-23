import { Controller } from '@hotwired/stimulus'

// Connects to data-controller="favorite-product"
export default class extends Controller {
    static values = { productId: Number }
}
