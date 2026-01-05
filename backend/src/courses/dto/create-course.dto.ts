import { IsString, IsInt, IsDateString, MinLength } from 'class-validator';

export class CreateCourseDto {
    name: string
    description: string

    @IsDateString()
    creation_date: string
    num_modules: number
    code: string
}