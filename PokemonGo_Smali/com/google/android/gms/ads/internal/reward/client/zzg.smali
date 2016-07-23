.class public Lcom/google/android/gms/ads/internal/reward/client/zzg;
.super Lcom/google/android/gms/ads/internal/reward/client/zzd$zza;


# instance fields
.field private final zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/client/zzd$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-void
.end method


# virtual methods
.method public onRewardedVideoAdClosed()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdClosed()V

    :cond_9
    return-void
.end method

.method public onRewardedVideoAdFailedToLoad(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdFailedToLoad(I)V

    :cond_9
    return-void
.end method

.method public onRewardedVideoAdLeftApplication()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdLeftApplication()V

    :cond_9
    return-void
.end method

.method public onRewardedVideoAdLoaded()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdLoaded()V

    :cond_9
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdOpened()V

    :cond_9
    return-void
.end method

.method public onRewardedVideoStarted()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoStarted()V

    :cond_9
    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zza;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/reward/client/zzg;->zzHd:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    new-instance v1, Lcom/google/android/gms/ads/internal/reward/client/zze;

    invoke-direct {v1, p1}, Lcom/google/android/gms/ads/internal/reward/client/zze;-><init>(Lcom/google/android/gms/ads/internal/reward/client/zza;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V

    :cond_e
    return-void
.end method
