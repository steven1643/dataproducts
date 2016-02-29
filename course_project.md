Developing Data Products Course Project
========================================================
author: Steven Aurousseau
date: 2016-02-27

Outline of Project
========================================================
This presentation is part of the Course Project for the Coursera Developing Data Products class. This presentation addresses the second part of the course project.

This project looks at the analysis created by de Piles on artists of the 17-18th century and the aesthetic strengths of there work/paintings.

The app developed for the first part of the assignment:
https://steven1643.shinyapps.io/ddp_project/

Source code for ui.R and server.R files on GitHub:
https://github.com/steven1643/dataproducts

Who is de Piles and what did he do?
========================================================
Roger de Piles (7 October 1635 – 5 April 1709) was a French painter, engraver, art critic and diplomat.
In his last published work: *Cours de peinture par principes avec un balance de peintres (1708)* de Piles appended a list of fifty-six major painters from his own time, with whose work he had acquainted himself as a connoisseur during his travels.

His important contribution to aesthetic theory rests on his argument on the relative merits of drawing and colour. The argument is most fascinating as an early debate on classic vs modern in painting; in essence on the mathematics of proportion and perspective in drawing — the classic approach. As opposed to the colored brush stroke — the approach of the moderns.

'Painters' Dataset
========================================================
The dataset contains five variables for 56 painters. Four variables relate to the painters aesthetics and the fifth is for the School the painter belonged to.

Summary of painters dataset from the MASS package.


|   | Composition  |   Drawing    |    Colour    |  Expression   |    School |
|:--|:-------------|:-------------|:-------------|:--------------|:----------|
|   |Min.   : 0.00 |Min.   : 6.00 |Min.   : 0.00 |Min.   : 0.000 |A      :10 |
|   |1st Qu.: 8.25 |1st Qu.:10.00 |1st Qu.: 7.25 |1st Qu.: 4.000 |D      :10 |
|   |Median :12.50 |Median :13.50 |Median :10.00 |Median : 6.000 |E      : 7 |
|   |Mean   :11.56 |Mean   :12.46 |Mean   :10.94 |Mean   : 7.667 |G      : 7 |
|   |3rd Qu.:15.00 |3rd Qu.:15.00 |3rd Qu.:16.00 |3rd Qu.:11.500 |B      : 6 |
|   |Max.   :18.00 |Max.   :18.00 |Max.   :18.00 |Max.   :18.000 |C      : 6 |
|   |NA            |NA            |NA            |NA             |(Other): 8 |

Sample Plot
========================================================
The following sample plot shows the top 10 painters from de Piles analysis for the Colour aesthetic, as well as the artistic school.

![plot of chunk unnamed-chunk-2](course_project-figure/unnamed-chunk-2-1.png)
