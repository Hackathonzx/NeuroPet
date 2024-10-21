// function changeBackground() {
//     const colors = [
//       'rgba(45, 27, 46, 1)',
//       'rgba(58, 31, 63, 1)',
//       'rgba(74, 42, 74, 1)',
//       'rgba(90, 53, 85, 1)'
//     ];
//     const body = document.body;
//     let currentColor = 0;
//     setInterval(() => {
//       body.style.background = `radial-gradient(circle, ${colors[currentColor]} 0%, ${colors[(currentColor + 1) % colors.length]} 100%)`;
//       currentColor = (currentColor + 1) % colors.length;
//     }, 5000);
//   }
//   document.addEventListener('DOMContentLoaded', changeBackground);





function changeBackground() {
    const colors = [
      'rgba(45, 27, 46, 1)',
      'rgba(58, 31, 63, 1)',
      'rgba(74, 42, 74, 1)',
      'rgba(90, 53, 85, 1)',
      'rgba(105, 63, 95, 1)',
      'rgba(120, 74, 106, 1)'
    ];
    const body = document.body;
    let currentColor = 0;
    let nextColor = 1;
    let step = 0;
    const steps = 300; // Number of steps for the transition
  
    function updateBackground() {
      const color1 = colors[currentColor];
      const color2 = colors[nextColor];
      const gradient = `radial-gradient(circle, ${color1} ${step / steps * 100}%, ${color2} ${(step + 1) / steps * 100}%)`;
      body.style.background = gradient;
  
      step++;
      if (step >= steps) {
        step = 0;
        currentColor = nextColor;
        nextColor = (nextColor + 1) % colors.length;
      }
  
      requestAnimationFrame(updateBackground);
    }
  
    requestAnimationFrame(updateBackground);
  }
  
  document.addEventListener('DOMContentLoaded', changeBackground);