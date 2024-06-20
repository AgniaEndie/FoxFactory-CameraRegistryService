package ru.agniaendie.cameraregistryservice

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class CameraRegistryServiceApplication

fun main(args: Array<String>) {
    runApplication<CameraRegistryServiceApplication>(*args)
}
