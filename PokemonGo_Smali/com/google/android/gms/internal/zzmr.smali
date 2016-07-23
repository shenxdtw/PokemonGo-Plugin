.class public final Lcom/google/android/gms/internal/zzmr;
.super Ljava/lang/Object;


# static fields
.field private static zzail:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzmr;->zzail:Landroid/content/IntentFilter;

    return-void
.end method

.method public static zzao(Landroid/content/Context;)I
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_c

    :cond_a
    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v4, Lcom/google/android/gms/internal/zzmr;->zzail:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3a

    move v0, v3

    :goto_1a
    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_41

    move v1, v2

    :goto_1f
    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzqC()Z

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    :goto_31
    if-eqz v0, :cond_50

    move v0, v2

    :goto_34
    shl-int/lit8 v0, v0, 0x1

    if-eqz v1, :cond_52

    :goto_38
    or-int/2addr v0, v2

    goto :goto_b

    :cond_3a
    const-string v1, "plugged"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1a

    :cond_41
    move v1, v3

    goto :goto_1f

    :cond_43
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto :goto_31

    :cond_50
    move v0, v3

    goto :goto_34

    :cond_52
    move v2, v3

    goto :goto_38
.end method

.method public static zzap(Landroid/content/Context;)F
    .registers 5

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzmr;->zzail:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v0, 0x7fc00000    # NaNf

    if-eqz v1, :cond_1f

    const-string v0, "level"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    :cond_1f
    return v0
.end method
