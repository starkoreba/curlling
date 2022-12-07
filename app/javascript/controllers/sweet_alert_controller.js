import { Controller } from "@hotwired/stimulus"
import swal from 'sweetalert';

// Connects to data-controller="sweet-alert"
export default class extends Controller {
  connect() {
    console.log('coucou')
  }
  participate() {
    swal({
      title: "Félicitations!",
      text: "Ta participation est enregistrée",
      icon: "success"
    }).then(value => console.log(value))
  }
}
