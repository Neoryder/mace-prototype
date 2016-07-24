package net.incuventure

class Doctor {

    static constraints = {
        userNumber maxSize: 20
        firstName maxSize: 100
        middleName maxSize: 100, nullable:true, blank: true
        lastName maxSize: 100
        companyName nullable: true, blank: true
        gender  nullable: true, blank: true

        status nullable: true, blank: true

        mobileNumber nullable: true, blank: true
        homeNumber nullable: true, blank: true
        personalEmail nullable: true, blank: true, email: true
        workEmail nullable: true, blank: true, email: true
    }


    String userNumber
    String firstName
    String middleName
    String lastName
    String companyName
    String gender

    String status

    String mobileNumber
    String homeNumber
    String personalEmail
    String workEmail

    static mapping = {
        table "mace_doctor"
        id generator:'native', params:[sequence:'mace_doctor_seq']
    }

    String toString(){
        return lastName+","+firstName+"|"+userNumber
    }

}
