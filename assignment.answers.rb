Lets start by figuring out how many dinosaurs we have. Count the number of dinosaurs.

SELECT count(name) FROM dinos;
 count
-------
   331
(1 row)

We want to open up our own version of Jurassic Park, but this time only with dinosaurs who are actually from the Jurassic period.
Find all the dinosaurs from the Jurassic period.

SELECT id, name, period, species FROM dinos WHERE period = 'Jurassic';

 id  |        name         |  period  |     species
-----+---------------------+----------+------------------
   5 | Yuanmousaurus       | Jurassic | Jiangyiensis
   6 | Yinlong             | Jurassic | Downsi
   7 | Yingshanosaurus     | Jurassic | Jichuanensis
   8 | Yimenosaurus        | Jurassic | Youngi
   9 | Yangchuanosaurus    | Jurassic | Shangyouensis
  10 | Yandusaurus         | Jurassic | Hongheensis
  12 | Vulcanodon          | Jurassic | Karibaensis
  21 | Tuojiangosaurus     | Jurassic | Multispinus
  26 | Torvosaurus         | Jurassic | Tanneri
   4 | Yunnanosaurus       | Jurassic | Huangi
  51 | Sinraptor           | Jurassic | Hepingensis
  45 | Stegosaurus         | Jurassic | Armatus
  61 | Seismosaurus        | Jurassic | Hallorum
  63 | Segisaurus          | Jurassic | Halli
  65 | Scutellosaurus      | Jurassic | Lawleri
  66 | Scelidosaurus       | Jurassic | Harrisonii
  68 | Saurophaganax       | Jurassic | Maximus
  71 | Sarcosaurus         | Jurassic | Woodi
  57 | Shunosaurus         | Jurassic | Lii
  78 | Rhoetosaurus        | Jurassic | Brownei

Jurassic Park was a huge success for us. Now we want to open up a sequel park: Cretaceous Park. This time though, were a little more
 organized, and we want to know how much space all these dinosaurs are going to take up. Find the total sum length of all the dinosaurs
 from the Cretaceous period.

 SELECT SUM(length) FROM dinos WHERE period = 'Cretaceous';
    sum
 ---------
  1366.45
 (1 row)



Great news! Our board of investors recently secured us a large island where we can put all the dinosaurs from both Jurassic Park and
Cretaceous Park. This new park will be called Juraceous Park, which according to our focus groups really rolls off the tongue.
Find all the dinosaurs from either the Jurassic OR Cretaceous periods, and order them by their species name alphabetically.
SELECT species FROM dinos WHERE period = 'Jurassic' OR period = 'Cretaceous' ORDER BY species;

------------------
 Abakensis
 Aegyptiacus
 Aethiopicus
 Agilis
 Airelensis
 Ajax
 Albertensis
 Albertensis
 Altispinax
 Altispinus
 Altithorax
 Altus
 Altus
 Amicagraphica
 Andrewsi
 Andrewsi
 Antirrhopus
 Apertus
 Aquilunguis
 Aralensis
:

Saurischians are the "lizard hipped" order of dinosaurs, and one of the two main branches. All carnivorous dinosaurs are Saurischians,
but not all Saurischians are carnivorous. Find all the dinosaurs from the t_order Saurischia that are Herbivorous.



Dinosaur names are hard to remember. Find the shortest dinosaur, and rename it Shortie.

SELECT id, name, period, length species FROM dinos ORDER BY length asc;

SELECT name FROM dinos;
It's the first day of Dino School, and we're doing roll call. Find the alphabetically first dinosaur, so we can make sure theyre present for class.

SELECT id, name, period, length species FROM dinos ORDER BY name asc;
