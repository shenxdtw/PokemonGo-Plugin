.class public final Lcrittercism/android/ah;
.super Lcrittercism/android/af;


# instance fields
.field private d:Lcrittercism/android/ai;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lcrittercism/android/ai;I)V
    .registers 4

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcrittercism/android/af;-><init>(Lcrittercism/android/af;)V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcrittercism/android/ah;->f:I

    .line 15
    iput-object p1, p0, Lcrittercism/android/ah;->d:Lcrittercism/android/ai;

    .line 16
    iput p2, p0, Lcrittercism/android/ah;->e:I

    .line 17
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .registers 8

    .prologue
    const/16 v5, 0xa

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 21
    iget v2, p0, Lcrittercism/android/ah;->f:I

    iget v3, p0, Lcrittercism/android/ah;->e:I

    add-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_d

    .line 53
    :cond_c
    :goto_c
    return v0

    .line 24
    :cond_d
    const/4 v2, -0x1

    if-ne p1, v2, :cond_22

    .line 25
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-virtual {p0}, Lcrittercism/android/ah;->a()I

    move-result v2

    invoke-interface {v0, v2}, Lcrittercism/android/al;->b(I)V

    .line 26
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    sget-object v2, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    invoke-interface {v0, v2}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    move v0, v1

    .line 27
    goto :goto_c

    .line 30
    :cond_22
    iget v2, p0, Lcrittercism/android/ah;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcrittercism/android/ah;->c:I

    .line 31
    int-to-char v2, p1

    .line 32
    iget v3, p0, Lcrittercism/android/ah;->f:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcrittercism/android/ah;->f:I

    .line 34
    iget v3, p0, Lcrittercism/android/ah;->f:I

    iget v4, p0, Lcrittercism/android/ah;->e:I

    if-le v3, v4, :cond_c

    .line 35
    if-ne v2, v5, :cond_49

    .line 41
    iget-object v0, p0, Lcrittercism/android/ah;->d:Lcrittercism/android/ai;

    invoke-virtual {p0}, Lcrittercism/android/ah;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcrittercism/android/ai;->b(I)V

    .line 42
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    iget-object v2, p0, Lcrittercism/android/ah;->d:Lcrittercism/android/ai;

    invoke-interface {v0, v2}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    move v0, v1

    .line 43
    goto :goto_c

    .line 46
    :cond_49
    iget v3, p0, Lcrittercism/android/ah;->f:I

    iget v4, p0, Lcrittercism/android/ah;->e:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_c

    if-eq v2, v5, :cond_c

    .line 48
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    sget-object v2, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    invoke-interface {v0, v2}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    move v0, v1

    .line 49
    goto :goto_c
.end method

.method public final a(Lorg/apache/http/util/CharArrayBuffer;)Z
    .registers 3

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Lcrittercism/android/af;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcrittercism/android/ah;->d:Lcrittercism/android/ai;

    return-object v0
.end method

.method public final c()Lcrittercism/android/af;
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final d()I
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 86
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-virtual {p0}, Lcrittercism/android/ah;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcrittercism/android/al;->b(I)V

    .line 87
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    sget-object v1, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    invoke-interface {v0, v1}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    .line 88
    return-void
.end method
