var fs = require('fs');

function handValue(hand)
{
    const cardCount = new Map();
    for (const card of hand) {
        cardCount.set(card, (cardCount.get(card) ?? 0) + 1);
    }
    const countString = Array.from(cardCount.values()).sort().join("");
    const handVal = new Array("11111", "1112", "122", "113", "23", "14", "5")
    return handVal.indexOf(countString)
}

function handSerial(hand)
{
    const cardVal = new Map([
        ['2', 2], ['3', 3], ['4', 4], ['5', 5], ['6', 6], ['7', 7], ['8', 8],
        ['9', 9], ['T', 10], ['J', 11], ['Q', 12], ['K', 13], ['A', 14]
    ]);
    return hand.split('').reduce((tot, cur) => tot * 15 + cardVal.get(cur), 0);
}

function roundCompare(round1, round2) {
    const handVal1 = handValue(round1[0]);
    const handVal2 = handValue(round2[0]);
    if (handVal1 < handVal2) return -1;
    if (handVal1 > handVal2) return 1;
    const handSer1 = handSerial(round1[0]);
    const handSer2 = handSerial(round2[0]);
    if (handSer1 < handSer2) return -1;
    if (handSer1 > handSer2) return 1;
}
  
const data = fs.readFileSync('input.txt', 'utf8').split('\n');
const rounds = data.map(str => str.split(' ')).sort(roundCompare);
const score = rounds.reduce((tot, cur, idx) => tot + parseInt(cur[1]) * (idx+1), 0);
console.log(score);
