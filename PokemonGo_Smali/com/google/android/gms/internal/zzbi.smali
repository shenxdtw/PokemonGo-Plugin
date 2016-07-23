.class public Lcom/google/android/gms/internal/zzbi;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzpd:Ljava/lang/Object;

.field private zzrX:I

.field private zzrY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzbh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzpd:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzrY:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbh;)Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbi;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzrY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    monitor-exit v1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbh;)Z
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbi;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzrY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbh;

    if-eq p1, v0, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbh;->zzcm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbh;->zzcm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_2a
    return v0

    :cond_2b
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_2a

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbh;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbi;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzrY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue is full, current size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbi;->zzrY:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzrY:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2f
    iget v0, p0, Lcom/google/android/gms/internal/zzbi;->zzrX:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzbi;->zzrX:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbh;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzrY:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public zzcs()Lcom/google/android/gms/internal/zzbh;
    .registers 8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbi;->zzpd:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzrY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "Queue empty"

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaF(Ljava/lang/String;)V

    monitor-exit v4

    :goto_12
    return-object v3

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzrY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_46

    const/high16 v2, -0x80000000

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzrY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbh;->getScore()I

    move-result v1

    if-le v1, v2, :cond_55

    move v6, v1

    move-object v1, v0

    move v0, v6

    :goto_39
    move v2, v0

    move-object v3, v1

    goto :goto_24

    :cond_3c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzrY:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v4

    goto :goto_12

    :catchall_43
    move-exception v0

    monitor-exit v4
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_43

    throw v0

    :cond_46
    :try_start_46
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbi;->zzrY:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbh;->zzcn()V

    monitor-exit v4
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_43

    move-object v3, v0

    goto :goto_12

    :cond_55
    move v0, v2

    move-object v1, v3

    goto :goto_39
.end method
