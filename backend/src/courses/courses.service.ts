import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma.service';
import { CreateCourseDto } from './dto/create-course.dto';
import { UpdateCourseDto } from './dto/update-course.dto';
import { Prisma } from 'src/generated/prisma/client';

@Injectable()
export class CoursesService {
    constructor(private prismaService: PrismaService) {}

    async findAll() {
        return this.prismaService.courses.findMany()
    }

    async findOne( id: number) {
        return this.prismaService.courses.findUnique({
            where: {
                id_course: id
            }
        })
    }

    async create( createCourseDto: Prisma.coursesCreateInput){ // CreateCourseDto) {
        const newDate = new Date(createCourseDto.creation_date)
        return this.prismaService.courses.create({
            data: {
                ...createCourseDto, 
                creation_date: newDate
            }
        })
    }

    async update(id: number, updateCourseDto: Prisma.coursesUpdateInput) { // UpdateCourseDto) {
        return this.prismaService.courses.update({
            where: {
                id_course: id
            },
            data: {
                ...updateCourseDto
            }
        })
    }

    async delete(id: number) {
        return this.prismaService.courses.delete({
            where: {
                id_course: id
            }
        })
    }
}