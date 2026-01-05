-- CreateTable
CREATE TABLE "users" (
    "id_user" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "last_name" TEXT NOT NULL,
    "document" TEXT NOT NULL,
    "registry_date" TIMESTAMP(3) NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id_user")
);

-- CreateTable
CREATE TABLE "courses" (
    "id_course" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "creation_date" TIMESTAMP(3) NOT NULL,
    "num_modules" INTEGER NOT NULL,
    "code" TEXT NOT NULL,

    CONSTRAINT "courses_pkey" PRIMARY KEY ("id_course")
);

-- CreateTable
CREATE TABLE "course_user" (
    "id_course_user" SERIAL NOT NULL,
    "id_user" INTEGER NOT NULL,
    "id_course" INTEGER NOT NULL,
    "registry_date" TIMESTAMP(3) NOT NULL,
    "status" TEXT NOT NULL,

    CONSTRAINT "course_user_pkey" PRIMARY KEY ("id_course_user")
);

-- CreateTable
CREATE TABLE "modules" (
    "id_module" SERIAL NOT NULL,
    "id_course" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,

    CONSTRAINT "modules_pkey" PRIMARY KEY ("id_module")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- AddForeignKey
ALTER TABLE "course_user" ADD CONSTRAINT "course_user_id_user_fkey" FOREIGN KEY ("id_user") REFERENCES "users"("id_user") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "course_user" ADD CONSTRAINT "course_user_id_course_fkey" FOREIGN KEY ("id_course") REFERENCES "courses"("id_course") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "modules" ADD CONSTRAINT "modules_id_course_fkey" FOREIGN KEY ("id_course") REFERENCES "courses"("id_course") ON DELETE RESTRICT ON UPDATE CASCADE;
