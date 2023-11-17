def fib(n, memo=None):
    if memo is None:
        memo = [0] * (n + 1)

    if memo[n] != 0:
        return memo[n]

    if n == 1 or n == 2:
        result = 1
    else:
        result = fib(n - 1, memo) + fib(n - 2, memo)

    memo[n] = result
    return result