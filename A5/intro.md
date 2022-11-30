---
title: "intro"
output: html_document
date: "2022-11-28"
---


### Introduction
Climate change is a huge problem in our society today, it will impact a lot of things such as food production, sea levels, and human heath. One of the primary cause of climate change is CO2 emissions, this report will focus on the trends of CO2 emissions. Specifically, I am interested in the trends of CO2 emissions in the world from 1870 to now.

### Interested Variable
In this report, I want to focus on the emissions of carbon dioxide from coal, oil, gas, flaring, and land use. To do that, I will need to use 5 different variable from the data set: flaring_co2, gas_co2, land_use_change_co2, oil_co2, coal_co2. Beside that, I will also need to use the country and year variables.

### Questions to helps me understand the data set
To better understand my dataset, I will do some data wrangling base on the following questions.

- when does the emissions of carbon dioxide from coal reach the peak in the world?


| year| coal_co2|
|----:|--------:|
| 2014| 15051.51|
| 2013| 15024.49|
| 2021| 14979.60|
| 2012| 14922.76|
| 2018| 14746.83|
| 2011| 14737.13|

After some data wrangling, I found that the co2 emission from coal reach the highest point at the year 2014.

- How much has the emissions of carbon dioxide from oil change over the last 100 years in the world?


```
## 
## Call:
## lm(formula = oil_co2 ~ year, data = q2)
## 
## Coefficients:
## (Intercept)         year  
##   -277420.2        143.8
```

For this question, I am focus on the world's changes of emissions of carbon dioxide from oil over the last 100 years, to do that, I use the lm function to find the slope of the change, and it tells that for every year increase, the emissions of carbon dioxide from oil will increase by 143.8 million tonnes. 

- What is the average value of my variable in different countries at 2021?


