import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-badge"
export default class extends Controller {
  static targets = ["badge"]
  connect() {

  }

  add(event) {
    // fetch(this.element.action, {
    //   method: "POST",
    //   headers: { "Accept": "application/json" },
    //   body: new FormData(this.element)
    // })
    //   .then(response => response.json())
    //   .then((data) => {
    //     console.log(data)
    //   })

        // itération sur tous les badges this.targets
   // si la target est celle sur laquelle j ai cliqué, j ajoute telle classe, sinon j'en ajoute uan autre
  console.log(this.badgeTargets)
  console.log(event.currentTarget)
   this.badgeTargets.forEach((target) => {
    this.element.classList.add("disable")
    if (target === event.currentTarget) {
      target.classList.add("active")
    } else {
      target.classList.add("grayed-out")
    }
  })
}
}
