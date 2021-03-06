
Let's start by figuring out how many dinosaurs we have. Count the number of dinosaurs.


SELECT count, name, diet FROM dinos;
               ^
dinosaurs=# SELECT COUNT (name) FROM dinos;
 count
-------
   331
(1 row)

2) We want to open up our own version of Jurassic Park, but this time only with dinosaurs who are actually from the Jurassic period. Find all the dinosaurs from the Jurassic period.
SELECT name, period FROM dinos WHERE period = 'Jurassic' LIMIT 40;
(heads up, the list is bigger than 50)
        name        |  period
--------------------+----------
 Yuanmousaurus      | Jurassic
 Yinlong            | Jurassic
 Yingshanosaurus    | Jurassic
 Yimenosaurus       | Jurassic
 Yangchuanosaurus   | Jurassic
 Yandusaurus        | Jurassic
 Vulcanodon         | Jurassic
 Tuojiangosaurus    | Jurassic
 Torvosaurus        | Jurassic
 Yunnanosaurus      | Jurassic
 Sinraptor          | Jurassic
 Stegosaurus        | Jurassic
 Seismosaurus       | Jurassic
 Segisaurus         | Jurassic
 Scutellosaurus     | Jurassic
 Scelidosaurus      | Jurassic
 Saurophaganax      | Jurassic
 Sarcosaurus        | Jurassic
 Shunosaurus        | Jurassic
 Rhoetosaurus       | Jurassic
 Poekilopleuron     | Jurassic


3) Jurassic Park was a huge success for us. Now we want to open up a sequel park: Cretaceous Park. This time though, we're a little more organized, and we want to know how much space all these dinosaurs are going to take up. Find the total sum length of all the dinosaurs from the Cretaceous period.
#SELECT name, length, period FROM dinos SUM(length) AND WHERE period = 'Creataceous' #LIMIT 40;


#SELECT name, length, period, SUM(length) FROM dinos WHERE period = 'Cretaceous' LIMIT #40;

SELECT SUM(length) FROM dinos WHERE period = 'Cretaceous';
   sum
---------
 1366.45
(1 row)


4)Great news! Our board of investors recently secured us a large island where we can put all the dinosaurs from both Jurassic Park and Cretaceous Park. This new park will be called Juraceous Park, which according to our focus groups really rolls off the tongue. Find all the dinosaurs from either the Jurassic OR Cretaceous periods, and order them by their species name alphabetically.


SELECT name, period FROM dinos WHERE period ='Jurassic' OR period ='Cretaceous' ORDER BY name asc;
          name           |   period
-------------------------+------------
 Aardonyx                | Jurassic
 Abelisaurus             | Cretaceous
 Achelousaurus           | Cretaceous
 Achillobator            | Cretaceous
 Acrocanthosaurus        | Cretaceous
 Aegyptosaurus           | Cretaceous
 Afrovenator             | Cretaceous
 Agilisaurus             | Jurassic
 Alamosaurus             | Cretaceous
 Albertaceratops         | Cretaceous
 Albertosaurus           | Cretaceous
 Alectrosaurus           | Cretaceous
 Alioramus               | Cretaceous
 Allosaurus              | Jurassic
 Alvarezsaurus           | Cretaceous
 Amargasaurus            | Cretaceous
 Ammosaurus              | Jurassic
 Ampelosaurus            | Cretaceous
 Amygdalodon             | Jurassic
 Anatotitan              | Cretaceous
 Anchiceratops           | Cretaceous
:


5) Saurischians are the "lizard hipped" order of dinosaurs, and one of the two main branches. All carnivorous dinosaurs are Saurischians, but not all Saurischians are carnivorous. Find all the dinosaurs from the t_order Saurischia that are Herbivorous.
SELECT name, diet, t_order FROM dinos WHERE t_order = 'Saurischia' AND diet= 'Herbivorous';
        name         |    diet     |  t_order
---------------------+-------------+------------
 Yuanmousaurus       | Herbivorous | Saurischia
 Yimenosaurus        | Herbivorous | Saurischia
 Vulcanodon          | Herbivorous | Saurischia
 Supersaurus         | Herbivorous | Saurischia
 Sonidosaurus        | Herbivorous | Saurischia
 Seismosaurus        | Herbivorous | Saurischia
 Saltasaurus         | Herbivorous | Saurischia
 Rebbachisaurus      | Herbivorous | Saurischia
 Quaesitosaurus      | Herbivorous | Saurischia
 Shunosaurus         | Herbivorous | Saurischia
 Rhoetosaurus        | Herbivorous | Saurischia
 Plateosaurus        | Herbivorous | Saurischia
 Pelorosaurus        | Herbivorous | Saurischia
 Patagosaurus        | Herbivorous | Saurischia
 Pantydraco          | Herbivorous | Saurischia
 Paralititan         | Herbivorous | Saurischia
 Datousaurus         | Herbivorous | Saurischia
 Pleurocoelus        | Herbivorous | Saurischia
 Opisthocoelicaudia  | Herbivorous | Saurischia
 Omeisaurus          | Herbivorous | Saurischia
 Nigersaurus         | Herbivorous | Saurischia

6) Dinosaur names are hard to remember. Find the shortest dinosaur, and rename it Shortie.
SELECT name

SELECT name, length FROM dinos ORDER BY length asc LIMIT 5;
      name      | length
----------------+--------
 Liaoxiornis    |   0.08

UPDATE dinos SET name = ‘Shortie’ WHERE name = ‘Liaoxiornis’;
dinosaurs=# UPDATE dinos SET name = 'Shortie' WHERE name = 'Liaoxiornis';
UPDATE 1



7) It's the first day of Dino School, and we're doing roll call. Find the alphabetically first dinosaur, so we can make sure they're present for class.
SELECT name, species FROM dinos ORDER BY name asc LIMIT 10;
SELECT name, species from dinos ORDER BY name asc LIMIT 10;
       name       |   species
------------------+--------------
 Aardonyx         | Celestae
 Abelisaurus      | Comahuensis
 Achelousaurus    | Horneri
 Achillobator     | Giganteus
 Acrocanthosaurus | Atokensis
 Aegyptosaurus    | Baharijensis
 Afrovenator      | Abakensis
 Agilisaurus      | Louderbacki
 Alamosaurus      | Sanjuanensis
 Albertaceratops  | Nesmoi
(10 rows)


test
