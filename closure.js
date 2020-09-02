function debounce(time, callback) {
  let timeout;

  return (...args) => {
    const later = () => {
      clearTimeout(timeout);
      callback(...args);
    };

    clearTimeout(timeOut);
    timeout = setTimeout(later, time);
  }
}