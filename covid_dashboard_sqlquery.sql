
-- Covid-19 dataset India casestudy

select * 
from [Covid-19_dashboard]..[CoronaVirus Data]

select * 
from [Covid-19_dashboard]..[CoronaVirus Data]
where [Country Region] like '%India%'
order by Date 


SELECT "Country Region" , CAST(Date as date)as date_ ,CAST(Lat as float) as Latitude , CAST(Long as float) as Longitude 
,CAST(Deaths as int) as Deaths_ ,CAST(Recovered as int)as Recovered_, CAST(Confirmed as int) as Confirmed_
FROM  [Covid-19_dashboard]..[CoronaVirus Data]
WHERE [Country Region] like '%India%'
order by Date



-- Calculating death percentage In India 

select  [Country Region] ,CAST( Confirmed as int) as Conf_Cases ,CAST( Deaths as int)as Death_Cases,CAST( Deaths as int)/NULLIF(CAST( Confirmed as int),0)  as Death_percentage
from [Covid-19_dashboard]..[CoronaVirus Data]
where [Country Region] like '%India%'
order by Date



-- Calculating the Recovery percentage 

select  [Country Region] ,CAST( Confirmed as int) as Conf_Cases ,CAST( Recovered as int)as Death_Cases,CAST( Recovered as int)/NULLIF(CAST( Confirmed as int),0)  as Recovered_percentage
from [Covid-19_dashboard]..[CoronaVirus Data]
where [Country Region] like '%India%'
order by Date



-- Calculating the Death to recovery ratio in India

select  [Country Region],CAST(Date as date)as date_ ,CAST( Deaths as int) as DeathCases_  ,CAST( Recovered as int)as Recovered_Cases,
CAST( Deaths as int)/NULLIF(CAST( Recovered as int),0)  as death_to_Recovered_percentage
from [Covid-19_dashboard]..[CoronaVirus Data]
where [Country Region] like '%India%'
order by Date

-- Calculating Deaths acoording to Geography in India

SELECT "Country Region" , CAST(Date as date)as date_ ,CAST(Lat as float) as Latitude , CAST(Long as float) as Longitude 
,CAST(Deaths as int) as Deaths_ 

FROM  [Covid-19_dashboard]..[CoronaVirus Data]

WHERE [Country Region] like '%India%'

order by Date



-- CREATING VIEW FOR VISUALIZATION

create view 
COVID_INDIA_DEATH
as
select  [Country Region] ,CAST( Confirmed as int) as Conf_Cases ,CAST( Deaths as int)as Death_Cases,
CAST( Deaths as int)/NULLIF(CAST( Confirmed as int),0)  as Death_percentage
from [Covid-19_dashboard]..[CoronaVirus Data]
where [Country Region] like '%India%'
order by Date


-- Covid-19 dataset Global casestudy

select * 
from [Covid-19_dashboard]..[CoronaVirus Data]

SELECT "Country Region" , CAST(Date as date)as date_ ,CAST(Lat as float) as Latitude , CAST(Long as float) as Longitude 
,CAST(Deaths as int) as Deaths_ ,CAST(Recovered as int)as Recovered_, CAST(Confirmed as int) as Confirmed_
FROM  [Covid-19_dashboard]..[CoronaVirus Data]
order by Date

-- Calculating death percentage Globally

select  [Country Region] ,CAST( Confirmed as int) as Conf_Cases ,CAST( Deaths as int)as Death_Cases,CAST( Deaths as int)/NULLIF(CAST( Confirmed as int),0)  as Death_percentage
from [Covid-19_dashboard]..[CoronaVirus Data]
order by Date



-- Calculating the Recovery percentage  globally

select  [Country Region] ,CAST( Confirmed as int) as Conf_Cases ,CAST( Recovered as int)as Death_Cases,CAST( Recovered as int)/NULLIF(CAST( Confirmed as int),0)  as Recovered_percentage
from [Covid-19_dashboard]..[CoronaVirus Data]
order by Date



-- Calculating the Death to recovery ratio globally

select  [Country Region],CAST(Date as date)as date_ ,CAST( Deaths as int) as DeathCases_  ,CAST( Recovered as int)as Recovered_Cases,
CAST( Deaths as int)/NULLIF(CAST( Recovered as int),0)  as death_to_Recovered_percentage
from [Covid-19_dashboard]..[CoronaVirus Data]
order by Date

-- Calculating Deaths acoording to Geography of world

SELECT "Country Region" , CAST(Date as date)as date_ ,CAST(Lat as float) as Latitude , CAST(Long as float) as Longitude 
,CAST(Deaths as int) as Deaths_ 

FROM  [Covid-19_dashboard]..[CoronaVirus Data]
order by Date


--VIEW FOR COVID CASES GLOBALLY
create view
Covid_Global_death
as
SELECT "Country Region" , CAST(Date as date)as date_ ,CAST(Lat as float) as Latitude , CAST(Long as float) as Longitude 
,CAST(Deaths as int) as Deaths_ ,CAST(Recovered as int)as Recovered_, CAST(Confirmed as int) as Confirmed_
FROM  [Covid-19_dashboard]..[CoronaVirus Data]
















