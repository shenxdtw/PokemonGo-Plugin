.class public Lcom/google/android/gms/ads/internal/reward/client/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzGY:Ljava/lang/String;

.field private zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

.field private final zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

.field private final zzpd:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/reward/client/zzb;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzpd:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    if-nez v0, :cond_9

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    :goto_8
    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzb;->destroy()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_13
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    :goto_e
    :try_start_e
    monitor-exit v1

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v0

    :catch_13
    move-exception v0

    :try_start_14
    const-string v2, "Could not forward destroy to RewardedVideoAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_10

    goto :goto_e
.end method

.method public getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzGY:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isLoaded()Z
    .registers 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzpd:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    if-nez v1, :cond_a

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_12

    :goto_9
    return v0

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/reward/client/zzb;->isLoaded()Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_15
    .catchall {:try_start_a .. :try_end_f} :catchall_12

    move-result v0

    :try_start_10
    monitor-exit v2

    goto :goto_9

    :catchall_12
    move-exception v0

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_12

    throw v0

    :catch_15
    move-exception v1

    :try_start_16
    const-string v3, "Could not forward isLoaded to RewardedVideoAd"

    invoke-static {v3, v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_12

    goto :goto_9
.end method

.method public loadAd(Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;)V
    .registers 8
    .param p1, "adUnitId"    # Ljava/lang/String;
    .param p2, "adRequest"    # Lcom/google/android/gms/ads/AdRequest;

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    if-nez v0, :cond_9

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1e

    :goto_8
    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzh;->zzcB()Lcom/google/android/gms/ads/internal/client/zzh;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdRequest;->zzaF()Lcom/google/android/gms/ads/internal/client/zzy;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lcom/google/android/gms/ads/internal/client/zzh;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/zzy;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/reward/client/zzb;->zza(Lcom/google/android/gms/ads/internal/reward/client/RewardedVideoAdRequestParcel;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1c} :catch_21
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1e

    :goto_1c
    :try_start_1c
    monitor-exit v1

    goto :goto_8

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_1e

    throw v0

    :catch_21
    move-exception v0

    :try_start_22
    const-string v2, "Could not forward loadAd to RewardedVideoAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_1e

    goto :goto_1c
.end method

.method public pause()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    if-nez v0, :cond_9

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    :goto_8
    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzb;->pause()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_13
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    :goto_e
    :try_start_e
    monitor-exit v1

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v0

    :catch_13
    move-exception v0

    :try_start_14
    const-string v2, "Could not forward pause to RewardedVideoAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_10

    goto :goto_e
.end method

.method public resume()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    if-nez v0, :cond_9

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    :goto_8
    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzb;->resume()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_13
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    :goto_e
    :try_start_e
    monitor-exit v1

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v0

    :catch_13
    move-exception v0

    :try_start_14
    const-string v2, "Could not forward resume to RewardedVideoAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_10

    goto :goto_e
.end method

.method public setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_1c

    if-eqz v0, :cond_13

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    new-instance v2, Lcom/google/android/gms/ads/internal/reward/client/zzg;

    invoke-direct {v2, p1}, Lcom/google/android/gms/ads/internal/reward/client/zzg;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/reward/client/zzb;->zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_15
    .catchall {:try_start_9 .. :try_end_13} :catchall_1c

    :cond_13
    :goto_13
    :try_start_13
    monitor-exit v1

    return-void

    :catch_15
    move-exception v0

    const-string v2, "Could not forward setRewardedVideoAdListener to RewardedVideoAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzGY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "A user id has already been set, ignoring."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    monitor-exit v1

    :goto_11
    return-void

    :cond_12
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzGY:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1f

    if-eqz v0, :cond_1d

    :try_start_18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/reward/client/zzb;->setUserId(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1d} :catch_22
    .catchall {:try_start_18 .. :try_end_1d} :catchall_1f

    :cond_1d
    :goto_1d
    :try_start_1d
    monitor-exit v1

    goto :goto_11

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_1f

    throw v0

    :catch_22
    move-exception v0

    :try_start_23
    const-string v2, "Could not forward setUserId to RewardedVideoAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_1f

    goto :goto_1d
.end method

.method public show()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    if-nez v0, :cond_9

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    :goto_8
    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzi;->zzHe:Lcom/google/android/gms/ads/internal/reward/client/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/reward/client/zzb;->show()V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_13
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    :goto_e
    :try_start_e
    monitor-exit v1

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_10

    throw v0

    :catch_13
    move-exception v0

    :try_start_14
    const-string v2, "Could not forward show to RewardedVideoAd"

    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_10

    goto :goto_e
.end method
