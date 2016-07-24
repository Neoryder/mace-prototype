package net.incuventure

class Hospital {

    static constraints = {
        companyName maxSize: 250, blank:true
        hospitalCode maxSize: 20, nullable: true, blank: true
        coordinatorName maxSize: 250, nullable: true, blank: true
        coordinatorNumber maxSize: 50, nullable: true, blank: true
        mobileNumber nullable: true, blank: true
        landlineNumber nullable: true, blank: true
        faxNumber nullable: true, blank: true
        email nullable: true, blank: true, email: true
        workEmail nullable: true, blank: true, email: true

    }

    String companyName
    String hospitalCode
    String coordinatorName
    String coordinatorNumber
    String mobileNumber
    String landlineNumber
    String faxNumber
    String email
    String workEmail


    static mapping = {
        table "mace_hospital"
        id generator:'native', params:[sequence:'mace_hospital_seq']
    }

    String toString(){
        return companyName
    }
}
