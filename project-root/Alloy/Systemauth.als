sig User {}

abstract sig Role {}
one sig Admin, Manager, Employee extends Role {}

abstract sig Permission {}
one sig Read, Write, Delete extends Permission {}

sig Session {
    owner : one User
}

one sig AuthSystem {
    users : set User,
    roles : users -> one Role,
    permissions : Role -> set Permission,
    sessions : set Session
}

fact ValidSessions {
    all s : AuthSystem.sessions |
        s.owner in AuthSystem.users
}

fact OneRolePerUser {
    all u : AuthSystem.users |
        one AuthSystem.roles[u]
}

fact PermissionAssignment {

    AuthSystem.permissions[Admin] = Read + Write + Delete

    AuthSystem.permissions[Manager] = Read + Write

    AuthSystem.permissions[Employee] = Read
}

assert NoUnauthorizedSession {

    all s : AuthSystem.sessions |
        s.owner in AuthSystem.users
}

assert EveryUserHasOneRole {

    all u : AuthSystem.users |
        one AuthSystem.roles[u]
}

pred show {}

run show for 5

check NoUnauthorizedSession for 5

check EveryUserHasOneRole for 5
