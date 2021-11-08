RuleSet: quantity-ucum(code, unit)
* system 1.. MS
* system = $ucum
* value 1.. MS
* unit 1.. MS
* unit = {unit}
* code 1.. MS
* code = {code}

RuleSet: value-quantity(code, unit)
* value[x] MS
* value[x] only Quantity
* valueQuantity 1..1 MS
  * insert quantity-ucum({code}, {unit})

RuleSet: value-quantity-or-range(code, unit)
* value[x] MS
* value[x] only Range or Quantity
* valueQuantity MS
  * insert quantity-ucum({code}, {unit})
* valueRange
  * low
    * insert quantity-ucum({code}, {unit})
  * high
    * insert quantity-ucum({code}, {unit})
