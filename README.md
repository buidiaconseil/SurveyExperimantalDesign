# SurveyExperimantalDesign
Experimental Design of Surveys. Searching an optimized way to minimize questions on a survey.

# List of Subject

Chatbot need: yes no
Machine learning : y/n
Advanced Machine Learning: yn
Amount of data: Huge or Less
Budget : >100 k
Happy on ML solution : yn
Extend Investment: yn
Cloud need : yn

# List of thema / alternatives
Budget
    Size : <100k
    Extension : yn
Innovation 
    Blockchain : yn
    Cloud : yn 
    AI :yn
Machine Learning
    Knowledge : light, high
    Conversationnal : no, started
    Mining: no , started
Data variety/volume/velocity
    Variety : yn
    Volume : yn
    Velocity : yn
Happyness
    actual : yn
    complexity : yn 
    time :yn
    price :yn

# Data generation
32768 row for 15 variables. I t s a lot
We need to optimize for 10 questions with 4 responses.

## Mix ML/Data   &&   Budget/Happyness/Innovation

  Rep.. MachineLearning.Knowledge MachineLearning.Conversationnal MachineLearning.Mining Data.Variety   Data.Volume Data.Velocity
3      1                        -1                               1                     -1           -1   -1            -1
5      1                        -1                              -1                      1           -1   -1            -1
15     1                        -1                               1                      1            1   -1            -1
25     1                        -1                              -1                     -1            1   1            -1
26     1                         1                              -1                     -1            1   1            -1
28     1                         1                               1                     -1            1   1            -1
41     1                        -1                              -1                     -1            1  -1             1
49     1                        -1                              -1                     -1           -1  1             1
59     1                        -1                               1                     -1            1  1             1
64     1                         1                               1                      1            1  1             1

| lINE |Rep..  | Budget.Size  | Budget.Extension|Innovation.Blockchain| Innovation.Cloud| Innovation.AI | Happyness.actual | Happyness.complexity |Happyness.time | Happyness.price
| 1    |   1   |       -1     |          -1     |               -1    |           -1    |        -1     |               -1 |                 -1   |          -1          |    -1    
22      1           1               -1                     1               -1             1     -1                   -1             -1              -1
52      1           1                1                    -1               -1             1     1                   -1             -1              -1
54      1           1               -1                     1               -1             1     1                   -1             -1              -1
73      1          -1               -1                    -1                1            -1     -1                    1             -1              -1
128     1           1                1                     1                1             1     1                    1             -1              -1
140     1           1                1                    -1                1            -1     -1                   -1              1              -1
142     1           1               -1                     1                1            -1     -1                   -1              1              -1
160     1           1                1                     1                1             1     -1                   -1              1              -1
169     1          -1               -1                    -1                1            -1     1                   -1              1              -1
173     1          -1               -1                     1                1            -1     1                   -1              1              -1
187     1          -1                1                    -1                1             1     1                   -1              1              -1
189     1          -1               -1                     1                1             1     1                   -1              1              -1
209     1          -1               -1                    -1               -1             1     -1                    1              1              -1
239     1          -1                1                     1                1            -1     1                    1              1              -1
252     1           1                1                    -1                1             1     1                    1              1              -1
279     1          -1                1                     1               -1             1     -1                   -1             -1               1
281     1          -1               -1                    -1                1             1     -1                   -1             -1               1
308     1           1                1                    -1               -1             1     1                   -1             -1               1
351     1          -1                1                     1                1             1     -1                    1             -1               1
391     1          -1                1                     1               -1            -1     -1                   -1              1               1
411     1          -1                1                    -1                1             1     -1                   -1              1               1
424     1           1                1                     1               -1            -1     1                   -1              1               1
442     1           1               -1                    -1                1             1     1                   -1              1               1
443     1          -1                1                    -1                1             1     1                   -1              1               1
454     1           1               -1                     1               -1            -1     -1                    1              1               1
478     1           1               -1                     1                1             1     -1                    1              1               1
486     1           1               -1                     1               -1            -1     1                    1              1               1
490     1           1               -1                    -1                1            -1     1                    1              1               1
511     1          -1                1                     1                1             1     1                    1              1               1





# License
See LICENSE file

 Copyright 2018 [Buisson Diaz Conseil](http://www.buissondiaz.com)
 
 Licensed under the Apache License, Version 2.0 (the "License")
