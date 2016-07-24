package net.incuventure

class LaboratoryDiagnosticProcedureResult {

    static constraints = {
        laboratoryDiagnosticProcedure nullable: false
        value nullable: false
        unit nullable: true, blank: true
        extractionDate nullable: true
        releaseDate nullable: true
        member nullable: false
    }


    LaboratoryDiagnosticProcedure laboratoryDiagnosticProcedure
    BigDecimal value
    String unit
    Date releaseDate
    Date extractionDate
    Member member


    static mapping = {
        table "mace_procedure_result"
        id generator:'native', params:[sequence:'mace_procedure_result_seq']
    }
}
