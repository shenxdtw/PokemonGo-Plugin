.class public final Lcom/google/android/gms/internal/zzoy$zza;
.super Lcom/google/android/gms/internal/zzoz$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzoy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final zzaaY:I


# direct methods
.method public constructor <init>(ILandroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzoz$zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzoy$zza;->zzaaY:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzoy$zza;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private setActivity(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/internal/zzoy$zza;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzoy$zza;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzoy$zza;->setActivity(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public zzh(ILandroid/os/Bundle;)V
    .registers 7

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_26

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzoy$zza;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/internal/zzoy$zza;->zzaaY:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    const/4 v1, 0x1

    :try_start_19
    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_17

    :catch_1d
    move-exception v0

    const-string v1, "AddressClientImpl"

    const-string v2, "Exception settng pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :cond_26
    const/4 v0, 0x0

    if-eqz p2, :cond_31

    const-string v0, "com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_31
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_4d

    :try_start_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoy$zza;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/android/gms/internal/zzoy$zza;->zzaaY:I

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_43
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3c .. :try_end_43} :catch_44

    goto :goto_17

    :catch_44
    move-exception v0

    const-string v1, "AddressClientImpl"

    const-string v2, "Exception starting pending intent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :cond_4d
    :try_start_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzoy$zza;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/google/android/gms/internal/zzoy$zza;->zzaaY:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_62
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_4d .. :try_end_62} :catch_63

    goto :goto_17

    :catch_63
    move-exception v0

    const-string v1, "AddressClientImpl"

    const-string v2, "Exception setting pending result"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17
.end method
