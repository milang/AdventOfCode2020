print("Solving day 1")

local parsedNumbers = {}
for line in io.lines("Day01.txt") do
    parsedNumbers[#parsedNumbers + 1] = tonumber(line)
end

local function findSum2(numbers, sum)
    for i = 1, #numbers - 1, 1 do
        for j = i + 1, #numbers, 1 do
            if (numbers[i] + numbers[j] == sum) then
                return numbers[i], numbers[j];
            end
        end
    end
end

local x, y = findSum2(parsedNumbers, 2020)
print(string.format("For two numbers, found %d and %d, Result is %d", x, y, x * y))

--------

local function findSum3(numbers, sum)
    for i = 1, #numbers - 2, 1 do
        for j = i + 1, #numbers - 1, 1 do
            for k = j + 1, #numbers, 1 do
                if (numbers[i] + numbers[j] + numbers[k] == sum) then
                    return numbers[i], numbers[j], numbers[k];
                end
            end
        end
    end
end

local a, b, c = findSum3(parsedNumbers, 2020)
print(string.format("For three numbers, found %d and %d and %d, Result is %d", a, b, c, a * b * c))
