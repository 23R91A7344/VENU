n_queens(N,Queens):-range(1,N,NList),permutation(NList,Queens),safe_queens(Queens).
range(Min,Max,[Min|Rest]):-Min<Max,NewMin is Min+1,
range(NewMin,Max,Rest).
range(Max,Max,[Max]).
safe_queens([]).
safe_queens([Q|QS]):-safe_queens(QS,Q,1),safe_queens(QS).
safe_queens([],_,_).
safe_queens([Q|QS],Q0,D0):-
Q0=\=Q,
abs(Q0-Q)=\=D0,
D1 is D0+1,
safe_queens(QS,Q0,D1).
