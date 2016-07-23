.class public abstract Lcrittercism/android/di;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .registers 2

    .prologue
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcrittercism/android/di;->a()V
    :try_end_3
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_6

    .line 16
    :goto_3
    return-void

    .line 11
    :catch_4
    move-exception v0

    throw v0

    .line 13
    :catch_6
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method
