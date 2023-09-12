% Правило для нахождения суммы четных цифр числа
sum_of_even_digits(0, 0). % Базовый случай: если число пустое, сумма равна 0.
sum_of_even_digits(N, Sum) :-
    N > 0,
    Digit is N mod 10, % Получаем последнюю цифру числа
    (Digit mod 2 =:= 0 -> % Если цифра четная
        sum_of_even_digits(N // 10, RestSum), % Рекурсивно считаем сумму остальных цифр
        Sum is RestSum + Digit % Добавляем четную цифру к сумме
    ; % Иначе, если цифра нечетная
        sum_of_even_digits(N // 10, Sum) % Просто рекурсивно считаем сумму остальных цифр
    ).

% Пример использования:
% swipl
% ?-consult('work.pl').
% ?- sum_of_even_digits(123456789, Sum).
% Sum = 20.