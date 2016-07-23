.class public final Lcrittercism/android/am;
.super Lcrittercism/android/ak;


# direct methods
.method public constructor <init>(Lcrittercism/android/af;)V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcrittercism/android/ak;-><init>(Lcrittercism/android/af;)V

    .line 9
    return-void
.end method


# virtual methods
.method protected final g()Lcrittercism/android/af;
    .registers 3

    .prologue
    .line 13
    iget-boolean v0, p0, Lcrittercism/android/ak;->f:Z

    if-eqz v0, :cond_a

    .line 18
    new-instance v0, Lcrittercism/android/ai;

    invoke-direct {v0, p0}, Lcrittercism/android/ai;-><init>(Lcrittercism/android/af;)V

    .line 38
    :goto_9
    return-object v0

    .line 20
    :cond_a
    iget-boolean v0, p0, Lcrittercism/android/ak;->d:Z

    if-eqz v0, :cond_1a

    iget v0, p0, Lcrittercism/android/ak;->e:I

    if-lez v0, :cond_1a

    .line 23
    new-instance v0, Lcrittercism/android/ag;

    iget v1, p0, Lcrittercism/android/ak;->e:I

    invoke-direct {v0, p0, v1}, Lcrittercism/android/ag;-><init>(Lcrittercism/android/af;I)V

    goto :goto_9

    .line 34
    :cond_1a
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-virtual {p0}, Lcrittercism/android/am;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcrittercism/android/al;->b(I)V

    .line 35
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-interface {v0}, Lcrittercism/android/al;->b()Lcrittercism/android/af;

    move-result-object v0

    goto :goto_9
.end method
