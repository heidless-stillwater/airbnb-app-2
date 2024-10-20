import { Controller } from "@hotwired/stimulus"
import { _isEmpty } from 'lodash-es'

export default class extends Controller {

  connect() {
    if (isEmpty(his.element.dataset.latitude) && isEmpty(this.element.dataset.longitude)) {
      window.navigator.geolocation.getCurrentPosition((position) => {
        console.log('this.element: ', this.element); 
        this.element.dataset.latitude = position.coords.latitude;
        this.element.dataset.longitude = position.coords.longitude; 
      })
    } else {
    }
  }
}

