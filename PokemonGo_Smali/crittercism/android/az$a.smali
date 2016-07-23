.class final Lcrittercism/android/az$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/az$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    .prologue
    .line 253
    invoke-direct {p0}, Lcrittercism/android/az$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 257
    monitor-enter p0

    .line 258
    :try_start_2
    iget-boolean v0, p0, Lcrittercism/android/az$a;->a:Z

    if-nez v0, :cond_c

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/az$a;->a:Z

    .line 260
    invoke-static {}, Lcrittercism/android/bg;->g()V

    .line 262
    :cond_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_e

    .line 263
    return v1

    .line 262
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
