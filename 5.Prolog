
% 1. Likes Relationship
likes(ram, apple).
likes(sita, mango).
likes(ram, mango).

friend(X, Y) :-
    likes(X, Z), likes(Y, Z), X \= Y.

% Query: ?- likes(ram, mango).


% 2. Campus Placement Eligibility
cgpa(raj, 8.2).
no_arrears(raj).
good_communication(raj).

eligible(X) :-
    cgpa(X, C), C >= 7.5,
    no_arrears(X),
    good_communication(X).

% Query: ?- eligible(raj).


% 3. Smart Home Automation
temperature(high).
at_home.
dark.

action(turn_on_ac) :-
    temperature(high), at_home.

action(turn_on_lights) :-
    dark, at_home.

action(activate_alarm) :-
    \+ at_home.

% Queries:
% ?- action(turn_on_ac).
% ?- action(turn_on_lights).
% ?- action(activate_alarm).


% 4. Library Management
registered(raj).
no_overdue(raj).
available(book1).

can_borrow(X, B) :-
    registered(X),
    no_overdue(X),
    available(B).

% Query: ?- can_borrow(raj, book1).


% 5. Elective Recommendation
interested(raj, ai).
interested(sam, web).

course(ai, artificial_intelligence).
course(web, web_development).
course(data, data_science).

recommend(X, C) :-
    interested(X, I),
    course(I, C).

% Query: ?- recommend(raj, C).


% 6. Family Tree
parent(john, mary).
parent(mary, sam).
parent(mary, anna).
parent(john, david).

grandparent(X, Y) :-
    parent(X, Z), parent(Z, Y).

sibling(X, Y) :-
    parent(Z, X), parent(Z, Y), X \= Y.

ancestor(X, Y) :-
    parent(X, Y).

ancestor(X, Y) :-
    parent(X, Z), ancestor(Z, Y).

% Queries:
% ?- grandparent(john, sam).
% ?- sibling(sam, anna).
% ?- ancestor(john, sam).
