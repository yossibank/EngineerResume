/// @mockable
protocol ProfileConverterInput {
    func convert(_ object: Profile) -> ProfileModelObject
}

struct ProfileConverter: ProfileConverterInput {
    func convert(_ object: Profile) -> ProfileModelObject {
        .init(
            identifier: object.identifier,
            name: object.name ?? "",
            age: object.age?.intValue ?? -1
        )
    }
}
