.class public Lcom/google/android/gms/internal/zzit;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzis;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzit$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzis",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final zzJM:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/google/android/gms/internal/zzit",
            "<TT;>.zza;>;"
        }
    .end annotation
.end field

.field protected zzJN:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzpd:Ljava/lang/Object;

.field protected zzys:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzit;->zzpd:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzit;->zzys:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzit;->zzJM:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method


# virtual methods
.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzit;->zzys:I

    return v0
.end method

.method public reject()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzit;->zzys:I

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    const/4 v0, -0x1

    :try_start_11
    iput v0, p0, Lcom/google/android/gms/internal/zzit;->zzys:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzit;->zzJM:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzit$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzit$zza;->zzJP:Lcom/google/android/gms/internal/zzis$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzis$zza;->run()V

    goto :goto_19

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzit;->zzJM:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_11 .. :try_end_31} :catchall_d

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzis$zzc;Lcom/google/android/gms/internal/zzis$zza;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzis$zzc",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzis$zza;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzit;->zzys:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzit;->zzJN:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzis$zzc;->zzc(Ljava/lang/Object;)V

    :cond_d
    :goto_d
    monitor-exit v1

    return-void

    :cond_f
    iget v0, p0, Lcom/google/android/gms/internal/zzit;->zzys:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b

    invoke-interface {p2}, Lcom/google/android/gms/internal/zzis$zza;->run()V

    goto :goto_d

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0

    :cond_1b
    :try_start_1b
    iget v0, p0, Lcom/google/android/gms/internal/zzit;->zzys:I

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzit;->zzJM:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/google/android/gms/internal/zzit$zza;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/internal/zzit$zza;-><init>(Lcom/google/android/gms/internal/zzit;Lcom/google/android/gms/internal/zzis$zzc;Lcom/google/android/gms/internal/zzis$zza;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_18

    goto :goto_d
.end method

.method public zzg(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzit;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzit;->zzys:I

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0

    :cond_10
    :try_start_10
    iput-object p1, p0, Lcom/google/android/gms/internal/zzit;->zzJN:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzit;->zzys:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzit;->zzJM:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzit$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzit$zza;->zzJO:Lcom/google/android/gms/internal/zzis$zzc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzis$zzc;->zzc(Ljava/lang/Object;)V

    goto :goto_1b

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzit;->zzJM:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_10 .. :try_end_33} :catchall_d

    return-void
.end method