|country                          |  gas_co2|
|:--------------------------------|--------:|
|World                            | 7921.830|
|High-income countries            | 4023.043|
|Asia                             | 3242.854|
|Upper-middle-income countries    | 2565.763|
|Asia (excl. China and India)     | 2335.537|
|North America                    | 2069.219|
|Europe                           | 1936.246|
|United States                    | 1637.038|
|Lower-middle-income countries    | 1291.175|
|Europe (excl. EU-27)             | 1152.496|
|Europe (excl. EU-28)             |  993.633|
|European Union (28)              |  942.613|
|Russia                           |  875.052|
|European Union (27)              |  783.749|
|China                            |  773.866|
|Iran                             |  466.994|
|North America (excl. USA)        |  432.181|
|Africa                           |  326.296|
|Saudi Arabia                     |  270.065|
|South America                    |  262.523|
|Canada                           |  235.382|
|Japan                            |  221.525|
|Germany                          |  173.484|
|United Kingdom                   |  158.864|
|Mexico                           |  157.553|
|Italy                            |  150.956|
|India                            |  133.451|
|United Arab Emirates             |  130.187|
|South Korea                      |  126.790|
|Egypt                            |  126.313|
|Turkey                           |  114.395|
|Uzbekistan                       |   96.181|
|Argentina                        |   94.328|
|Algeria                          |   92.792|
|France                           |   85.580|
|Oceania                          |   84.691|
|Qatar                            |   83.531|
|Malaysia                         |   82.003|
|Thailand                         |   77.388|
|Australia                        |   77.242|
|Brazil                           |   75.974|
|Pakistan                         |   75.509|
|Indonesia                        |   74.088|
|Netherlands                      |   68.083|
|Spain                            |   67.109|
|Oman                             |   62.327|
|Turkmenistan                     |   58.760|
|Bangladesh                       |   58.743|
|Taiwan                           |   55.086|
|Ukraine                          |   54.076|
|Kuwait                           |   49.817|
|Nigeria                          |   40.644|
|Poland                           |   40.570|
|Belarus                          |   36.053|
|Belgium                          |   35.777|
|Bahrain                          |   34.596|
|Trinidad and Tobago              |   32.506|
|Venezuela                        |   32.319|
|Iraq                             |   30.044|
|Kazakhstan                       |   27.980|
|Azerbaijan                       |   26.029|
|Romania                          |   25.510|
|Colombia                         |   23.257|
|Singapore                        |   22.225|
|Hungary                          |   22.112|
|Israel                           |   19.449|
|Czechia                          |   18.681|
|Austria                          |   17.839|
|Libya                            |   17.291|
|Peru                             |   15.320|
|Tunisia                          |   13.682|
|Vietnam                          |   13.679|
|Norway                           |   12.673|
|Greece                           |   12.152|
|Portugal                         |   11.649|
|Chile                            |   11.606|
|Ireland                          |   10.502|
|Slovakia                         |   10.394|
|Hong Kong                        |    9.736|
|Low-income countries             |    9.529|
|Bolivia                          |    8.524|
|South Africa                     |    8.234|
|Jordan                           |    8.207|
|Myanmar                          |    7.764|
|Switzerland                      |    7.230|
|Syria                            |    6.837|
|New Zealand                      |    6.658|
|Philippines                      |    6.591|
|Bulgaria                         |    6.062|
|Georgia                          |    6.039|
|Brunei                           |    5.811|
|Armenia                          |    5.461|
|Croatia                          |    5.311|
|Serbia                           |    5.196|
|Cote d'Ivoire                    |    4.929|
|Denmark                          |    4.778|
|Ghana                            |    4.751|
|Finland                          |    4.267|
|Lithuania                        |    4.004|
|Equatorial Guinea                |    3.628|
|Dominican Republic               |    2.990|
|Angola                           |    2.951|
|Congo                            |    2.292|
|Latvia                           |    2.271|
|Cuba                             |    2.209|
|Tanzania                         |    2.083|
|Moldova                          |    1.936|
|Mozambique                       |    1.924|
|Slovenia                         |    1.843|
|Cameroon                         |    1.611|
|Morocco                          |    1.574|
|Luxembourg                       |    1.571|
|Sweden                           |    1.484|
|Gabon                            |    1.117|
|Ecuador                          |    1.026|
|Estonia                          |    0.915|
|Panama                           |    0.911|
|Malta                            |    0.843|
|Papua New Guinea                 |    0.791|
|North Macedonia                  |    0.723|
|Kyrgyzstan                       |    0.692|
|Jamaica                          |    0.572|
|Bosnia and Herzegovina           |    0.488|
|Tajikistan                       |    0.311|
|Macao                            |    0.250|
|Afghanistan                      |    0.239|
|Togo                             |    0.221|
|Yemen                            |    0.207|
|Uruguay                          |    0.158|
|Albania                          |    0.150|
|Benin                            |    0.123|
|Rwanda                           |    0.102|
|Barbados                         |    0.058|
|Liechtenstein                    |    0.056|
|Senegal                          |    0.034|
|Suriname                         |    0.011|
|Andorra                          |    0.000|
|Anguilla                         |    0.000|
|Antigua and Barbuda              |    0.000|
|Aruba                            |    0.000|
|Bahamas                          |    0.000|
|Belize                           |    0.000|
|Bermuda                          |    0.000|
|Bhutan                           |    0.000|
|Bonaire Sint Eustatius and Saba  |    0.000|
|Botswana                         |    0.000|
|British Virgin Islands           |    0.000|
|Burkina Faso                     |    0.000|
|Burundi                          |    0.000|
|Cambodia                         |    0.000|
|Cape Verde                       |    0.000|
|Central African Republic         |    0.000|
|Chad                             |    0.000|
|Comoros                          |    0.000|
|Cook Islands                     |    0.000|
|Costa Rica                       |    0.000|
|Curacao                          |    0.000|
|Cyprus                           |    0.000|
|Democratic Republic of Congo     |    0.000|
|Djibouti                         |    0.000|
|Dominica                         |    0.000|
|El Salvador                      |    0.000|
|Eritrea                          |    0.000|
|Eswatini                         |    0.000|
|Ethiopia                         |    0.000|
|Faeroe Islands                   |    0.000|
|Fiji                             |    0.000|
|French Guiana                    |    0.000|
|French Polynesia                 |    0.000|
|Gambia                           |    0.000|
|Greenland                        |    0.000|
|Grenada                          |    0.000|
|Guadeloupe                       |    0.000|
|Guatemala                        |    0.000|
|Guinea                           |    0.000|
|Guinea-Bissau                    |    0.000|
|Guyana                           |    0.000|
|Haiti                            |    0.000|
|Honduras                         |    0.000|
|Iceland                          |    0.000|
|Kenya                            |    0.000|
|Kiribati                         |    0.000|
|Kosovo                           |    0.000|
|Laos                             |    0.000|
|Lebanon                          |    0.000|
|Lesotho                          |    0.000|
|Liberia                          |    0.000|
|Madagascar                       |    0.000|
|Malawi                           |    0.000|
|Maldives                         |    0.000|
|Mali                             |    0.000|
|Marshall Islands                 |    0.000|
|Martinique                       |    0.000|
|Mauritania                       |    0.000|
|Mauritius                        |    0.000|
|Mayotte                          |    0.000|
|Micronesia (country)             |    0.000|
|Mongolia                         |    0.000|
|Montenegro                       |    0.000|
|Montserrat                       |    0.000|
|Namibia                          |    0.000|
|Nauru                            |    0.000|
|Nepal                            |    0.000|
|New Caledonia                    |    0.000|
|Nicaragua                        |    0.000|
|Niger                            |    0.000|
|Niue                             |    0.000|
|North Korea                      |    0.000|
|Palau                            |    0.000|
|Palestine                        |    0.000|
|Paraguay                         |    0.000|
|Reunion                          |    0.000|
|Saint Helena                     |    0.000|
|Saint Kitts and Nevis            |    0.000|
|Saint Lucia                      |    0.000|
|Saint Pierre and Miquelon        |    0.000|
|Saint Vincent and the Grenadines |    0.000|
|Samoa                            |    0.000|
|Sao Tome and Principe            |    0.000|
|Seychelles                       |    0.000|
|Sierra Leone                     |    0.000|
|Sint Maarten (Dutch part)        |    0.000|
|Solomon Islands                  |    0.000|
|Somalia                          |    0.000|
|South Sudan                      |    0.000|
|Sri Lanka                        |    0.000|
|Sudan                            |    0.000|
|Timor                            |    0.000|
|Tonga                            |    0.000|
|Turks and Caicos Islands         |    0.000|
|Tuvalu                           |    0.000|
|Uganda                           |    0.000|
|Vanuatu                          |    0.000|
|Wallis and Futuna                |    0.000|
|Zambia                           |    0.000|
|Zimbabwe                         |    0.000|


As we can see, if we ignore the data that are base on region, we can see that the US has most co2 emissions from gas, 1637.038 million tonnes, in 2021, Russia and China following up. If we assume that 0 value is missing data, than Suriname has the lowest co2 emissions from gas. 0.011 million tonnes.

