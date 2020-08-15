// import ApplicationController from "./application_controller";

// export default class extends ApplicationController {
//   sort() {
//     console.log('hello')
//     let element = document.getElementById("elements");
//     let element_items = Array.from(
//       document.getElementsByClassName("element-item")
//     );
//     let elements = element_items.map((element, index) => {
//       return { id: element.dataset.id, position: index + 1 };
//     });
//     element.dataset.elements = JSON.stringify(elements);
//     this.stimulate("ElementsReflex#sort", element);
//   }
// }

import { Controller } from "stimulus";
import Sortable from "sortablejs";

export default class extends Controller {

  connect() {
    console.log('hello');
    let sortable_elements = document.getElementById("elements");
    Sortable.create(sortable_elements, {
      onEnd: this.end.bind(this)
    });
  }

  end(event) {
    console.log(event);
  }
}