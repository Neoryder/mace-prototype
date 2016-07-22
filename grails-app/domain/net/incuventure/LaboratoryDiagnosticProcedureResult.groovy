package net.incuventure

class LaboratoryDiagnosticProcedureResult {

    static constraints = {
        laboratoryDiagnosticProcedure
        value
        unit nullable: true, blank: true
        extractionDate nullable: true
        releaseDate nullable: true
        member
    }


    LaboratoryDiagnosticProcedure laboratoryDiagnosticProcedure
    BigDecimal value
    String unit
    Date releaseDate
    Date extractionDate
    Member member
}
