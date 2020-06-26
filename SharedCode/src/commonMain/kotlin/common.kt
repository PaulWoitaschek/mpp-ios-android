package com.jetbrains.handson.mpp.mobile

import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.emptyFlow
import kotlin.random.Random
import kotlin.time.Duration

expect fun platformName(): String

fun createApplicationScreenMessage(): String {
    return "Kotlin Rocks on ${platformName()}"
}

fun flow() : Flow<Unit> = emptyFlow()

class MySomething{

    fun hello() : Flow<Unit> = emptyFlow()
}