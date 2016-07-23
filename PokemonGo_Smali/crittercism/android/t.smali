.class public final Lcrittercism/android/t;
.super Ljava/io/InputStream;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private final b:Lcrittercism/android/e;

.field private final c:Lcrittercism/android/c;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcrittercism/android/e;Lcrittercism/android/c;)V
    .registers 6

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 20
    if-nez p1, :cond_d

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegate was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_d
    if-nez p2, :cond_17

    .line 25
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dispatch was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_17
    if-nez p3, :cond_21

    .line 29
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stats were null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_21
    iput-object p1, p0, Lcrittercism/android/t;->a:Ljava/io/InputStream;

    .line 33
    iput-object p2, p0, Lcrittercism/android/t;->b:Lcrittercism/android/e;

    .line 34
    iput-object p3, p0, Lcrittercism/android/t;->c:Lcrittercism/android/c;

    .line 35
    return-void
.end method

.method private a(II)V
    .registers 7

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/t;->c:Lcrittercism/android/c;

    if-eqz v0, :cond_e

    const/4 v0, -0x1

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Lcrittercism/android/t;->b:Lcrittercism/android/e;

    iget-object v1, p0, Lcrittercism/android/t;->c:Lcrittercism/android/c;

    invoke-virtual {v0, v1}, Lcrittercism/android/e;->a(Lcrittercism/android/c;)V

    .line 67
    :cond_e
    :goto_e
    return-void

    .line 61
    :cond_f
    iget-object v0, p0, Lcrittercism/android/t;->c:Lcrittercism/android/c;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/c;->a(J)V
    :try_end_15
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_18

    goto :goto_e

    .line 62
    :catch_16
    move-exception v0

    throw v0

    .line 64
    :catch_18
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 81
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/t;->c:Lcrittercism/android/c;

    invoke-virtual {v0, p1}, Lcrittercism/android/c;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcrittercism/android/t;->b:Lcrittercism/android/e;

    iget-object v1, p0, Lcrittercism/android/t;->c:Lcrittercism/android/c;

    invoke-virtual {v0, v1}, Lcrittercism/android/e;->a(Lcrittercism/android/c;)V
    :try_end_c
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_c} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_c} :catch_f

    .line 87
    :goto_c
    return-void

    .line 82
    :catch_d
    move-exception v0

    throw v0

    .line 84
    :catch_f
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_c
.end method


# virtual methods
.method public final available()I
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcrittercism/android/t;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final close()V
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcrittercism/android/t;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 45
    return-void
.end method

.method public final mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lcrittercism/android/t;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 51
    return-void
.end method

.method public final markSupported()Z
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcrittercism/android/t;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .registers 3

    .prologue
    .line 96
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/t;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_b

    move-result v0

    .line 105
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcrittercism/android/t;->a(II)V

    .line 107
    return v0

    .line 100
    :catch_b
    move-exception v0

    .line 101
    invoke-direct {p0, v0}, Lcrittercism/android/t;->a(Ljava/lang/Exception;)V

    .line 102
    throw v0
.end method

.method public final read([B)I
    .registers 3
    .param p1, "buffer"    # [B

    .prologue
    .line 112
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/t;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_a

    move-result v0

    .line 121
    invoke-direct {p0, v0, v0}, Lcrittercism/android/t;->a(II)V

    .line 123
    return v0

    .line 116
    :catch_a
    move-exception v0

    .line 117
    invoke-direct {p0, v0}, Lcrittercism/android/t;->a(Ljava/lang/Exception;)V

    .line 118
    throw v0
.end method

.method public final read([BII)I
    .registers 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 130
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/t;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_a

    move-result v0

    .line 139
    invoke-direct {p0, v0, v0}, Lcrittercism/android/t;->a(II)V

    .line 141
    return v0

    .line 134
    :catch_a
    move-exception v0

    .line 135
    invoke-direct {p0, v0}, Lcrittercism/android/t;->a(Ljava/lang/Exception;)V

    .line 136
    throw v0
.end method

.method public final declared-synchronized reset()V
    .registers 2

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcrittercism/android/t;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 148
    monitor-exit p0

    return-void

    .line 147
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .registers 8
    .param p1, "byteCount"    # J

    .prologue
    .line 152
    iget-object v0, p0, Lcrittercism/android/t;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 155
    :try_start_6
    iget-object v0, p0, Lcrittercism/android/t;->c:Lcrittercism/android/c;

    if-eqz v0, :cond_f

    .line 156
    iget-object v0, p0, Lcrittercism/android/t;->c:Lcrittercism/android/c;

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/c;->a(J)V
    :try_end_f
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_f} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_f} :catch_12

    .line 164
    :cond_f
    :goto_f
    return-wide v2

    .line 158
    :catch_10
    move-exception v0

    throw v0

    .line 160
    :catch_12
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_f
.end method
