.class public Lcom/voxelbusters/nativeplugins/utilities/FileUtility;
.super Ljava/lang/Object;
.source "FileUtility.java"


# static fields
.field public static final IMAGE_QUALITY:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDirectoriesIfUnAvailable(Ljava/lang/String;)V
    .registers 3
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 160
    :cond_e
    return-void
.end method

.method public static createFileFromStream(Ljava/io/InputStream;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "destinationDir"    # Ljava/io/File;
    .param p2, "destinationFileName"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "absoluteDestinationPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    .local v2, "destinationFile":Ljava/io/File;
    invoke-static {p1, v2}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->createPathIfUnAvailable(Ljava/io/File;Ljava/io/File;)V

    .line 199
    :try_start_9
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 200
    .local v5, "out":Ljava/io/OutputStream;
    const/16 v6, 0x400

    new-array v1, v6, [B

    .line 202
    .local v1, "buf":[B
    :goto_12
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "length":I
    if-gtz v4, :cond_23

    .line 206
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 207
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1e} :catch_28

    .line 214
    .end local v1    # "buf":[B
    .end local v4    # "length":I
    .end local v5    # "out":Ljava/io/OutputStream;
    :goto_1e
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 216
    return-object v0

    .line 204
    .restart local v1    # "buf":[B
    .restart local v4    # "length":I
    .restart local v5    # "out":Ljava/io/OutputStream;
    :cond_23
    const/4 v6, 0x0

    :try_start_24
    invoke-virtual {v5, v1, v6, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_12

    .line 209
    .end local v1    # "buf":[B
    .end local v4    # "length":I
    .end local v5    # "out":Ljava/io/OutputStream;
    :catch_28
    move-exception v3

    .line 211
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method static createPathIfUnAvailable(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .param p0, "destinationDir"    # Ljava/io/File;
    .param p1, "destinationFile"    # Ljava/io/File;

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    .line 179
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 180
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_c} :catch_d

    .line 188
    :cond_c
    :goto_c
    return-void

    .line 182
    :catch_d
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "NativePlugins.FileUtils"

    const-string v2, "Creating file failed!"

    invoke-static {v1, v2}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c
.end method

.method public static createSharingFileUri(Landroid/content/Context;[BILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "byteArray"    # [B
    .param p2, "byteArrayLength"    # I
    .param p3, "dirName"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;

    .prologue
    .line 374
    invoke-static {p0}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->hasExternalStorageWritable(Landroid/content/Context;)Z

    move-result v0

    .line 377
    .local v0, "hasExternalDir":Z
    invoke-static {p0, p3}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->getExternalTempDirectoryIfExists(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1, p2, v3, p4, v4}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->getSavedFile([BILjava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "imagePath":Ljava/lang/String;
    const-string v3, "NativePlugins.Sharing"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Saving temp at "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const/4 v2, 0x0

    .line 382
    .local v2, "imageUri":Landroid/net/Uri;
    invoke-static {v1}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 385
    if-nez v0, :cond_40

    .line 387
    invoke-static {p0}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->getFileProviderAuthoityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 394
    :goto_37
    invoke-static {p0}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v2, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 397
    :cond_3f
    return-object v2

    .line 391
    :cond_40
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_37
.end method

.method public static getBitmapStream(Ljava/lang/String;)Ljava/io/ByteArrayOutputStream;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    .local v2, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 170
    return-object v2
.end method

.method public static getContentsOfFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 29
    const/4 v2, 0x0

    .line 30
    .local v2, "dataString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 33
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_2d

    .line 35
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    if-eqz v1, :cond_3a

    .line 39
    :goto_e
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_37

    move-result-object v4

    .local v4, "eachLine":Ljava/lang/String;
    if-nez v4, :cond_1b

    move-object v0, v1

    .line 51
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "eachLine":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :goto_15
    if-eqz v0, :cond_1a

    .line 55
    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_32

    .line 63
    :cond_1a
    :goto_1a
    return-object v2

    .line 41
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "eachLine":Ljava/lang/String;
    :cond_1b
    :try_start_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2b} :catch_37

    move-result-object v2

    goto :goto_e

    .line 45
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "eachLine":Ljava/lang/String;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_2d
    move-exception v3

    .line 47
    .local v3, "e":Ljava/io/IOException;
    :goto_2e
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 57
    .end local v3    # "e":Ljava/io/IOException;
    :catch_32
    move-exception v3

    .line 59
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 45
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :catch_37
    move-exception v3

    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_2e

    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    :cond_3a
    move-object v0, v1

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    goto :goto_15
.end method

.method public static getFilePathromURI(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 308
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSavedFile([BILjava/io/File;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "destinationDir"    # Ljava/io/File;
    .param p3, "destinationFileName"    # Ljava/lang/String;
    .param p4, "addScheme"    # Z

    .prologue
    .line 91
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->getSavedFile([BILjava/io/File;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSavedFile([BILjava/io/File;Ljava/lang/String;ZZ)Ljava/lang/String;
    .registers 14
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "destinationDir"    # Ljava/io/File;
    .param p3, "destinationFileName"    # Ljava/lang/String;
    .param p4, "addScheme"    # Z
    .param p5, "needsGlobalAccess"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 96
    const/4 v0, 0x0

    .line 98
    .local v0, "destPath":Ljava/lang/String;
    if-eqz p0, :cond_4b

    if-lez p1, :cond_4b

    .line 101
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->createDirectoriesIfUnAvailable(Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v1, "destinationFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 111
    :try_start_1c
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_4c

    .line 120
    :cond_1f
    :goto_1f
    if-eqz p5, :cond_27

    .line 122
    invoke-virtual {v1, v7, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 123
    invoke-virtual {v1, v7, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 126
    :cond_27
    const/4 v3, 0x0

    .line 130
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :try_start_28
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2d} :catch_51
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_56

    .line 131
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    :try_start_2d
    invoke-virtual {v4, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 132
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_36} :catch_5e
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_36} :catch_5b

    move-result-object v0

    move-object v3, v4

    .line 144
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_38
    if-eqz v0, :cond_4b

    if-eqz p4, :cond_4b

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .end local v1    # "destinationFile":Ljava/io/File;
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :cond_4b
    return-object v0

    .line 113
    .restart local v1    # "destinationFile":Ljava/io/File;
    :catch_4c
    move-exception v2

    .line 115
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 135
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_51
    move-exception v2

    .line 137
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_52
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_38

    .line 139
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_56
    move-exception v2

    .line 141
    .local v2, "e":Ljava/io/IOException;
    :goto_57
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 139
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_5b
    move-exception v2

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_57

    .line 135
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_5e
    move-exception v2

    move-object v3, v4

    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_52
.end method

.method public static getSavedFileFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "targetDirectory"    # Ljava/io/File;
    .param p3, "targetFileName"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v2, 0x0

    .line 322
    .local v2, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 324
    .local v1, "byteArray":[B
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 327
    .local v6, "resolver":Landroid/content/ContentResolver;
    :try_start_6
    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 328
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_f} :catch_49
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_f} :catch_3a

    .line 330
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v3, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    :try_start_11
    new-array v0, v7, [B

    .line 331
    .local v0, "buffer":[B
    :goto_13
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_30

    .line 336
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 337
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_20} :catch_34
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_20} :catch_46

    move-result-object v1

    move-object v2, v3

    .line 349
    .end local v0    # "buffer":[B
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_22
    if-eqz v2, :cond_27

    .line 353
    :try_start_24
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_3f

    .line 361
    :cond_27
    :goto_27
    if-eqz v1, :cond_44

    .line 363
    array-length v7, v1

    const/4 v8, 0x1

    invoke-static {v1, v7, p2, p3, v8}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->getSavedFile([BILjava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 367
    :goto_2f
    return-object v7

    .line 333
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :cond_30
    :try_start_30
    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_33} :catch_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_46

    goto :goto_13

    .line 340
    .end local v0    # "buffer":[B
    :catch_34
    move-exception v4

    move-object v2, v3

    .line 342
    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_36
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_22

    .line 344
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_3a
    move-exception v4

    .line 346
    .local v4, "e":Ljava/io/IOException;
    :goto_3b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 355
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3f
    move-exception v4

    .line 357
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_27

    .line 367
    .end local v4    # "e":Ljava/io/IOException;
    :cond_44
    const/4 v7, 0x0

    goto :goto_2f

    .line 344
    .end local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catch_46
    move-exception v4

    move-object v2, v3

    .end local v3    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3b

    .line 340
    .end local v5    # "inputStream":Ljava/io/InputStream;
    :catch_49
    move-exception v4

    goto :goto_36
.end method

.method public static getSavedFileUri([BILjava/io/File;Ljava/lang/String;Z)Landroid/net/Uri;
    .registers 12
    .param p0, "data"    # [B
    .param p1, "length"    # I
    .param p2, "destinationDir"    # Ljava/io/File;
    .param p3, "destinationFileName"    # Ljava/lang/String;
    .param p4, "addScheme"    # Z

    .prologue
    .line 68
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->getSavedFile([BILjava/io/File;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getSavedLocalFileFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "targetFileName"    # Ljava/lang/String;

    .prologue
    .line 314
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->getSavedFileFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScaledImagePath(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;FZ)Ljava/lang/String;
    .registers 9
    .param p0, "sourcePath"    # Ljava/lang/String;
    .param p1, "destinationDir"    # Ljava/io/File;
    .param p2, "destinationFileName"    # Ljava/lang/String;
    .param p3, "scaleFactor"    # F
    .param p4, "deleteSource"    # Z

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 292
    .local v0, "absoluteDestinationPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v2, "sourceImageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 296
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v1, p1, p2, p3}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->getScaledImagePathFromBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    .line 298
    if-eqz p4, :cond_17

    .line 300
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 303
    :cond_17
    return-object v0
.end method

.method public static getScaledImagePathFromBitmap(Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;F)Ljava/lang/String;
    .registers 14
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "destinationDir"    # Ljava/io/File;
    .param p2, "destinationFileName"    # Ljava/lang/String;
    .param p3, "scaleFactor"    # F

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, "absoluteDestinationPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 225
    .local v1, "destinationImageFile":Ljava/io/File;
    invoke-static {p1, v1}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->createPathIfUnAvailable(Ljava/io/File;Ljava/io/File;)V

    .line 227
    const/4 v4, 0x0

    .line 231
    .local v4, "outStream":Ljava/io/OutputStream;
    :try_start_a
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_f} :catch_8a
    .catchall {:try_start_a .. :try_end_f} :catchall_72

    .line 233
    .end local v4    # "outStream":Ljava/io/OutputStream;
    .local v5, "outStream":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 234
    .local v6, "width":I
    const/4 v3, 0x0

    .line 236
    .local v3, "height":I
    if-eqz p0, :cond_21

    .line 238
    :try_start_13
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p3

    float-to-int v6, v7

    .line 239
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p3

    float-to-int v3, v7

    .line 242
    :cond_21
    if-eqz v6, :cond_3f

    if-eqz v3, :cond_3f

    .line 247
    const/4 v7, 0x1

    invoke-static {p0, v6, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 250
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p0, v7, v8, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 252
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_34} :catch_47
    .catchall {:try_start_13 .. :try_end_34} :catchall_87

    move-result-object v0

    .line 270
    :goto_35
    if-eqz v5, :cond_85

    .line 273
    :try_start_37
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 274
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3d} :catch_81

    move-object v4, v5

    .line 283
    .end local v3    # "height":I
    .end local v5    # "outStream":Ljava/io/OutputStream;
    .end local v6    # "width":I
    .restart local v4    # "outStream":Ljava/io/OutputStream;
    :cond_3e
    :goto_3e
    return-object v0

    .line 257
    .end local v4    # "outStream":Ljava/io/OutputStream;
    .restart local v3    # "height":I
    .restart local v5    # "outStream":Ljava/io/OutputStream;
    .restart local v6    # "width":I
    :cond_3f
    :try_start_3f
    const-string v7, "NativePlugins.FileUtils"

    const-string v8, "Width and height should be greater than zero. Returning null reference"

    invoke-static {v7, v8}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_46} :catch_47
    .catchall {:try_start_3f .. :try_end_46} :catchall_87

    goto :goto_35

    .line 261
    :catch_47
    move-exception v2

    move-object v4, v5

    .line 263
    .end local v3    # "height":I
    .end local v5    # "outStream":Ljava/io/OutputStream;
    .end local v6    # "width":I
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "outStream":Ljava/io/OutputStream;
    :goto_49
    :try_start_49
    const-string v7, "NativePlugins.FileUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error creating scaled bitmap "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_49 .. :try_end_64} :catchall_72

    .line 270
    if-eqz v4, :cond_3e

    .line 273
    :try_start_66
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 274
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_6c} :catch_6d

    goto :goto_3e

    .line 277
    :catch_6d
    move-exception v2

    .line 279
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    .line 267
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_72
    move-exception v7

    .line 270
    :goto_73
    if-eqz v4, :cond_7b

    .line 273
    :try_start_75
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 274
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7b} :catch_7c

    .line 281
    :cond_7b
    :goto_7b
    throw v7

    .line 277
    :catch_7c
    move-exception v2

    .line 279
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7b

    .line 277
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "outStream":Ljava/io/OutputStream;
    .restart local v3    # "height":I
    .restart local v5    # "outStream":Ljava/io/OutputStream;
    .restart local v6    # "width":I
    :catch_81
    move-exception v2

    .line 279
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    :cond_85
    move-object v4, v5

    .end local v5    # "outStream":Ljava/io/OutputStream;
    .restart local v4    # "outStream":Ljava/io/OutputStream;
    goto :goto_3e

    .line 267
    .end local v4    # "outStream":Ljava/io/OutputStream;
    .restart local v5    # "outStream":Ljava/io/OutputStream;
    :catchall_87
    move-exception v7

    move-object v4, v5

    .end local v5    # "outStream":Ljava/io/OutputStream;
    .restart local v4    # "outStream":Ljava/io/OutputStream;
    goto :goto_73

    .line 261
    .end local v3    # "height":I
    .end local v6    # "width":I
    :catch_8a
    move-exception v2

    goto :goto_49
.end method

.method public static replaceFile([BLjava/io/File;Ljava/lang/String;)V
    .registers 6
    .param p0, "data"    # [B
    .param p1, "destinationDir"    # Ljava/io/File;
    .param p2, "destinationFileName"    # Ljava/lang/String;

    .prologue
    .line 75
    if-eqz p0, :cond_8

    .line 77
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v1, p1, p2, v2}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->getSavedFile([BILjava/io/File;Ljava/lang/String;Z)Ljava/lang/String;

    .line 87
    :cond_7
    :goto_7
    return-void

    .line 81
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v0, "destinationFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_7
.end method
