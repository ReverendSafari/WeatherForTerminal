Hello! My name is safari and I am currently a third year CS student at the new college of florida while writing this.
I have been wanting to learn bash and more terminal stuff all month so I am finally diving in!

This script is meant to be displayed at the top of your terminal at the start of a new session so you can start the day
knowing if you need an umbrella to walk to Algorithms on the other side of campus :)

It is super simplistic, with just a barebones API call, some string formatting, and a little bit of error testing

To use it in YOUR terminal follow these steps

1-Replace "lat", and "lon" with your respective latitudes and longitudes

2-Register and retrieve your openweathermap API key, and set an enviroment variable with your key. (In the script I use the variable name (WEATHER_API_KEY)
  (If you are using ubuntu simple add the line export WEATHER_API_KEY = 'YOUR_KEY_HERE' to your ./bashrc file)

3-Finally to make your script run every time you launch a new linux instance simply add the command ~/WeatherScript/DailyWeather.sh to the end of your ./bashrc file

  (Make sure you source ./bashrc everytime you make changes to it)
