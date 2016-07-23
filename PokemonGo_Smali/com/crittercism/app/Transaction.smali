.class public abstract Lcom/crittercism/app/Transaction;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcrittercism/android/az;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/crittercism/app/Transaction;
    .registers 4

    .prologue
    .line 34
    if-eqz p0, :cond_a

    if-eqz p0, :cond_1c

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    :cond_a
    const-string v0, "Transaction was created with a null/zero-length name. Returning no-op transaction"

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction created with null/zero-length name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcrittercism/android/be;

    invoke-direct {v0}, Lcrittercism/android/be;-><init>()V

    .line 39
    :goto_1b
    return-object v0

    .line 34
    :cond_1c
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v1

    iget-boolean v0, v1, Lcrittercism/android/az;->b:Z

    if-eqz v0, :cond_42

    invoke-virtual {v1}, Lcrittercism/android/az;->B()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Lcrittercism/android/be;

    invoke-direct {v0}, Lcrittercism/android/be;-><init>()V
    :try_end_2f
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_2f} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_2f} :catch_38

    goto :goto_1b

    .line 35
    :catch_30
    move-exception v0

    throw v0

    .line 34
    :cond_32
    :try_start_32
    new-instance v0, Lcrittercism/android/bg;

    invoke-direct {v0, v1, p0}, Lcrittercism/android/bg;-><init>(Lcrittercism/android/az;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/ThreadDeath; {:try_start_32 .. :try_end_37} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_1b

    .line 37
    :catch_38
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    .line 39
    new-instance v0, Lcrittercism/android/be;

    invoke-direct {v0}, Lcrittercism/android/be;-><init>()V

    goto :goto_1b

    .line 34
    :cond_42
    :try_start_42
    const-string v0, "Transaction was created before Crittercism.initialize() was called. Returning no-op transaction"

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction created before Crittercism.initialize()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcrittercism/android/be;

    invoke-direct {v0}, Lcrittercism/android/be;-><init>()V
    :try_end_53
    .catch Ljava/lang/ThreadDeath; {:try_start_42 .. :try_end_53} :catch_30
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_53} :catch_38

    goto :goto_1b
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()I
.end method
