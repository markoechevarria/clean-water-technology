import { IsDateString } from "class-validator"

export class CreateUserDto {
    name: string
    last_name: string
    document: string

    @IsDateString()
    registry_date: Date
    email: string
    password: string
}