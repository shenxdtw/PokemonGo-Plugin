.class public final Lcrittercism/android/dj;
.super Lcrittercism/android/di;


# instance fields
.field private a:Lcrittercism/android/cw;

.field private b:Lcrittercism/android/dc;

.field private c:Z

.field private d:Lcrittercism/android/cy;


# direct methods
.method public constructor <init>(Lcrittercism/android/cw;Lcrittercism/android/dc;Lcrittercism/android/cy;)V
    .registers 5

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcrittercism/android/dj;-><init>(Lcrittercism/android/cw;Lcrittercism/android/dc;ZLcrittercism/android/cy;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lcrittercism/android/cw;Lcrittercism/android/dc;ZLcrittercism/android/cy;)V
    .registers 5

    .prologue
    .line 40
    invoke-direct {p0}, Lcrittercism/android/di;-><init>()V

    .line 41
    iput-object p1, p0, Lcrittercism/android/dj;->a:Lcrittercism/android/cw;

    .line 44
    iput-object p2, p0, Lcrittercism/android/dj;->b:Lcrittercism/android/dc;

    .line 45
    iput-boolean p3, p0, Lcrittercism/android/dj;->c:Z

    .line 47
    iput-object p4, p0, Lcrittercism/android/dj;->d:Lcrittercism/android/cy;

    .line 48
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 11

    .prologue
    const/4 v4, -0x1

    .line 65
    .line 67
    const/4 v1, 0x0

    .line 68
    const/4 v2, 0x0

    .line 71
    :try_start_3
    iget-object v0, p0, Lcrittercism/android/dj;->b:Lcrittercism/android/dc;

    invoke-virtual {v0}, Lcrittercism/android/dc;->a()Ljava/net/HttpURLConnection;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_d3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_8} :catch_d0

    move-result-object v5

    .line 80
    if-nez v5, :cond_c

    .line 124
    :cond_b
    :goto_b
    return-void

    .line 95
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcrittercism/android/dj;->a:Lcrittercism/android/cw;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-interface {v0, v3}, Lcrittercism/android/cw;->a(Ljava/io/OutputStream;)V

    .line 96
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_18
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_18} :catch_cb
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_18} :catch_73
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_18} :catch_88
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_18} :catch_a3

    move-result v3

    .line 98
    :try_start_19
    iget-boolean v0, p0, Lcrittercism/android/dj;->c:Z

    if-eqz v0, :cond_d6

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_30
    invoke-virtual {v6}, Ljava/io/BufferedReader;->read()I

    move-result v7

    if-eq v7, v4, :cond_63

    int-to-char v7, v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_3a} :catch_3b
    .catch Ljava/net/SocketTimeoutException; {:try_start_19 .. :try_end_3a} :catch_c8
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_3a} :catch_c3
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_3a} :catch_be

    goto :goto_30

    .line 101
    :catch_3b
    move-exception v0

    move-object v9, v0

    move v0, v3

    move-object v3, v9

    .line 102
    :goto_3f
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "UnsupportedEncodingException in proceed(): "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 103
    invoke-static {}, Lcrittercism/android/dx;->c()V

    move v9, v2

    move v2, v0

    move v0, v9

    .line 115
    :goto_56
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 121
    iget-object v3, p0, Lcrittercism/android/dj;->d:Lcrittercism/android/cy;

    if-eqz v3, :cond_b

    .line 122
    iget-object v3, p0, Lcrittercism/android/dj;->d:Lcrittercism/android/cy;

    invoke-interface {v3, v0, v2, v1}, Lcrittercism/android/cy;->a(ZILorg/json/JSONObject;)V

    goto :goto_b

    .line 99
    :cond_63
    :try_start_63
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_63 .. :try_end_6f} :catch_3b
    .catch Ljava/net/SocketTimeoutException; {:try_start_63 .. :try_end_6f} :catch_c8
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6f} :catch_c3
    .catch Lorg/json/JSONException; {:try_start_63 .. :try_end_6f} :catch_be

    :goto_6f
    move-object v1, v0

    move v0, v2

    move v2, v3

    .line 113
    goto :goto_56

    .line 104
    :catch_73
    move-exception v0

    move v2, v4

    .line 105
    :goto_75
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SocketTimeoutException in proceed(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 106
    const/4 v0, 0x1

    .line 113
    goto :goto_56

    .line 107
    :catch_88
    move-exception v0

    move-object v3, v0

    move v0, v4

    .line 108
    :goto_8b
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "IOException in proceed(): "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 109
    invoke-static {}, Lcrittercism/android/dx;->c()V

    move v9, v2

    move v2, v0

    move v0, v9

    .line 113
    goto :goto_56

    .line 110
    :catch_a3
    move-exception v0

    move-object v3, v0

    move v0, v4

    .line 111
    :goto_a6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "JSONException in proceed(): "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    move v9, v2

    move v2, v0

    move v0, v9

    .line 112
    invoke-static {}, Lcrittercism/android/dx;->c()V

    goto :goto_56

    .line 110
    :catch_be
    move-exception v0

    move-object v9, v0

    move v0, v3

    move-object v3, v9

    goto :goto_a6

    .line 107
    :catch_c3
    move-exception v0

    move-object v9, v0

    move v0, v3

    move-object v3, v9

    goto :goto_8b

    .line 104
    :catch_c8
    move-exception v0

    move v2, v3

    goto :goto_75

    .line 101
    :catch_cb
    move-exception v0

    move-object v3, v0

    move v0, v4

    goto/16 :goto_3f

    .line 76
    :catch_d0
    move-exception v0

    goto/16 :goto_b

    .line 73
    :catch_d3
    move-exception v0

    goto/16 :goto_b

    :cond_d6
    move-object v0, v1

    goto :goto_6f
.end method
