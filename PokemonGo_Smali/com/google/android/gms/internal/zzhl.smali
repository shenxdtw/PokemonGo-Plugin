.class public Lcom/google/android/gms/internal/zzhl;
.super Lcom/google/android/gms/ads/internal/reward/mediation/client/zza$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private zzHh:Lcom/google/android/gms/internal/zzhm;

.field private zzHn:Lcom/google/android/gms/internal/zzhj;

.field private zzHo:Lcom/google/android/gms/internal/zzhk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzhk;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/mediation/client/zza$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhl;->zzHo:Lcom/google/android/gms/internal/zzhk;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHo:Lcom/google/android/gms/internal/zzhk;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHo:Lcom/google/android/gms/internal/zzhk;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzhk;->zza(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V

    :cond_9
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzhj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhl;->zzHn:Lcom/google/android/gms/internal/zzhj;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzhm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhl;->zzHh:Lcom/google/android/gms/internal/zzhm;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/dynamic/zzd;I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHn:Lcom/google/android/gms/internal/zzhj;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHn:Lcom/google/android/gms/internal/zzhj;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzhj;->zzK(I)V

    :cond_9
    return-void
.end method

.method public zzc(Lcom/google/android/gms/dynamic/zzd;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHh:Lcom/google/android/gms/internal/zzhm;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHh:Lcom/google/android/gms/internal/zzhm;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzhm;->zzb(Ljava/lang/String;I)V

    :cond_15
    return-void
.end method

.method public zzg(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHn:Lcom/google/android/gms/internal/zzhj;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHn:Lcom/google/android/gms/internal/zzhj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhj;->zzge()V

    :cond_9
    return-void
.end method

.method public zzh(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHh:Lcom/google/android/gms/internal/zzhm;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHh:Lcom/google/android/gms/internal/zzhm;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzhm;->zzav(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public zzi(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHo:Lcom/google/android/gms/internal/zzhk;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHo:Lcom/google/android/gms/internal/zzhk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhk;->onRewardedVideoAdOpened()V

    :cond_9
    return-void
.end method

.method public zzj(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHo:Lcom/google/android/gms/internal/zzhk;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHo:Lcom/google/android/gms/internal/zzhk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhk;->onRewardedVideoStarted()V

    :cond_9
    return-void
.end method

.method public zzk(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHo:Lcom/google/android/gms/internal/zzhk;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHo:Lcom/google/android/gms/internal/zzhk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhk;->onRewardedVideoAdClosed()V

    :cond_9
    return-void
.end method

.method public zzl(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHo:Lcom/google/android/gms/internal/zzhk;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHo:Lcom/google/android/gms/internal/zzhk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhk;->zzgb()V

    :cond_9
    return-void
.end method

.method public zzm(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHo:Lcom/google/android/gms/internal/zzhk;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhl;->zzHo:Lcom/google/android/gms/internal/zzhk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhk;->onRewardedVideoAdLeftApplication()V

    :cond_9
    return-void
.end method
