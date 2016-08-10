.class public final Lcom/upsight/android/internal/PropertiesModule;
.super Ljava/lang/Object;
.source "PropertiesModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field private static final APP_TOKEN_LENGTH:I = 0x20

.field public static final KEY_APP_TOKEN:Ljava/lang/String; = "com.upsight.app_token"

.field public static final KEY_PUBLIC_KEY:Ljava/lang/String; = "com.upsight.public_key"

.field public static final KEY_SDK_PLUGIN:Ljava/lang/String; = "com.upsight.sdk_plugin"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideApplicationToken(Landroid/content/Context;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/String;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "com.upsight.app_token"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "appToken":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    .line 59
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 61
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 62
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_19

    .line 63
    const-string v4, "com.upsight.app_token"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_18} :catch_27

    move-result-object v0

    .line 69
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_19
    :goto_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 70
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "App token must be set in the Android Manifest with <meta-data android:name=\"com.upsight.app_token\" android:value=\"UPSIGHT_APPLICATION_TOKEN\" />"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 65
    :catch_27
    move-exception v2

    .line 66
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Upsight"

    const-string v5, "Unexpected error: Package name missing"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-interface {p2, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    .line 72
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_46

    .line 73
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid app token set in the Android Manifest with <meta-data android:name=\"com.upsight.app_token\" android:value=\"UPSIGHT_APPLICATION_TOKEN\" />"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_46
    return-object v0
.end method

.method providePublicKey(Landroid/content/Context;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/String;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "com.upsight.public_key"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 84
    const/4 v3, 0x0

    .line 86
    .local v3, "publicKey":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    .line 86
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 88
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 89
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_19

    .line 90
    const-string v4, "com.upsight.public_key"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_18} :catch_27

    move-result-object v3

    .line 96
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_19
    :goto_19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 97
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Public key must be set in the Android Manifest with <meta-data android:name=\"com.upsight.public_key\" android:value=\"UPSIGHT_PUBLIC_KEY\" />"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 92
    :catch_27
    move-exception v1

    .line 93
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Upsight"

    const-string v5, "Unexpected error: Package name missing"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-interface {p2, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19

    .line 101
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_36
    return-object v3
.end method

.method provideSdkPlugin(Landroid/content/Context;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/String;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "com.upsight.sdk_plugin"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 37
    const-string v3, ""

    .line 39
    .local v3, "sdkPlugin":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    .line 39
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 41
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1c

    .line 43
    const-string v4, "com.upsight.sdk_plugin"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_1b} :catch_1d

    move-result-object v3

    .line 49
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1c
    :goto_1c
    return-object v3

    .line 45
    :catch_1d
    move-exception v1

    .line 46
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Upsight"

    const-string v5, "Unexpected error: Package name missing"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-interface {p2, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c
.end method
