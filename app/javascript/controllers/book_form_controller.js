import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="book-form"
export default class extends Controller {
  static targets = [ "title", "fetchButton" ]
  connect() {
    this.toggleFetchButton()
    this.updateTitleParams()
  }

  handleTitleInput(){
    this.toggleFetchButton()
    this.updateTitleParams()
  }

  toggleFetchButton(){
    this.fetchButtonTarget.disabled = !this.titleTarget.value.length > 0
  }

  updateTitleParams(){
    console.log(this.fetchButtonTarget)
    let input = this.fetchButtonTarget.parentElement.lastChild
    input.value = this.titleTarget.value
  }
}
