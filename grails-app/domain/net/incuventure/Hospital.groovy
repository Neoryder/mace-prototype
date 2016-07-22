package net.incuventure

class Hospital {

    static constraints = {
        companyName maxSize: 250
        hospitalCode maxSize: 20, nullable: true, blank: true
        coordinatorName maxSize: 250
        coordinatorNumber
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

}
