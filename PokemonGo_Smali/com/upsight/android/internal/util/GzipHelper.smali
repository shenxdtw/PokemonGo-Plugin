.class public Lcom/upsight/android/internal/util/GzipHelper;
.super Ljava/lang/Object;
.source "GzipHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compress(Ljava/lang/String;)[B
    .registers 4
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v2, 0x0

    .line 39
    :goto_3
    return-object v2

    .line 30
    :cond_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 32
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 34
    .local v0, "gzip":Ljava/util/zip/GZIPOutputStream;
    :try_start_13
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_22

    .line 36
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 39
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    goto :goto_3

    .line 36
    :catchall_22
    move-exception v2

    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw v2
.end method

.method public static decompress([B)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    if-nez p0, :cond_4

    .line 51
    const/4 v4, 0x0

    .line 67
    :goto_3
    return-object v4

    .line 54
    :cond_4
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    .local v1, "gis":Ljava/util/zip/GZIPInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 56
    .local v0, "bf":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v3, "res":Ljava/lang/StringBuilder;
    :goto_1d
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    if-eqz v2, :cond_2c

    .line 61
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_27

    goto :goto_1d

    .line 64
    .end local v2    # "line":Ljava/lang/String;
    :catchall_27
    move-exception v4

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    throw v4

    .restart local v2    # "line":Ljava/lang/String;
    :cond_2c
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method
