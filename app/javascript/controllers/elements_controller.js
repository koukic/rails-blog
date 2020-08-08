import { Controller } from "stimulus";

export default class extends Controller {

  sort() {
    console.log('hello')
    let element = document.getElementById('elements')
    console.log(element)
    let element_item = Array.from(document.getElementsByClassName('element-item'))
    let elements = element_items.map((element, index) => {
      return { id: element.dataset.id, position: index + 1 }
    })
    console.log(elements)

    element.dataset.elements = JSON.stringify(elements)

  }
}
