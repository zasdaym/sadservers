from collections import defaultdict
from dataclasses import dataclass

freq_by_word = defaultdict(int)

with open("frankestein.txt", "r") as file:
    for line in file:
        for word in line.split():
            freq_by_word[word.upper()] += 1

@dataclass
class Word:
    name: str
    freq: int

sorted_words = sorted(
    [Word(name=word, freq=freq) for word, freq in freq_by_word.items()],
    key=lambda word: word.freq,
)

with open("/home/admin/mysolution", "w") as file:
    file.write(f"{sorted_words[-2].name}\n")
