import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="countdown"
export default class extends Controller {
  static targets = ["countdown"];
  
  connect() {
    this.secondsUntilEnd = this.countdownTarget.dataset.secondsUntilEndValue;

    const now = new Date().getTime();
    this.endTime = new Date(now + this.secondsUntilEnd * 1000);

    this.countdown = setInterval(this.countdown.bind(this), 250);
  }

  countdown() {
    const now = new Date();
    const secondsRemaining = (this.endTime - now) / 1000;

    if (secondsRemaining <= 0) {
      clearInterval(this.countdown);
      this.countdownTarget.innerHTML = "We partyin'!";
      return;
    }

    const secondsPerDay = 86400;
    const secondsPerHour = 3600;
    const secondsPerMinute = 60;

    function zeroPad(number) {
      number = ("00"+number).slice(-2);
      return number
    }

    const days = zeroPad(Math.floor(secondsRemaining / secondsPerDay));
    const hours = zeroPad(Math.floor((secondsRemaining % secondsPerDay) / secondsPerHour));
    const minutes = zeroPad(Math.floor((secondsRemaining % secondsPerHour) / secondsPerMinute));
    const seconds = zeroPad(Math.floor(secondsRemaining % secondsPerMinute));

    this.countdownTarget.innerHTML = `${days}${hours}${minutes}${seconds}`
  }
}
