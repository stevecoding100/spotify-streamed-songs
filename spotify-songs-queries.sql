-- Top 10 Most Streamed Songs

SELECT  track_name, artist_name, streams 
FROM spotifySongs
ORDER By streams DESC
LIMIT 10;	


-- Songs with Multiple Artists

SELECT track_name, artist_name, artist_count
FROM spotifySongs
WHERE artist_count  > 1
ORDER BY artist_count ASC;

-- Songs Released in a Specific Year

SELECT track_name, artist_name, released_year
FROM spotifySongs
WHERE released_year = 2023;



-- Songs Appearing on Multiple Streaming Platforms

SELECT track_name, artist_name
FROM spotifySongs
WHERE in_apple_playlists > 0
AND in_deezer_playlists > 0
AND in_spotify_playlists > 0;

-- High Danceability and Energy Songs

SELECT track_name, artist_name, danceability_percent, energy_percent
FROM spotifySongs
WHERE danceability_percent > 80
AND energy_percent > 80;


-- Top 5 songs by Apple Rank

SELECT track_name, artist_name, in_apple_charts
FROM spotifySongs
WHERE in_apple_charts IS NOT NULL
ORDER BY in_apple_charts DESC
LIMIT 5;



-- Top 5 songs by Spotify Rank

SELECT track_name, artist_name, in_spotify_charts
FROM spotifySongs
WHERE in_spotify_charts IS NOT NULL
ORDER BY in_spotify_charts DESC
LIMIT 5














