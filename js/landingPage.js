  const track = document.querySelector('.carousel-track');
  const slides = Array.from(document.querySelectorAll('.carousel-slide'));
  const nextBtn = document.querySelector('.next');
  const prevBtn = document.querySelector('.prev');
  const dotsNav = document.querySelector('.carousel-dots');

  let currentIndex = 0;

  // Create dots
  slides.forEach((_, index) => {
    const dot = document.createElement('span');
    if (index === 0) dot.classList.add('active');
    dotsNav.appendChild(dot);
  });

  const dots = Array.from(dotsNav.children);

  function updateCarousel(index) {
    track.style.transform = `translateX(-${index * 100}%)`;
    dots.forEach(dot => dot.classList.remove('active'));
    dots[index].classList.add('active');
    currentIndex = index;
  }

  nextBtn.addEventListener('click', () => {
    const index = (currentIndex + 1) % slides.length;
    updateCarousel(index);
  });

  prevBtn.addEventListener('click', () => {
    const index = (currentIndex - 1 + slides.length) % slides.length;
    updateCarousel(index);
  });

  dots.forEach((dot, index) => {
    dot.addEventListener('click', () => updateCarousel(index));
  });

  // Auto-slide
  setInterval(() => {
    updateCarousel((currentIndex + 1) % slides.length);
  }, 5000);