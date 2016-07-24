package net.incuventure

class Dentist {

    static constraints = {
    }

    String name

    static mapping = {
        table "mace_dentist"
        id generator:'native', params:[sequence:'mace_dentist_seq']
    }
}
