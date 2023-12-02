// Advent of Code 2023, Day 1

fun Boolean.toInt() = if (this) 1 else 0

fun main() {
    getTestsPart1()
        .map(::findDigits)
        .map { it.first() * 10 + it.last() }
        .sum()
        .also(::println)
    getTestsPart2()
        .map(::findNumbers)
        .map { it.first() * 10 + it.last() }
        .sum()
        .also(::println)
}

fun findDigits(s: String): List<Int> = s
    .filter(Char::isDigit)
    .map(Char::digitToInt)

fun findNumbers(s: String): List<Int> {
    val words = listOf("one", "two", "three", "four", "five", "six", "seven", "eight", "nine")
    val nums = mutableListOf<Int>()
    for (i in s.indices) {
        if (s[i].isDigit()) {
            nums.add(s[i].digitToInt())
        } else {
            val digit = words.mapIndexed { idx, word ->
                s.substring(i).startsWith(word).toInt() * (idx + 1)
            }.sum()
            if (digit > 0) nums.add(digit)
        }
    }
    return nums
}

fun getTestsPart1(): List<String> = listOf(
    "1abc2",
    "pqr3stu8vwx",
    "a1b2c3d4e5f",
    "treb7uchet",
)

fun getTestsPart2(): List<String> = listOf(
    "two1nine",
    "eightwothree",
    "abcone2threexyz",
    "xtwone3four",
    "4nineeightseven2",
    "zoneight234",
    "7pqrstsixteen",
)
