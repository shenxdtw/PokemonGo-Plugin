.class public abstract Lcom/google/android/gms/internal/zzdv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field protected zzoM:Lcom/google/android/gms/internal/zziz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zziz;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdv;->zzoM:Lcom/google/android/gms/internal/zziz;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzdv;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzdv;->zzad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private zzad(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "internal"

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_80

    :cond_a
    :goto_a
    packed-switch v1, :pswitch_data_aa

    :goto_d
    return-object v0

    :sswitch_e
    const-string v2, "error"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x0

    goto :goto_a

    :sswitch_18
    const-string v2, "playerFailed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    goto :goto_a

    :sswitch_22
    const-string v2, "inProgress"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x2

    goto :goto_a

    :sswitch_2c
    const-string v2, "contentLengthMissing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x3

    goto :goto_a

    :sswitch_36
    const-string v2, "noCacheDir"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x4

    goto :goto_a

    :sswitch_40
    const-string v2, "expireFailed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x5

    goto :goto_a

    :sswitch_4a
    const-string v2, "badUrl"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x6

    goto :goto_a

    :sswitch_54
    const-string v2, "downloadTimeout"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x7

    goto :goto_a

    :sswitch_5e
    const-string v2, "sizeExceeded"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v1, 0x8

    goto :goto_a

    :sswitch_69
    const-string v2, "externalAbort"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v1, 0x9

    goto :goto_a

    :pswitch_74
    const-string v0, "internal"

    goto :goto_d

    :pswitch_77
    const-string v0, "io"

    goto :goto_d

    :pswitch_7a
    const-string v0, "network"

    goto :goto_d

    :pswitch_7d
    const-string v0, "policy"

    goto :goto_d

    :sswitch_data_80
    .sparse-switch
        -0x533f68d6 -> :sswitch_4a
        -0x5049c18e -> :sswitch_22
        -0x36c40c47 -> :sswitch_54
        -0x274d4859 -> :sswitch_2c
        -0x26475182 -> :sswitch_18
        -0x151a598c -> :sswitch_5e
        -0x1e989db -> :sswitch_69
        0x5c4d208 -> :sswitch_e
        0x2293ea3c -> :sswitch_40
        0x2b3e368c -> :sswitch_36
    .end sparse-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_74
        :pswitch_77
        :pswitch_77
        :pswitch_7a
        :pswitch_7a
        :pswitch_7d
        :pswitch_7d
    .end packed-switch
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public release()V
    .registers 1

    return-void
.end method

.method protected zza(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzdv$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzdv$2;-><init>(Lcom/google/android/gms/internal/zzdv;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected zza(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 14

    sget-object v7, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzdv$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzdv$1;-><init>(Lcom/google/android/gms/internal/zzdv;Ljava/lang/String;Ljava/lang/String;IIZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    sget-object v6, Lcom/google/android/gms/ads/internal/util/client/zza;->zzJt:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzdv$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzdv$3;-><init>(Lcom/google/android/gms/internal/zzdv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract zzab(Ljava/lang/String;)Z
.end method

.method protected zzac(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzaE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
