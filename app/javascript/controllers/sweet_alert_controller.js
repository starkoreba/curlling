import { Controller } from "@hotwired/stimulus"
import swal from 'sweetalert';

// Connects to data-controller="sweet-alert"
export default class extends Controller {
  static targets = ["form"]

  connect() {

  }
  participate() {
    swal({
      title: "Félicitations!",
      text: "Ta participation est enregistrée.",
      icon: "success"
    }).then((value) => {
      if(value) {
        this.formTarget.submit()
      }
    })
  }

  add() {
    swal({
      title: "Oups!",
      text: "Tu as besoin d'avoir déjà participé à au moins deux activités pour créer la tienne.",
      icon: "warning"
    })
  }
}
