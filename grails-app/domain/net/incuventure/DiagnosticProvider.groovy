package net.incuventure

class DiagnosticProvider {

    static constraints = {
        name maxSize:250
        code maxSize: 150, nullable: true, blank: true
        address maxSize: 500, nullable: true, blank: true
    }

    String name
    String address
    String code


    static mapping = {
        table "mace_diag_prov"
        id generator:'native', params:[sequence:'mace_diag_prov_seq']
    }

}
