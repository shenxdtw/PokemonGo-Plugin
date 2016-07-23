.class public abstract Lcrittercism/android/af;
.super Ljava/lang/Object;


# instance fields
.field a:Lcrittercism/android/al;

.field b:Lorg/apache/http/util/CharArrayBuffer;

.field protected c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcrittercism/android/af;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iget-object v0, p1, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    iget v1, p1, Lcrittercism/android/af;->c:I

    invoke-direct {p0, v0, v1}, Lcrittercism/android/af;->a(Lcrittercism/android/al;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcrittercism/android/al;)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcrittercism/android/af;->a(Lcrittercism/android/al;I)V

    .line 29
    return-void
.end method

.method private a(Lcrittercism/android/al;I)V
    .registers 5

    .prologue
    .line 36
    iput-object p1, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    .line 37
    invoke-virtual {p0}, Lcrittercism/android/af;->e()I

    move-result v0

    iput v0, p0, Lcrittercism/android/af;->d:I

    .line 38
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Lcrittercism/android/af;->d()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcrittercism/android/af;->b:Lorg/apache/http/util/CharArrayBuffer;

    .line 39
    iput p2, p0, Lcrittercism/android/af;->c:I

    .line 40
    return-void
.end method

.method private g()V
    .registers 3

    .prologue
    .line 163
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    sget-object v1, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    invoke-interface {v0, v1}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    .line 164
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcrittercism/android/af;->c:I

    return v0
.end method

.method public final a([BII)V
    .registers 8

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lcrittercism/android/af;->b([BII)I

    move-result v0

    .line 95
    :goto_4
    if-lez v0, :cond_1a

    if-ge v0, p3, :cond_1a

    .line 96
    iget-object v1, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-interface {v1}, Lcrittercism/android/al;->a()Lcrittercism/android/af;

    move-result-object v1

    .line 97
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {v1, p1, v2, v3}, Lcrittercism/android/af;->b([BII)I

    move-result v1

    .line 99
    if-lez v1, :cond_1a

    .line 101
    add-int/2addr v0, v1

    .line 105
    goto :goto_4

    .line 106
    :cond_1a
    return-void
.end method

.method public a(I)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 51
    const/4 v1, -0x1

    if-ne p1, v1, :cond_8

    .line 54
    invoke-direct {p0}, Lcrittercism/android/af;->g()V

    .line 82
    :cond_7
    :goto_7
    return v0

    .line 58
    :cond_8
    iget v1, p0, Lcrittercism/android/af;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcrittercism/android/af;->c:I

    .line 60
    int-to-char v1, p1

    .line 61
    const/16 v2, 0xa

    if-ne v1, v2, :cond_2d

    .line 62
    iget-object v1, p0, Lcrittercism/android/af;->b:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0, v1}, Lcrittercism/android/af;->a(Lorg/apache/http/util/CharArrayBuffer;)Z

    move-result v1

    .line 64
    if-eqz v1, :cond_2a

    .line 65
    invoke-virtual {p0}, Lcrittercism/android/af;->b()Lcrittercism/android/af;

    move-result-object v1

    .line 76
    :goto_1f
    if-eq v1, p0, :cond_26

    .line 79
    iget-object v2, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-interface {v2, v1}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    .line 82
    :cond_26
    if-ne v1, p0, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    .line 67
    :cond_2a
    sget-object v1, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    goto :goto_1f

    .line 69
    :cond_2d
    iget-object v2, p0, Lcrittercism/android/af;->b:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v2

    iget v3, p0, Lcrittercism/android/af;->d:I

    if-ge v2, v3, :cond_3e

    .line 70
    iget-object v2, p0, Lcrittercism/android/af;->b:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    move-object v1, p0

    .line 71
    goto :goto_1f

    .line 73
    :cond_3e
    invoke-virtual {p0}, Lcrittercism/android/af;->c()Lcrittercism/android/af;

    move-result-object v1

    goto :goto_1f
.end method

.method public abstract a(Lorg/apache/http/util/CharArrayBuffer;)Z
.end method

.method protected b([BII)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 110
    if-ne p3, v0, :cond_8

    .line 111
    invoke-direct {p0}, Lcrittercism/android/af;->g()V

    .line 128
    :cond_7
    return v0

    .line 116
    :cond_8
    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    move v0, v1

    .line 122
    :goto_d
    if-nez v1, :cond_7

    if-ge v0, p3, :cond_7

    .line 123
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    int-to-char v1, v1

    .line 124
    invoke-virtual {p0, v1}, Lcrittercism/android/af;->a(I)Z

    move-result v1

    .line 125
    add-int/lit8 v0, v0, 0x1

    .line 126
    goto :goto_d
.end method

.method public abstract b()Lcrittercism/android/af;
.end method

.method public final b(I)V
    .registers 2

    .prologue
    .line 144
    iput p1, p0, Lcrittercism/android/af;->c:I

    .line 145
    return-void
.end method

.method public abstract c()Lcrittercism/android/af;
.end method

.method protected abstract d()I
.end method

.method protected abstract e()I
.end method

.method public f()V
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    if-eqz v0, :cond_b

    .line 190
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    sget-object v1, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    invoke-interface {v0, v1}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    .line 192
    :cond_b
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcrittercism/android/af;->b:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
