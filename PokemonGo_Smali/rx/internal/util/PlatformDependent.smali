.class public final Lrx/internal/util/PlatformDependent;
.super Ljava/lang/Object;
.source "PlatformDependent.java"


# static fields
.field private static final ANDROID_API_VERSION:I

.field public static final ANDROID_API_VERSION_IS_NOT_ANDROID:I

.field private static final IS_ANDROID:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    invoke-static {}, Lrx/internal/util/PlatformDependent;->resolveAndroidApiVersion()I

    move-result v0

    sput v0, Lrx/internal/util/PlatformDependent;->ANDROID_API_VERSION:I

    .line 35
    sget v0, Lrx/internal/util/PlatformDependent;->ANDROID_API_VERSION:I

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_b
    sput-boolean v0, Lrx/internal/util/PlatformDependent;->IS_ANDROID:Z

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidApiVersion()I
    .registers 1

    .prologue
    .line 51
    sget v0, Lrx/internal/util/PlatformDependent;->ANDROID_API_VERSION:I

    return v0
.end method

.method static getSystemClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .prologue
    .line 78
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_b

    .line 79
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 81
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lrx/internal/util/PlatformDependent$1;

    invoke-direct {v0}, Lrx/internal/util/PlatformDependent$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_a
.end method

.method public static isAndroid()Z
    .registers 1

    .prologue
    .line 41
    sget-boolean v0, Lrx/internal/util/PlatformDependent;->IS_ANDROID:Z

    return v0
.end method

.method private static resolveAndroidApiVersion()I
    .registers 4

    .prologue
    .line 63
    :try_start_0
    const-string v1, "android.os.Build$VERSION"

    const/4 v2, 0x1

    invoke-static {}, Lrx/internal/util/PlatformDependent;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result v1

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    :goto_1c
    return v1

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1d
    move-exception v0

    .line 70
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1c
.end method
