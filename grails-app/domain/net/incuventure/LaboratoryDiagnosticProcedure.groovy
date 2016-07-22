package net.incuventure

class LaboratoryDiagnosticProcedure {

    static constraints = {
        name maxSize: 200
        description maxSize: 500
        abbreviation maxSize: 50
        highValue nullable: true
        lowValue nullable: true
        unit maxSize: 50
    }


    String name
    String abbreviation
    String description
    BigDecimal highValue
    BigDecimal lowValue
    String unit

}
