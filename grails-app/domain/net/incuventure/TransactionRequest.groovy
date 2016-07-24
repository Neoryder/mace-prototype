package net.incuventure

class TransactionRequest {

    static constraints = {
        member nullable: false, blank: false
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
        table "mace_transaction_request"
        id generator:'native', params:[sequence:'mace_transaction_request_seq']
    }
}
