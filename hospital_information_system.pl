gender(a, female).
gender(b, male).

location(1,'Mirpur').
location(2,'Banani').
location(3,'Uttara').
location(4,'Dhanmondi').
location(5,'Khilkhet').

day('Friday',5).
day('Saturday',6).
day('Sunday',7).
day('Monday',1).
day('Tuesday',2).
day('Wednesday',3).
day('Thursday',4).

doctor(1,1,1,2,0001, 'Arafat', 'Hosain', ['Friday'],[10,11,12,16,17,18,19,20]).
doctor(1,1,1,2,0021, 'Rafi', 'Reza', ['Friday'],[9,10,11,15,16,19,20]).
doctor(1,1,1,2,0203, 'Armin', 'Jahan', ['Saturday'],[9,10,11,14,15,16,20,21]).
doctor(2,1,1,2,0012, 'Ashraful', 'Khan', ['Friday','Saturday'],[10,11,15,19,20,21]).
doctor(2,1,1,2,0035, 'Jannatul', 'Ferdous', ['Friday'],[10,13,14,15,16,17,18,19,20]).
doctor(2,1,1,3,0101, 'Farjana', 'Ahmed', ['Saturday','Sunday'],[9,14,15,16,17,18,19,20,21,22]).
doctor(3,1,1,1,0111, 'Kayra', 'Jamal', ['Friday','Sunday'],[9,10,11,12,16,17,18,20,21]).
doctor(3,1,1,2,0100, 'Daniel', 'Khan', ['Saturday'],[10,11,15,16,17,19,20,21]).
doctor(3,1,1,3,0123, 'Humaira', 'Karim', ['Friday','Saturday','Sunday'],[11,12,13,14,15,16,19,20,21]).

hospital(001,'Hi-Care General Hospital', 'Uttara', [[1,2,3,4,5,6],[1,2,3,4,5],[1,2,3,4,5],[1,2,3,4,5,6,7],[1,2,3,4,5,6],[1,2,3,4],[1]]).
hospital(002,'Lubana General Hospital', 'Uttara', [[1,2,3,4,5],[1,2,3,5],[1,2,3,4],[1,2,3,7],[1,3,4,5],[2,4],[2,3]]).
hospital(003,'Bangladesh Eye Hospital', 'Uttara', [[],[],[],[],[],[],[1,2,3]]).
hospital(004,'Cardio care specialized & General Hospital', 'Uttara', [[],[1,2,3,4],[],[1,2,3,5,6,7],[3],[1,2,3],[]]).
hospital(005,'Meditech General Hospital', 'Khilkhet',  [[1,2,4,5],[1,2,3,5],[1,2,3,4,5],[1,2,3,4,5,6,7],[1,2,4,5],[1,2,3,4],[]]).
hospital(006,'City General Hospital', 'Khilkhet',[[1,2,3,4,5],[1,2,3,4],[1,2,4,5],[1,2,3,4,6,7],[1,2,3,4,5,6],[1,2,3],[]]).
hospital(007,'Popular Medical College Hospital', 'Mirpur', [[1,2,5,6],[2,3,4,5],[1,2,3,5],[1,2,3,6,7],[2,3,4,5,6],[1,3,4],[]]).
hospital(008,'Kingston Hospital', 'Mirpur',[[1,2,3,4,5,6],[1,2,3,4,5],[1,2,3,4,5],[1,2,3,4,5,6,7],[1,2,3,4,5,6],[1,2,3,4],[]]).
hospital(009,'National Heart Foundation Hospital', 'Mirpur',[[],[1,2,3,4],[],[1,2,3,5,6,7],[3],[1,2,3],[]]).
hospital(010,'Dhaka Eye Hospital', 'Mirpur', [[],[],[],[],[],[],[1,2,3]]).
hospital(011,'BIHS General Hospital', 'Mirpur',[[1,2,3,4,5],[1,2,3,5],[1,3,4,5],[1,2,3,4,5,6,7],[1,2,3,4,5,6],[1,2,3,4],[]]).
hospital(012,'United Hospital Limited', 'Banani',[[1,2,3,4,5,6],[1,2,3,4,5],[1,2,3,4,5],[1,2,3,4,5,6,7],[1,2,3,4,5,6],[1,2,3,4],[]]).
hospital(013,'Kingston Hospital', 'Banani', [[1,2,3,4,5],[1,2,3,4,5],[1,2,3,4,5],[1,2,3,4,5,6,7],[1,2,3,4,5,6],[1,2,3,4],[]]).
hospital(014,'Crescent Gastroliver & General Hospital', 'Dhanmondi',  [[],[],[1,2,3,4,5],[1,2,3,4,5,6,7],[1,2,5],[],[]]).
hospital(015,'Ibn Sina Hospital', 'Dhanmondi',[[1,2,3,4,6],[1,2,3,4,5],[1,2,3,4,5],[1,2,3,5,6,7],[1,2,3,4,5,6],[1,2,3,4],[2]]).
hospital(016,'Labaid Cardiac Hospital', 'Dhanmondi', [[],[1,2,3,4],[],[1,2,3,5,6,7],[3],[1,2,3],[]]).
hospital(017,'City Hospital', 'Dhanmondi',[[1,2,3,4,5],[1,2,3,4,5],[1,2,3,4,5],[1,2,3,4,5,6,7],[1,2,3,4,5,6],[1,2,3,4],[]]).


