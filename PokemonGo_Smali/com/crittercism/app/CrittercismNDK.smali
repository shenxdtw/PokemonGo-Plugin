.class public Lcom/crittercism/app/CrittercismNDK;
.super Ljava/lang/Object;


# static fields
.field private static final LEGACY_SO_FILE_NAME:Ljava/lang/String; = "libcrittercism-ndk.so"

.field private static final LIBRARY_NAME:Ljava/lang/String; = "crittercism-v3"

.field private static final SO_FILE_NAME:Ljava/lang/String; = "libcrittercism-v3.so"

.field private static isNdkInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/crittercism/app/CrittercismNDK;->isNdkInstalled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyLibFromAssets(Landroid/content/Context;Ljava/io/File;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installedLibFile"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 202
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 204
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 205
    invoke-static {p0}, Lcom/crittercism/app/CrittercismNDK;->getJarredLibFileStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v2

    .line 208
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 210
    :goto_18
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_3b

    .line 211
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_23

    goto :goto_18

    .line 216
    :catch_23
    move-exception v1

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not install breakpad library: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    .line 221
    :goto_3a
    return v0

    .line 214
    :cond_3b
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 215
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_41} :catch_23

    .line 221
    const/4 v0, 0x1

    goto :goto_3a
.end method

.method public static doNdkSharedLibrariesExist(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 170
    :try_start_1
    invoke-static {p0}, Lcom/crittercism/app/CrittercismNDK;->getJarredLibFileStream(Landroid/content/Context;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_6

    .line 171
    const/4 v0, 0x1

    .line 174
    :goto_5
    return v0

    :catch_6
    move-exception v1

    goto :goto_5
.end method

.method public static getInstalledLibraryFile(Landroid/content/Context;)Ljava/io/File;
    .registers 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/com.crittercism/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "libcrittercism-v3.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static getJarredLibFileStream(Landroid/content/Context;)Ljava/io/InputStream;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const-string v0, "armeabi"

    .line 184
    const-string v1, "os.arch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_23
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/libcrittercism-v3.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static native installNdk(Ljava/lang/String;)Z
.end method

.method public static installNdkLib(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nativeDumpPath"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {p0}, Lcom/crittercism/app/CrittercismNDK;->doNdkSharedLibrariesExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 94
    invoke-static {p0}, Lcom/crittercism/app/CrittercismNDK;->loadLibraryFromAssets(Landroid/content/Context;)Z

    move-result v0

    .line 113
    :goto_2a
    if-nez v0, :cond_36

    .line 129
    :goto_2c
    return-void

    .line 106
    :cond_2d
    :try_start_2d
    const-string v2, "crittercism-v3"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_32} :catch_33

    goto :goto_2a

    .line 109
    :catch_33
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2a

    .line 119
    :cond_36
    :try_start_36
    invoke-static {v1}, Lcom/crittercism/app/CrittercismNDK;->installNdk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 122
    const/4 v0, 0x1

    sput-boolean v0, Lcom/crittercism/app/CrittercismNDK;->isNdkInstalled:Z

    goto :goto_2c

    .line 129
    :catch_48
    move-exception v0

    goto :goto_2c

    .line 124
    :cond_4a
    const-string v0, "Unable to initialize NDK crash reporting."

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_4f} :catch_48

    goto :goto_2c
.end method

.method public static isNdkCrashReportingInstalled()Z
    .registers 1

    .prologue
    .line 225
    sget-boolean v0, Lcom/crittercism/app/CrittercismNDK;->isNdkInstalled:Z

    return v0
.end method

.method public static loadLibraryFromAssets(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 132
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "/com.crittercism/lib/"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    new-instance v2, Ljava/io/File;

    const-string v3, "libcrittercism-v3.so"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    new-instance v3, Ljava/io/File;

    const-string v4, "libcrittercism-ndk.so"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 137
    invoke-static {p0, v2}, Lcom/crittercism/app/CrittercismNDK;->copyLibFromAssets(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 156
    :goto_29
    return v0

    .line 142
    :cond_2a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 149
    :cond_2d
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_34} :catch_36

    .line 150
    const/4 v0, 0x1

    goto :goto_29

    .line 151
    :catch_36
    move-exception v1

    .line 152
    const-string v3, "Unable to install NDK library"

    invoke-static {v3, v1}, Lcrittercism/android/dx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_29
.end method
