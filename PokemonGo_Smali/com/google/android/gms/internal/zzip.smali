.class public Lcom/google/android/gms/internal/zzip;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzip$zza;
    }
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/zziq;Lcom/google/android/gms/internal/zzip$zza;)Lcom/google/android/gms/internal/zziq;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zziq",
            "<TA;>;",
            "Lcom/google/android/gms/internal/zzip$zza",
            "<TA;TB;>;)",
            "Lcom/google/android/gms/internal/zziq",
            "<TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzin;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzin;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzip$1;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/zzip$1;-><init>(Lcom/google/android/gms/internal/zzin;Lcom/google/android/gms/internal/zzip$zza;Lcom/google/android/gms/internal/zziq;)V

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/zziq;->zzc(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static zzh(Ljava/util/List;)Lcom/google/android/gms/internal/zziq;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zziq",
            "<TV;>;>;)",
            "Lcom/google/android/gms/internal/zziq",
            "<",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzin;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzin;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zziq;

    new-instance v5, Lcom/google/android/gms/internal/zzip$2;

    invoke-direct {v5, v3, v2, v1, p0}, Lcom/google/android/gms/internal/zzip$2;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;ILcom/google/android/gms/internal/zzin;Ljava/util/List;)V

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/zziq;->zzc(Ljava/lang/Runnable;)V

    goto :goto_13

    :cond_28
    return-object v1
.end method

.method private static zzi(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zziq",
            "<TV;>;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zziq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziq;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v1
.end method

.method static synthetic zzj(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzip;->zzi(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
