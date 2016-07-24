package net.incuventure

class LaboratoryDiagnosticProcedure {

    static constraints = {
        name maxSize: 200
        code maxSize: 50
        type maxSize: 50
        subType maxSize: 100
        amount maxSize: 50
        description maxSize: 500, nullable:true, blank: true
        abbreviation maxSize: 50, nullable:true, blank: true
        highValue nullable: true
        lowValue nullable: true
        unit maxSize: 50, nullable:true, blank: true
    }


    String name
    String code
    String type
    String subType
    String amount
    String abbreviation
    String description
    BigDecimal highValue
    BigDecimal lowValue
    String unit

    static mapping = {
        table "mace_procedure"
        id generator:'native', params:[sequence:'mace_procedure_seq']
    }

    String toString(){
        return name+"|"+type+"-"+subType+"|"+amount
    }

}
