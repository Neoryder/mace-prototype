package net.incuventure

class TransactionRequest {

    static constraints = {
        member
        doctor nullable: true
        hospital nullable: true
        laboratory nullable: true
        basicTest nullable: true
        procedure nullable: true
        requestDate
        status
        statusDate
    }


    Member member
    Doctor doctor
    Hospital hospital
    LaboratoryDiagnosticProcedure laboratory
    BasicTest basicTest
    Procedure procedure
    Date requestDate
    String status
    String statusDate
}
