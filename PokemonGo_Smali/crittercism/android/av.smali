.class public final Lcrittercism/android/av;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Lcrittercism/android/az;

.field private g:Lcrittercism/android/bd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcrittercism/android/az;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcrittercism/android/av;->a:I

    .line 25
    iput-boolean v0, p0, Lcrittercism/android/av;->b:Z

    .line 26
    iput-boolean v0, p0, Lcrittercism/android/av;->c:Z

    .line 27
    iput-boolean v0, p0, Lcrittercism/android/av;->d:Z

    .line 34
    iput-object p1, p0, Lcrittercism/android/av;->e:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcrittercism/android/av;->f:Lcrittercism/android/az;

    .line 38
    new-instance v0, Lcrittercism/android/bd;

    invoke-direct {v0, p1, p2}, Lcrittercism/android/bd;-><init>(Landroid/content/Context;Lcrittercism/android/az;)V

    iput-object v0, p0, Lcrittercism/android/av;->g:Lcrittercism/android/bd;

    .line 39
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 44
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 190
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    if-eqz p1, :cond_e

    :try_start_2
    iget-boolean v0, p0, Lcrittercism/android/av;->c:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcrittercism/android/av;->g:Lcrittercism/android/bd;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/av;->c:Z
    :try_end_e
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_e} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_e} :catch_11

    .line 118
    :cond_e
    :goto_e
    return-void

    .line 113
    :catch_f
    move-exception v0

    throw v0

    .line 115
    :catch_11
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_e
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    if-eqz p1, :cond_26

    :try_start_2
    iget-boolean v0, p0, Lcrittercism/android/av;->b:Z

    if-eqz v0, :cond_27

    invoke-static {}, Lcrittercism/android/dx;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/av;->b:Z

    :cond_c
    :goto_c
    iget v0, p0, Lcrittercism/android/av;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcrittercism/android/av;->a:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/av;->g:Lcrittercism/android/bd;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/av;->c:Z

    .line 60
    :cond_26
    :goto_26
    return-void

    .line 54
    :cond_27
    iget v0, p0, Lcrittercism/android/av;->a:I

    if-nez v0, :cond_75

    iget-object v0, p0, Lcrittercism/android/av;->f:Lcrittercism/android/az;

    new-instance v1, Lcrittercism/android/bl;

    sget-object v2, Lcrittercism/android/bl$a;->a:Lcrittercism/android/bl$a;

    invoke-direct {v1, v2}, Lcrittercism/android/bl;-><init>(Lcrittercism/android/bl$a;)V

    invoke-virtual {v0, v1}, Lcrittercism/android/az;->a(Lcrittercism/android/ci;)V

    invoke-static {}, Lcrittercism/android/bg;->f()V

    iget-boolean v0, p0, Lcrittercism/android/av;->d:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/av;->d:Z

    new-instance v0, Lcrittercism/android/d;

    iget-object v1, p0, Lcrittercism/android/av;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcrittercism/android/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcrittercism/android/d;->a()Lcrittercism/android/b;

    move-result-object v0

    sget-object v1, Lcrittercism/android/b;->c:Lcrittercism/android/b;

    if-eq v0, v1, :cond_c

    sget-object v1, Lcrittercism/android/b;->d:Lcrittercism/android/b;

    if-ne v0, v1, :cond_63

    iget-object v0, p0, Lcrittercism/android/av;->f:Lcrittercism/android/az;

    new-instance v1, Lcrittercism/android/ce;

    sget-object v2, Lcrittercism/android/ce$a;->b:Lcrittercism/android/ce$a;

    invoke-direct {v1, v2}, Lcrittercism/android/ce;-><init>(Lcrittercism/android/ce$a;)V

    invoke-virtual {v0, v1}, Lcrittercism/android/az;->a(Lcrittercism/android/ci;)V
    :try_end_60
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_60} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_60} :catch_70

    goto :goto_c

    .line 55
    :catch_61
    move-exception v0

    throw v0

    .line 54
    :cond_63
    :try_start_63
    iget-object v0, p0, Lcrittercism/android/av;->f:Lcrittercism/android/az;

    new-instance v1, Lcrittercism/android/ce;

    sget-object v2, Lcrittercism/android/ce$a;->a:Lcrittercism/android/ce$a;

    invoke-direct {v1, v2}, Lcrittercism/android/ce;-><init>(Lcrittercism/android/ce$a;)V

    invoke-virtual {v0, v1}, Lcrittercism/android/az;->a(Lcrittercism/android/ci;)V
    :try_end_6f
    .catch Ljava/lang/ThreadDeath; {:try_start_63 .. :try_end_6f} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_6f} :catch_70

    goto :goto_c

    .line 57
    :catch_70
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_26

    .line 54
    :cond_75
    :try_start_75
    iget-object v0, p0, Lcrittercism/android/av;->f:Lcrittercism/android/az;

    new-instance v1, Lcrittercism/android/bj;

    sget-object v2, Lcrittercism/android/bj$a;->a:Lcrittercism/android/bj$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcrittercism/android/bj;-><init>(Lcrittercism/android/bj$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcrittercism/android/az;->a(Lcrittercism/android/ci;)V
    :try_end_89
    .catch Ljava/lang/ThreadDeath; {:try_start_75 .. :try_end_89} :catch_61
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_89} :catch_70

    goto :goto_c
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 185
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 49
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 153
    if-eqz p1, :cond_14

    :try_start_2
    iget v0, p0, Lcrittercism/android/av;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcrittercism/android/av;->a:I

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcrittercism/android/dx;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/av;->b:Z

    .line 159
    :cond_14
    :goto_14
    return-void

    .line 153
    :cond_15
    iget v0, p0, Lcrittercism/android/av;->a:I

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcrittercism/android/av;->f:Lcrittercism/android/az;

    new-instance v1, Lcrittercism/android/bl;

    sget-object v2, Lcrittercism/android/bl$a;->b:Lcrittercism/android/bl$a;

    invoke-direct {v1, v2}, Lcrittercism/android/bl;-><init>(Lcrittercism/android/bl$a;)V

    invoke-virtual {v0, v1}, Lcrittercism/android/az;->a(Lcrittercism/android/ci;)V

    iget-object v0, p0, Lcrittercism/android/av;->f:Lcrittercism/android/az;

    invoke-static {v0}, Lcrittercism/android/bg;->a(Lcrittercism/android/az;)V
    :try_end_2a
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2a} :catch_42

    goto :goto_14

    .line 154
    :catch_2b
    move-exception v0

    throw v0

    .line 153
    :cond_2d
    :try_start_2d
    iget-object v0, p0, Lcrittercism/android/av;->f:Lcrittercism/android/az;

    new-instance v1, Lcrittercism/android/bj;

    sget-object v2, Lcrittercism/android/bj$a;->b:Lcrittercism/android/bj$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcrittercism/android/bj;-><init>(Lcrittercism/android/bj$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcrittercism/android/az;->a(Lcrittercism/android/ci;)V
    :try_end_41
    .catch Ljava/lang/ThreadDeath; {:try_start_2d .. :try_end_41} :catch_2b
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_41} :catch_42

    goto :goto_14

    .line 156
    :catch_42
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_14
.end method
