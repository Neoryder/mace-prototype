package net.incuventure

class Member {

    static constraints = {
        userNumber maxSize: 20, unique: true
        firstName maxSize: 100
        middleName maxSize: 100, nullable: true, blank: true
        lastName maxSize: 100
        companyName nullable: true, blank: true, maxSize: 250
        gender  inList: ["Male","Female"]
        remarks nullable: true, blank: true
        memberPlan nullable: true, blank: true
        effectivityDate nullable: true
        nextEffectivityDate nullable: true
        validityDate nullable: true
        nextValidityDate nullable: true
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
    String remarks
    String memberPlan
    Date effectivityDate
    Date nextEffectivityDate
    Date validityDate
    Date nextValidityDate
    String status


    String mobileNumber
    String homeNumber
    String personalEmail
    String workEmail


    static mapping = {
        table "mace_member"
        id generator:'native', params:[sequence:'mace_member_seq']
    }

    String toString(){
        return lastName +", "+firstName+"|"+userNumber
    }
}
