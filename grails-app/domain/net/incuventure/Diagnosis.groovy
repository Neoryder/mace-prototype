package net.incuventure

class Diagnosis {

    static constraints = {
        code maxSize:50
        name maxSize:250
        description maxSize: 500, nullable:true, blank: true
        flag00 maxSize:1, nullable:true, blank: true
    }

    String code
    String name
    String description
    String flag00

    static mapping = {
        table "mace_diagnosis"
        id generator:'native', params:[sequence:'mace_diagnosis_seq']
    }
}
