group = "com.shekarmudaliyar.social_share"
version = "1.0-SNAPSHOT"

plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android")
}

android {
    namespace = "com.shekarmudaliyar.social_share"

    compileSdk = 36

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = "17"
    }

    sourceSets {
        getByName("main") {
            java.directories.add("src/main/kotlin")
        }
    }

    defaultConfig {
        minSdk = 24
    }

    lint {
        disable += "InvalidPackage"
    }
}
