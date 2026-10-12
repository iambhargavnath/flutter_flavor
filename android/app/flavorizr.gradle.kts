import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("nike") {
            dimension = "flavor-type"
            applicationId = "com.example.flavor.nike"
            resValue(type = "string", name = "app_name", value = "Flavor Nike")
        }
        create("puma") {
            dimension = "flavor-type"
            applicationId = "com.example.flavor.puma"
            resValue(type = "string", name = "app_name", value = "Flavor Puma")
        }
        create("adidas") {
            dimension = "flavor-type"
            applicationId = "com.example.flavor.adidas"
            resValue(type = "string", name = "app_name", value = "Flavor Adidas")
        }
    }

    buildFeatures.resValues = true
}