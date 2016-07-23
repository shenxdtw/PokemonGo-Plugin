.class public final Lcrittercism/android/ar;
.super Lcrittercism/android/af;


# instance fields
.field private d:Lcrittercism/android/af;


# direct methods
.method public constructor <init>(Lcrittercism/android/af;)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcrittercism/android/af;-><init>(Lcrittercism/android/af;)V

    .line 23
    iput-object p1, p0, Lcrittercism/android/ar;->d:Lcrittercism/android/af;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 28
    const/4 v1, -0x1

    if-ne p1, v1, :cond_c

    .line 29
    iget-object v1, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    sget-object v2, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    invoke-interface {v1, v2}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    .line 40
    :goto_b
    return v0

    .line 33
    :cond_c
    iget v1, p0, Lcrittercism/android/ar;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcrittercism/android/ar;->c:I

    .line 34
    int-to-char v1, p1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_28

    .line 35
    iget-object v1, p0, Lcrittercism/android/ar;->d:Lcrittercism/android/af;

    invoke-virtual {p0}, Lcrittercism/android/ar;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcrittercism/android/af;->b(I)V

    .line 36
    iget-object v1, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    iget-object v2, p0, Lcrittercism/android/ar;->d:Lcrittercism/android/af;

    invoke-interface {v1, v2}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    goto :goto_b

    .line 40
    :cond_28
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final a(Lorg/apache/http/util/CharArrayBuffer;)Z
    .registers 3

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcrittercism/android/af;
    .registers 1

    .prologue
    .line 47
    return-object p0
.end method

.method public final c()Lcrittercism/android/af;
    .registers 1

    .prologue
    .line 53
    return-object p0
.end method

.method protected final d()I
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method
