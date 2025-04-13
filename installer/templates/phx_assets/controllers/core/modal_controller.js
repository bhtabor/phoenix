import { Controller } from "../../../vendor/stimulus"

export default class extends Controller {
  static targets = ["container", "background"]
  static values = {
    show: Boolean,
    hideDelay: { type: Number, default: 200 }
  }

  initialize() {
    this.handleClickOutside = this.handleClickOutside.bind(this)
  }

  disconnect() {
    document.removeEventListener("click", this.handleClickOutside, true)
  }

  showValueChanged() {
    if (this.showValue) {
      this.show()
    } else {
      this.hide()
    }
  }

  show() {
    // Remove hidden classes and add transition classes
    this.element.classList.remove("hidden")
    this.backgroundTarget.classList.remove("opacity-0")
    this.backgroundTarget.classList.add(
      "transition-all",
      "ease-out",
      "duration-300",
      "opacity-100"
    )

    this.containerTarget.classList.remove("hidden")
    this.containerTarget.classList.add(
      "transition-all",
      "ease-out",
      "duration-300",
      "opacity-100",
      "translate-y-0",
      "sm:scale-100"
    )

    document.body.classList.add("overflow-hidden")
    document.addEventListener("click", this.handleClickOutside, true)
  }

  hide() {
    document.removeEventListener("click", this.handleClickOutside, true)

    // Apply hide transitions to the background and container
    this.backgroundTarget.classList.remove("opacity-100")
    this.backgroundTarget.classList.add(
      "opacity-0",
      "transition-all",
      "ease-in",
      "duration-200"
    )

    this.containerTarget.classList.remove("opacity-100", "translate-y-0", "sm:scale-100")
    this.containerTarget.classList.add(
      "opacity-0",
      "translate-y-4",
      "sm:translate-y-0",
      "sm:scale-95",
      "transition-all",
      "ease-in",
      "duration-200"
    )

    // After the transition duration, hide the modal and clean up.
    setTimeout(() => {
      this.element.classList.add("hidden")
      document.body.classList.remove("overflow-hidden")
    }, this.hideDelayValue)
  }

  cancel(event) {
    event.preventDefault()
    this.showValue = false
    this.dispatch("cancel") // Optional event you can listen for in HTML
  }

  handleClickOutside(event) {
    if (!this.containerTarget.contains(event.target)) {
      this.hide()
    }
  }
}
