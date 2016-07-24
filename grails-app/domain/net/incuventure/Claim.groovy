package net.incuventure

class Claim {

    static constraints = {
        approval nullable: false
        status nullable: true, blank: true
        statusDate nullable: true, blank: true
    }

    String status
    Approval approval
    Date statusDate
    BigDecimal amount


    static mapping = {
        table "mace_claim"
        id generator:'native', params:[sequence:'mace_claim_seq']
    }



}
