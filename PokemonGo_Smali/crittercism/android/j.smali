.class public final Lcrittercism/android/j;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 30
    .line 32
    if-nez p0, :cond_4

    .line 49
    :cond_3
    :goto_3
    return-object v0

    .line 37
    :cond_4
    if-eqz p0, :cond_3

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 41
    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/ThreadDeath; {:try_start_a .. :try_end_d} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_11

    move-result-object v0

    goto :goto_3

    .line 42
    :catch_f
    move-exception v0

    throw v0

    .line 44
    :catch_11
    move-exception v0

    .line 45
    new-instance v1, Lcrittercism/android/cl;

    const-string v2, "Unable to get value of field"

    invoke-direct {v1, v2, v0}, Lcrittercism/android/cl;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 9

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 83
    const/4 v1, 0x0

    .line 85
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_9
    array-length v3, v2

    if-ge v1, v3, :cond_48

    .line 86
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 87
    if-eqz v0, :cond_43

    .line 88
    new-instance v3, Lcrittercism/android/cl;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Field is ambiguous: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcrittercism/android/cl;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_43
    aget-object v0, v2, v1

    .line 85
    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 95
    :cond_48
    if-nez v0, :cond_63

    .line 96
    new-instance v0, Lcrittercism/android/cl;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find field matching type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcrittercism/android/cl;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 101
    return-object v0
.end method

.method public static a([Ljava/lang/reflect/AccessibleObject;)V
    .registers 4

    .prologue
    .line 125
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_f

    .line 128
    aget-object v1, p0, v0

    .line 129
    if-eqz v1, :cond_c

    .line 132
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 127
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_f
    return-void
.end method
