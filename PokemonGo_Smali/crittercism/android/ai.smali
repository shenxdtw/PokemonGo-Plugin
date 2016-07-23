.class public final Lcrittercism/android/ai;
.super Lcrittercism/android/af;


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Lcrittercism/android/af;)V
    .registers 3

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcrittercism/android/af;-><init>(Lcrittercism/android/af;)V

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/ai;->d:I

    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/http/util/CharArrayBuffer;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 40
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(I)I

    move-result v1

    .line 41
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v2

    .line 43
    if-lez v1, :cond_1e

    .line 48
    :goto_d
    const/4 v2, 0x0

    :try_start_e
    invoke-virtual {p1, v2, v1}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v1

    .line 49
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcrittercism/android/ai;->d:I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_1a} :catch_1c

    .line 54
    const/4 v0, 0x1

    :goto_1b
    return v0

    .line 51
    :catch_1c
    move-exception v1

    goto :goto_1b

    :cond_1e
    move v1, v2

    goto :goto_d
.end method

.method public final b()Lcrittercism/android/af;
    .registers 3

    .prologue
    .line 21
    iget v0, p0, Lcrittercism/android/ai;->d:I

    .line 23
    iget v0, p0, Lcrittercism/android/ai;->d:I

    if-nez v0, :cond_c

    .line 24
    new-instance v0, Lcrittercism/android/aq;

    invoke-direct {v0, p0}, Lcrittercism/android/aq;-><init>(Lcrittercism/android/af;)V

    .line 27
    :goto_b
    return-object v0

    .line 26
    :cond_c
    iget-object v0, p0, Lcrittercism/android/af;->b:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 27
    new-instance v0, Lcrittercism/android/ah;

    iget v1, p0, Lcrittercism/android/ai;->d:I

    invoke-direct {v0, p0, v1}, Lcrittercism/android/ah;-><init>(Lcrittercism/android/ai;I)V

    goto :goto_b
.end method

.method public final c()Lcrittercism/android/af;
    .registers 2

    .prologue
    .line 35
    sget-object v0, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    return-object v0
.end method

.method protected final d()I
    .registers 2

    .prologue
    .line 59
    const/16 v0, 0x10

    return v0
.end method

.method protected final e()I
    .registers 2

    .prologue
    .line 67
    const/16 v0, 0x100

    return v0
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-virtual {p0}, Lcrittercism/android/ai;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcrittercism/android/al;->b(I)V

    .line 87
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    sget-object v1, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    invoke-interface {v0, v1}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    .line 88
    return-void
.end method
