/*Please add ; after each select statement*/
CREATE PROCEDURE movieDirectors()
BEGIN
    -- /*
    SELECT 
        dataMovies.director
    FROM (
        SELECT 
            director, SUM(oscars) as total
        FROM 
            moviesInfo 
        WHERE 
            title IN (
                SELECT title FROM moviesInfo WHERE year > 2000
                -- SELECT director FROM moviesInfo WHERE year >= 2000 AND oscars > 2
                -- SELECT director FROM moviesInfo WHERE year > 2000 AND oscars > 2
            )
        GROUP BY 
            director
    ) as dataMovies
    WHERE 
        dataMovies.total > 2
    ORDER BY 
        dataMovies.director ASC; -- */
    /* SELECT 
        director
    FROM 
        moviesInfo 
    WHERE 
        director IN (
            -- SELECT director FROM moviesInfo WHERE year > 2000 AND oscars > 2
            SELECT director FROM moviesInfo WHERE year > 2000 AND oscars > 2
        )
    GROUP BY 
        director
    ORDER BY 
        director ASC; -- */
    /* SELECT 
        director
    FROM 
        moviesInfo 
    WHERE 
        year > 2000 AND oscars > 2 AND SUM(oscars) > 2 -- AND director IS NOT NULL AND year IS NOT NULL
    GROUP BY 
        director
    ORDER BY 
        director ASC; */
END