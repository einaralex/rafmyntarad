Smart contract hugmynd

Þegar eitthvað ákveðið stock í búð klárast, þá er gerð pöntun samstundis til suppliersins


addToStock
- tekur inn: item, amount
- tjékkar ef sender er eigandi
- tjékkar er item er til, bæta í, annars býa til nýtt
- skilar item og amount?

getStock 
- tekur inn: item
- skilar stöðu á item

removeFromStock
- tekur inn: item, amount
- tjékkar ef sender er eigandi
- tjékkar er item er til, bæta í, annars býa til nýtt
- skilar item og amount?

vendorBuys:
- tekur inn
- sendir currency á móttakanda
- kallar á addToStock ?!?

vendorSells:
- tekur á móti currency frá sender
- kallar á removeFromStock