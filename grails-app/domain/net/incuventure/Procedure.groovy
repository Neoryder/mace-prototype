package net.incuventure

class Procedure {

    static constraints = {
        name maxSize: 200
        description maxSize: 500
        abbreviation maxSize: 50
    }

    String name
    String description
    String abbreviation
}
