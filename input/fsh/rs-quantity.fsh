RuleSet: quantity-ucum(code, unit)
* system 1.. MS
* system = $ucum
* value 1.. MS
* unit 1.. MS
* unit = {unit}
* code 1.. MS
* code = {code}

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

RuleSet: quantity-ucum-no-unit
* system 1.. MS
* system = $ucum
* value 1.. MS
* unit 1.. MS
* code 1.. MS

RuleSet: value-quantity-or-range-required-no-unit
* value[x] 1..1 MS
* value[x] only Range or Quantity
* valueQuantity MS
  * insert quantity-ucum-no-unit
* valueRange
  * low
    * insert quantity-ucum-no-unit
  * high
    * insert quantity-ucum-no-unit
