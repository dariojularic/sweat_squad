import { Controller } from "@hotwired/stimulus"
import { createConsumer } from "@rails/actioncable"

// Connects to data-controller="sport-event-subscription"
export default class extends Controller {
  static values = { sportEventId: Number }
  static targets = ["messages"]

  connect() {
    this.channel = createConsumer().subscriptions.create(
      { channel: "SportEventChannel", id: this.sportEventIdValue }, { received: data => this.#insertMessageAndScrollDown(data) }
    )
    console.log(this.messagesTarget)
  }

  resetForm(event) {
    console.log("Resetting the form")
    event.target.reset()
  }

  disconnect() {
    console.log("Unsubscribed from the sport event")
    this.channel.unsubscribe()
  }

  #insertMessageAndScrollDown(data) {
    this.messagesTarget.insertAdjacentHTML("beforeend", data)
    this.messagesTarget.scrollTo(0, this.messagesTarget.scrollHeight)
  }
}
