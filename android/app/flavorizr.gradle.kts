import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("development") {
            dimension = "flavor-type"
            applicationId = "com.example.projectsetup"
            resValue(type = "string", name = "app_name", value = "Project Setup - DEV")
        }
        create("staging") {
            dimension = "flavor-type"
            applicationId = "com.example.projectsetup"
            resValue(type = "string", name = "app_name", value = "Project Setup - STAGE")
        }
        create("production") {
            dimension = "flavor-type"
            applicationId = "com.example.projectsetup"
            resValue(type = "string", name = "app_name", value = "Project Setup")
        }
    }
}