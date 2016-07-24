package net.incuventure

class Approval {


    static constraints = {
        member nullable: false
        doctor nullable: true
        hospital nullable: true
        laboratoryDiagnosticProcedure nullable: true
        basicTest nullable: true
        requestDate nullable: false
        status nullable: false, blank: false
        statusDate nullable: false
    }


    Member member
    Doctor doctor
    Hospital hospital
    LaboratoryDiagnosticProcedure laboratoryDiagnosticProcedure
    BasicTest basicTest
    Date requestDate
    String status
    String statusDate

    static mapping = {
        table "mace_approval"
        id generator:'native', params:[sequence:'mace_approval_seq']
    }
}
