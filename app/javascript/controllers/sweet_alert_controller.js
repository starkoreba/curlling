import { Controller } from "@hotwired/stimulus"
import swal from 'sweetalert';

// Connects to data-controller="sweet-alert"
export default class extends Controller {
  static targets = ["form"]
  connect() {
    console.log('coucou')
  }
  participate() {
    swal({
      title: "Félicitations!",
      text: "Ta participation est enregistrée",
      icon: "success"
    }).then((value) => {
      if(value) {
        this.formTarget.submit()
      }
    })
  }
}
