import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-badge"
export default class extends Controller {
  connect() {

  }

  add(event) {
    fetch(this.element.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.element)
    })
      .then(response => response.json())
      .then((data) => {
        console.log(data)
      })

}
