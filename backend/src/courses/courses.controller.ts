import { Body, Controller, Delete, Get, Param, ParseIntPipe, Patch, Post, ValidationPipe } from '@nestjs/common';
import { CoursesService } from './courses.service';
import { CreateCourseDto } from './dto/create-course.dto';
import { UpdateCourseDto } from './dto/update-course.dto';
import { Prisma } from 'src/generated/prisma/client';

@Controller('cursos')
export class CoursesController {
    constructor(private coursesService: CoursesService) {}

    @Get()
    findAll(): {} {
        return this.coursesService.findAll()
    }

    @Get(":id")
    findOne(@Param("id", ParseIntPipe) id: number) {
        return this.coursesService.findOne(id)
    }

    @Post()
    create(@Body(ValidationPipe) createCourseDto: Prisma.coursesCreateInput){  // CreateCourseDto) {
        return this.coursesService.create(createCourseDto)
    }

    @Patch(":id")
    update(@Param("id", ParseIntPipe) id: number, @Body() updateCourseDto: Prisma.coursesUpdateInput) { // UpdateCourseDto) {
        return this.coursesService.update(id, updateCourseDto)
    }

    @Delete(":id")
    delete(@Param("id", ParseIntPipe) id: number) {
        return this.coursesService.delete(id)
    }
}
