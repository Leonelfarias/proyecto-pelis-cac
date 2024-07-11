   // Clave de API de TMDb
   const apiKey = 'be0e887fab702d1384521bdeb7922cc4';
   
  // Función para cargar datos de películas desde la API de TMDb
  function loadMovies() {
    // URL de la API de TMDb para obtener las películas populares
    const apiUrl = `https://api.themoviedb.org/3/movie/popular?api_key=${apiKey}&language=es`;

    // Realizar la solicitud HTTP
    fetch(apiUrl)
      .then(response => response.json())
      .then(data => {
        // Limpiar tabla antes de agregar nuevos datos
        const tableBody = document.querySelector('#movies-table tbody');
        tableBody.innerHTML = '';

        // Se iteran los resultados y se agregan a las filas
        data.results.forEach(movie => {
          const row = `<tr>
                        <td ><img src="https://image.tmdb.org/t/p/w200/${movie.poster_path}"  width="100"  alt="${movie.title}"></td>
                        <td>${movie.title}</td>
                        <td>${movie.release_date}</td>
                        <td>${movie.vote_average}</td>
                        <td>${movie.genre_ids.join(', ')}</td>
                      </tr>`;
          tableBody.innerHTML += row;
        });
      })
      .catch(error => console.error('Error al cargar datos de películas:', error));
  }

  // Llamo a la función al cargar la página
  window.onload = loadMovies;
