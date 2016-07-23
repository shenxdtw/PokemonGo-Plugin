.class public final Lcrittercism/android/l;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    move v0, v1

    .line 23
    :goto_a
    array-length v2, v3

    if-ge v0, v2, :cond_39

    .line 24
    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 26
    array-length v2, v4

    array-length v5, p1

    if-eq v2, v5, :cond_1d

    move v2, v1

    :goto_18
    if-eqz v2, :cond_36

    .line 27
    aget-object v0, v3, v0

    .line 31
    :goto_1c
    return-object v0

    :cond_1d
    move v2, v1

    .line 26
    :goto_1e
    array-length v5, v4

    if-ge v2, v5, :cond_34

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aget-object v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    move v2, v1

    goto :goto_18

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_34
    const/4 v2, 0x1

    goto :goto_18

    .line 23
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 31
    :cond_39
    const/4 v0, 0x0

    goto :goto_1c
.end method
