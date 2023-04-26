class ApiConstance {
static const String baseUrl = "https://api.themoviedb.org/3";
static const String apiKey ="efa41118e088b5abd6d12447c497fde6";
static const String nowPlayingMoviePath = "$baseUrl/movie/now_playing?api_key=$apiKey";
static const String PobularMoviePath = "$baseUrl/movie/popular?api_key=$apiKey";
static const String topRatedMoviePath = "$baseUrl/movie/top_rated?api_key=$apiKey";
static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';
static String imageUrl(String path) => '$baseImageUrl$path';
}