beds:- assert(available_beds(001,[61,43,23,8])), assert(available_beds(002,[0,0,0,0])),assert(available_beds(003,[31,21,19,0])),
    assert(available_beds(004,[77,24,31,9])),assert(available_beds(005,[65,34,22,6])),assert(available_beds(006,[62,50,41,1])),
    assert(available_beds(007,[92,44,21,7])),assert(available_beds(008,[51,46,46,6])),assert(available_beds(009,[79,32,30,3])),
    assert(available_beds(010,[56,51,35,8])),assert(available_beds(011,[93,29,35,7])),assert(available_beds(012,[80,23,29,6])),
    assert(available_beds(013,[83,37,22,4])),assert(available_beds(014,[84,25,23,2])),assert(available_beds(015,[59,23,26,8])),
    assert(available_beds(016,[55,33,37,3])),assert(available_beds(017,[60,43,37,4])).
appointments:- assert(appointment(001,date(2019,04,01),10,02)),
    assert(appointment(001,date(2019,04,01),11,05)),
    assert(appointment(012,date(2019,04,01),11,1)),assert(appointment(0203,date(2019,04,03),4,4)),
    assert(appointment(0012,date(2019,04,01),10,5)).



go:- write('Welcome to Hospital Information System.'), nl,
     write('Please enter your information-'),nl,

     write('Name : '),current_input(X),nl,read_line_to_codes(X,Y),string_codes(Name,Y),
     write('Age : '), read(Age), integer(Age),
     write('Gender : a) Female   b) Male'), read(Gender_opt), gender(Gender_opt,Gender),
     write('Location :
     1. Mirpur
     2. Banani
     3. Uttara
     4. Dhanmondi
     5. Khilkhet'), write('Enter your choice- '), read(Loc), location(Loc,Location),

     write("Name  : "),write(Name), nl, write("Age  : "),write(Age), nl,
     write("Gender  : "),write(Gender), nl,
     write("Location  : "), write(Location),nl,

     write('1) See Hospital List   2) Enter your emergency '), nl,read(Choice),
     choice(Choice,Location).

choice(2,Location):- write('
     1. Injury
     2. Someone collapsed
     3. Abdominal Pain
     4. Chest Pain
     5. Febrile illness
     6. Breathing Problems
     7. Eye injuries'),nl,
     write('Enter your choice- '), read(Choice21),emergency(Choice21,Choice22), hospital_emergency(Location,Choice21,Choice22).

choice(1,Location):-  hospitals(Choice2,Location),
     write('1. Book an appointment  2. Book a cabin/bed'),nl,read(Choice1),choice1(Choice1,Choice2).

choice1(1,Choice2):- write('
     1. Medicine
     2. Surgery') ,nl,
     write('Enter your choice- '), read(Choice3),
     write('
     1. Neurology
     2. Cardiology
     3. ENT'),nl,
     write('Enter your choice- '), read(Choice4),
     write('
     1. Professor
     2. Associate Professor
     3. Assistant Professor
     4. Any'),nl,
     write('Enter your choice- '), read(Choice5_temp), (Choice5_temp is 4, Choice5 = _; Choice5_temp =\= 4, Choice5 = Choice5_temp),
    (find_doctors(Choice2,Choice3,Choice4,Choice5,_,_,_,_,_); write('No available doctors.')).

choice1(2,Choice2):- available_beds(Choice2,[Ward,CabinSingle,CabinDouble,CabinVIP]),
     write('1. Ward- '),write(Ward),nl,
     write('2. Single Cabin- '),write(CabinSingle),nl,
     write('3. Double Cabin- '),write(CabinDouble),nl,
     write('4. VIP Cabin- '),write(CabinVIP),nl ,
     write('Enter your choice- '),read(C),nl,booking_bed(Choice2,C).

hospitals(Choice2,L):- write('1. See all  hospitals'),nl, write('2. See hospitals in your area'), nl, read(X),
                     (X is 1, hospitals_all(Choice2); X is 2,hospitals_in_area(Choice2,L)).

hospitals_all(ID2):-nb_setval(hospitalList_all,[]),nb_setval(count2,0),
    (hospital(ID,X,Y,_), nb_getval(count2, OldC), NewC is OldC+1,nb_setval(count2,NewC),
    nb_getval(hospitalList_all,TempList),append(TempList,[ID],NewList),nb_setval(hospitalList_all,NewList),
    write(NewC),write('. '), write(X),write(', '), write(Y),nl,fail);
    (write('Enter your choice- '), read(Choice2),nb_getval(hospitalList_all,HospiList),nth1(Choice2,HospiList,ID2), write(ID2),nl,
     hospital(ID2,F,_,_),write(F),nl).

hospitals_in_area(ID2,Y):- nb_setval(hospitalList,[]), nb_setval(count3,0),
    (hospital(ID,X,Y,_), nb_getval(count3, OldC), NewC is OldC+1,nb_setval(count3,NewC),
    nb_getval(hospitalList,TempList),append(TempList,[ID],NewList),nb_setval(hospitalList,NewList),
    write(NewC),write('. '), write(X),write(', '), write(Y),nl,fail);
    (write('Enter your choice- '), read(Choice2), nb_getval(hospitalList,HospiList),nth1(Choice2,HospiList,ID2),
     hospital(ID2,F,_,_),write(F),nl).

find_doctors(A,B,C,D,ID,X,Y,M,N):-nb_setval(docList,[]), nb_setval(count,0),(doctor(A,B,C,D,ID,X,Y,M,N),
    nb_getval(count, OldC), NewC is OldC+1,nb_setval(count,NewC),
    nb_getval(docList,TempList),append(TempList,[ID],NewList),nb_setval(docList,NewList),
    write(NewC),write('. '), write(X),write(' '), write(Y),nl,fail);
    (nb_getval(count, OldC),OldC =\= 0,
    write('Enter your choice- '), read(Choice8),  nb_getval(docList,DocList),nth1(Choice8,DocList,ID2),nl,doctor(_,_,_,_,ID2,F,S,_,_),nl,
    write('Choose appropriate options to book an appointment with Dr.'),write(F),write(' '),write(S),nl,booking_appointment(ID2)).

hospital_emergency(L,C1,C2):- nb_setval(hospitalListE,[]), nb_setval(count4,0),
    (hospital(ID,Name,L,X),nth1(C1,X,Y),member(C2,Y),
     available_beds(ID,[Ward,CabinSingle,CabinDouble,CabinVIP]),Sum is Ward+CabinSingle+CabinDouble+CabinVIP, Sum=\=0,
     nb_getval(count4, OldC), NewC is OldC+1,nb_setval(count4,NewC),
     nb_getval(hospitalListE,TempList),append(TempList,[ID],NewList),nb_setval(hospitalListE,NewList),
     write(NewC),write('. '), write(Name),write(':  '),nl,
     write('         1. Ward- '),write(Ward),nl,
     write('         2. Single Cabin- '),write(CabinSingle),nl,
     write('         3. Double Cabin- '),write(CabinDouble),nl,
     write('         4. VIP Cabin- '),write(CabinVIP),nl,nl,fail);
     (nb_getval(count4,Count),
     (Count is 0,write('No hospital in your area that deals with your emergency'),nl,write('Hospitals in other areas that deal with your emergency:'),
     nl, hospital_emergency_all(C1,C2);
     Count=\=0, write('1. Book a bed/cabin from this list'),nl,write('2. See hospitals in other areas for your emergency'),read(Choice),
     (Choice is 1,write('Enter your hospital choice- '),read(H), integer(H),nl, write('Enter your ward/cabin choice- '),read(C),integer(C),nl,
     nb_getval(hospitalListE,List),nth1(H,List,H_id),booking_bed(H_id,C);
     Choice is 2,hospital_emergency_all(C1,C2)))).

hospital_emergency_all(C1,C2):- nb_setval(hospitalListE_all,[]), nb_setval(count5,0),
    (hospital(ID,Name,L,X),nth1(C1,X,Y),member(C2,Y),
     available_beds(ID,[Ward,CabinSingle,CabinDouble,CabinVIP]), Sum is Ward+CabinSingle+CabinDouble+CabinVIP, Sum=\=0,
     nb_getval(count5, OldC), NewC is OldC+1,nb_setval(count5,NewC),
     nb_getval(hospitalListE_all,TempList),append(TempList,[ID],NewList),nb_setval(hospitalListE_all,NewList),
     write(NewC),write('. '), write(Name),write(',  '),write(L),write(' :  '),nl,
     write('         1. Ward- '),write(Ward),nl,
     write('         2. Single Cabin- '),write(CabinSingle),nl,
     write('         3. Double Cabin- '),write(CabinDouble),nl,
     write('         4. VIP Cabin- '),write(CabinVIP),nl,nl,fail);
     write('Enter your hospital choice- '),read(H),nl, write('Enter your ward/cabin choice- '),read(C),nl,
     nb_getval(hospitalListE_all,List),nth1(H,List,H_id),booking_bed(H_id,C).

emergency(1,Choice22):-write('
     1. Broken Bones
     2. Overstretching or tearing the ligaments : Sprain
     3. Swelling in muscle with pain and weakness : Swollen muscle
     4. Bone injury with swelling, pain and weakness : Dislocated Bone
     5. Deep cut or tearing of your skin with bleeding : Laceration
     6. Small hole caused by a long, pointy object with bleeding : Puncture'), nl,
     write('Enter your choice- '), read(Choice22).

emergency(2, Choice22):- write('
     1. Paralysis, slurred speech, numb arm, face or leg, vision problem or severe headache : Stroke
     2. Sweating, cold fingers and toes, rapid weak heart beat, fatigue, hyperventilation, sudden shortness of breath : Cardiogenic shock
     3. Sweating, shaking, hunger, pale skin, fatigue, rapid heartbeat, blurry vision : Hypoglycemia
     4. Cold/clammy skin, pale skin, blue lips and fingernails, rapid heart rate, shallow rapid breathing, weak pulse : Hypovolmic Shock
     5. Inability to speak, cough, make noise and breathe : Choking'),nl,
     write('Enter your choice- '), read(Choice22).

emergency(3, Choice22):- write('
     1. Upper abdominal pain: Excess gas
     2. Pain and indigestion: Lactose intolerance
     3. Severe pain in the upper abdominal area: Ulcers
     4. Lower right abdominal pain: Appendicitis
     5. Cramping and diarrhoea: Gastroenteritis (stomach flu)'),nl,
     write('Enter your choice- '), read(Choice22).

emergency(4,Choice22):- write('
     1. Pain or discomfort, possibly described as pressure, squeezing, burning or fullness : Angina
     2. Pressure, tightness, pain, or aching sensation in chest or arms with cold sweat or fatigue : Heart Attack
     3. Sudden severe chest or upper back pain, like a tearing, ripping or shearing sensation with abdominal pain : Aortic dissection
     4. Burning pain : Gastroesophageal reflux disease (GERD)
     5. Moderate to severe chest pain with breathing, swallowing, and/or vomiting : Esophagus rapture
     6. Chest discomfort and/or shortness of breath with pain that can be sharp, stabbing, burning, or aching : Pulmonary embolism
     7. Sudden onset of sharp chest pain and shortness of breath that is relatively constant : Collapsed Lungs'),nl,
     write('Enter your choice- '), read(Choice22).

emergency(5,Choice22):- write('
     1. Temparature above 101.5°F with severe dehydration, vomiting, persistent diarrhea or bloody urine : Food poisoning
     2. Temparature above 101ºF or below 96.8ºF with patches of discolored skin, higher heart rate, decreased urination
        and breathing problems : Severe Sepsis
     3. Temparature above 104ºF with hallucination, confusion, weak pulse, dry skin, seizure, shallow breathing : Heat Stroke
     4. Temparature above 100.4ºF with headaches, stiff neck, seizures, sensitivity to bright light, lethargy, nausea : Meningitis
     5. Temparature above 100.4ºF with jaundice, dark urine, pale stool, fatigue, appetite loss : Hepatitis
     6. Sudden high fever with severe headache, swollen lymph glands, joint and muscle pains, skin rash or bruse, nausea, vomiting,
        nose or gum bleeding : Dengue fever'),nl,
     write('Enter your choice- '), read(Choice22).

emergency(6,Choice22):- write('
     1. Breathing more slowly than normal : Asthma attack
     2. Breathing faster than normal : COPD(Chronic Obstructive Pulmonary Disease)
     3. Breathing in more air but not necessarily breathing faster : Heart Failure
     4. Fast and deep breathing :  diabetic ketoacidosis'),nl,
     write('Enter your choice- '),write('Enter your choice- '), read(Choice22).

emergency(7,Choice22):-write('
     1. Injury or infection of the cornea, the transparent front window of the eye, can lead to serious visual impairment: Corneal Injury
     2. Blood in the front area (anterior chamber) of the eye. The blood collects behind the cornea and in front of the iris: Hyphemia
     3. Bruising around the eye due to an injury to the face or the head. Blood and other fluids collect in the space around the eye, causing swelling and dark bruising in the tissue'),nl,
    read(Choice22).






booking_bed(ID,N):- available_beds(ID,X),
    nth1(N,X,Old),New is Old-1,repeat,select(Old,X,New,Y),nth1(N,Y,New),
    retract(available_beds(ID,X)), assert(available_beds(ID,Y)), nl,write('Booking Successfull').

booking_appointment(ID):-write('Insert a date- '),nl,write('Year: '),read(Y),write('Month: '),read(M),write('Day: '),read(D),nl,
    doctor(_,_,_,_,ID,_,_,Day,X),day_of_the_week(date(Y,M,D),DayChosenNum),day(DayChosen,DayChosenNum),
    not(member(DayChosen,Day)),write('Insert a time slot:- '),write(X),nl,read(SlotChosen),
    member(SlotChosen,X),booking_appointment2(ID,Y,M,D,SlotChosen).

booking_appointment2(ID,Y,M,D,SlotChosen):-appointment(ID,date(Y,M,D),SlotChosen,Count),Count<5,NewC is Count+1,
    retract(appointment(ID,date(Y,M,D),SlotChosen,Count)), assert(appointment(ID,date(Y,M,D),SlotChosen,NewC)).
booking_appointment2(ID,Y,M,D,SlotChosen):-appointment(ID,date(Y,M,D),SlotChosen,Count),Count>=5,nl,write('Slot full'),booking_appointment(ID).
booking_appointment2(ID,Y,M,D,SlotChosen):-assert(appointment(ID,date(Y,M,D),SlotChosen,1)).








