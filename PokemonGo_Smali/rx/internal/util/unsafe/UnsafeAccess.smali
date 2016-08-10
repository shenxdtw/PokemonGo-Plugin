.class public final Lrx/internal/util/unsafe/UnsafeAccess;
.super Ljava/lang/Object;
.source "UnsafeAccess.java"


# static fields
.field private static final DISABLED_BY_USER:Z

.field public static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 36
    const-string v4, "rx.unsafe-disable"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    :goto_9
    sput-boolean v3, Lrx/internal/util/unsafe/UnsafeAccess;->DISABLED_BY_USER:Z

    .line 39
    const/4 v2, 0x0

    .line 47
    .local v2, "u":Lsun/misc/Unsafe;
    :try_start_c
    const-class v3, Lsun/misc/Unsafe;

    const-string v4, "theUnsafe"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 48
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 49
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lsun/misc/Unsafe;

    move-object v2, v0
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_21} :catch_26

    .line 53
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_21
    sput-object v2, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    .line 54
    return-void

    .line 36
    .end local v2    # "u":Lsun/misc/Unsafe;
    :cond_24
    const/4 v3, 0x0

    goto :goto_9

    .line 50
    .restart local v2    # "u":Lsun/misc/Unsafe;
    :catch_26
    move-exception v3

    goto :goto_21
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static addressOf(Ljava/lang/Class;Ljava/lang/String;)J
    .registers 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 107
    .local v1, "f":Ljava/lang/reflect/Field;
    sget-object v3, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-wide v4

    return-wide v4

    .line 108
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :catch_b
    move-exception v0

    .line 109
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/InternalError;

    invoke-direct {v2}, Ljava/lang/InternalError;-><init>()V

    .line 110
    .local v2, "ie":Ljava/lang/InternalError;
    invoke-virtual {v2, v0}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 111
    throw v2
.end method

.method public static compareAndSwapInt(Ljava/lang/Object;JII)Z
    .registers 12
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "expected"    # I
    .param p4, "newValue"    # I

    .prologue
    .line 91
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method public static getAndAddInt(Ljava/lang/Object;JI)I
    .registers 11
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "n"    # I

    .prologue
    .line 75
    :cond_0
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 76
    .local v4, "current":I
    add-int v5, v4, p3

    .line 77
    .local v5, "next":I
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    return v4
.end method

.method public static getAndIncrementInt(Ljava/lang/Object;J)I
    .registers 10
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .prologue
    .line 66
    :cond_0
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 67
    .local v4, "current":I
    add-int/lit8 v5, v4, 0x1

    .line 68
    .local v5, "next":I
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    return v4
.end method

.method public static getAndSetInt(Ljava/lang/Object;JI)I
    .registers 11
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "newValue"    # I

    .prologue
    .line 84
    :cond_0
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1, p2}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v4

    .line 85
    .local v4, "current":I
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    move-object v1, p0

    move-wide v2, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    return v4
.end method

.method public static isUnsafeAvailable()Z
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    if-eqz v0, :cond_a

    sget-boolean v0, Lrx/internal/util/unsafe/UnsafeAccess;->DISABLED_BY_USER:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
