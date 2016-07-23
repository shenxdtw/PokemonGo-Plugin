.class public Lcom/google/android/gms/internal/zzfc;
.super Lcom/google/android/gms/internal/zzfh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# static fields
.field static final zzAb:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzAc:Ljava/lang/String;

.field private zzAd:Z

.field private zzAe:I

.field private zzAf:I

.field private zzAg:I

.field private zzAh:I

.field private final zzAi:Landroid/app/Activity;

.field private zzAj:Landroid/widget/ImageView;

.field private zzAk:Landroid/widget/LinearLayout;

.field private zzAl:Lcom/google/android/gms/internal/zzfi;

.field private zzAm:Landroid/widget/PopupWindow;

.field private zzAn:Landroid/widget/RelativeLayout;

.field private zzAo:Landroid/view/ViewGroup;

.field private zznQ:I

.field private zznR:I

.field private final zzoM:Lcom/google/android/gms/internal/zziz;

.field private final zzpd:Ljava/lang/Object;

.field private zzzm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "top-left"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "top-right"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "top-center"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "center"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "bottom-left"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "bottom-right"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "bottom-center"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/zzfc;->zzAb:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzfi;)V
    .registers 6

    const/4 v2, -0x1

    const/4 v1, 0x0

    const-string v0, "resize"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzfh;-><init>(Lcom/google/android/gms/internal/zziz;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAc:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAd:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAe:I

    iput v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAf:I

    iput v2, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    iput v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAg:I

    iput v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAh:I

    iput v2, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzpd:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zziz;->zzgZ()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfc;->zzAl:Lcom/google/android/gms/internal/zzfi;

    return-void
.end method

.method private zzee()[I
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfc;->zzeg()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAd:Z

    if-eqz v0, :cond_20

    new-array v0, v7, [I

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAe:I

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zzAg:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAf:I

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAh:I

    add-int/2addr v1, v2

    aput v1, v0, v6

    goto :goto_a

    :cond_20
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzid;->zzh(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzid;->zzj(Landroid/app/Activity;)[I

    move-result-object v3

    aget v4, v0, v1

    iget v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAe:I

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAg:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAf:I

    iget v5, p0, Lcom/google/android/gms/internal/zzfc;->zzAh:I

    add-int/2addr v2, v5

    if-gez v0, :cond_51

    move v0, v1

    :cond_43
    :goto_43
    aget v4, v3, v1

    if-ge v2, v4, :cond_5b

    aget v2, v3, v1

    :cond_49
    :goto_49
    new-array v3, v7, [I

    aput v0, v3, v1

    aput v2, v3, v6

    move-object v0, v3

    goto :goto_a

    :cond_51
    iget v5, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    add-int/2addr v5, v0

    if-le v5, v4, :cond_43

    iget v0, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    sub-int v0, v4, v0

    goto :goto_43

    :cond_5b
    iget v4, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    add-int/2addr v4, v2

    aget v5, v3, v6

    if-le v4, v5, :cond_49

    aget v2, v3, v6

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    sub-int/2addr v2, v3

    goto :goto_49
.end method

.method private zzf(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v1

    const-string v0, "width"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzid;->zzaA(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    :cond_20
    const-string v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v1

    const-string v0, "height"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzid;->zzaA(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    :cond_40
    const-string v0, "offsetX"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v1

    const-string v0, "offsetX"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzid;->zzaA(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAg:I

    :cond_60
    const-string v0, "offsetY"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_80

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v1

    const-string v0, "offsetY"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzid;->zzaA(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAh:I

    :cond_80
    const-string v0, "allowOffscreen"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9c

    const-string v0, "allowOffscreen"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAd:Z

    :cond_9c
    const-string v0, "customClosePosition"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_ac

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAc:Ljava/lang/String;

    :cond_ac
    return-void
.end method


# virtual methods
.method public zza(IIZ)V
    .registers 11

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/zzfc;->zzAe:I

    iput p2, p0, Lcom/google/android/gms/internal/zzfc;->zzAf:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_47

    if-eqz p3, :cond_47

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfc;->zzee()[I

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    const/4 v5, 0x0

    aget v5, v0, v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    const/4 v6, 0x1

    aget v6, v0, v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/PopupWindow;->update(IIII)V

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/zzfc;->zzc(II)V

    :cond_47
    :goto_47
    monitor-exit v1

    return-void

    :cond_49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfc;->zzn(Z)V

    goto :goto_47

    :catchall_4e
    move-exception v0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw v0
.end method

.method zzb(II)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAl:Lcom/google/android/gms/internal/zzfi;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAl:Lcom/google/android/gms/internal/zzfi;

    iget v1, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzfi;->zza(IIII)V

    :cond_d
    return-void
.end method

.method zzc(II)V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzid;->zzj(Landroid/app/Activity;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int v0, p2, v0

    iget v1, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzfc;->zzb(IIII)V

    return-void
.end method

.method public zzd(II)V
    .registers 3

    iput p1, p0, Lcom/google/android/gms/internal/zzfc;->zzAe:I

    iput p2, p0, Lcom/google/android/gms/internal/zzfc;->zzAf:I

    return-void
.end method

.method zzed()Z
    .registers 3

    const/4 v1, -0x1

    iget v0, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    if-le v0, v1, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    if-le v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public zzef()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method zzeg()Z
    .registers 8

    const/16 v6, 0x32

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzid;->zzh(Landroid/app/Activity;)[I

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzid;->zzj(Landroid/app/Activity;)[I

    move-result-object v4

    aget v5, v2, v0

    aget v2, v2, v1

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    if-lt v3, v6, :cond_24

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    if-le v3, v5, :cond_2a

    :cond_24
    const-string v1, "Width is too small or too large."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    :cond_29
    :goto_29
    return v0

    :cond_2a
    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    if-lt v3, v6, :cond_32

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    if-le v3, v2, :cond_38

    :cond_32
    const-string v1, "Height is too small or too large."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_29

    :cond_38
    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    if-ne v3, v2, :cond_46

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    if-ne v2, v5, :cond_46

    const-string v1, "Cannot resize to a full-screen ad."

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzb;->zzaH(Ljava/lang/String;)V

    goto :goto_29

    :cond_46
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAd:Z

    if-eqz v2, :cond_76

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfc;->zzAc:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_12a

    :cond_54
    :goto_54
    packed-switch v2, :pswitch_data_144

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAe:I

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zzAg:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, -0x32

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAf:I

    iget v6, p0, Lcom/google/android/gms/internal/zzfc;->zzAh:I

    add-int/2addr v2, v6

    :goto_66
    if-ltz v3, :cond_29

    add-int/lit8 v3, v3, 0x32

    if-gt v3, v5, :cond_29

    aget v3, v4, v0

    if-lt v2, v3, :cond_29

    add-int/lit8 v2, v2, 0x32

    aget v3, v4, v1

    if-gt v2, v3, :cond_29

    :cond_76
    move v0, v1

    goto :goto_29

    :sswitch_78
    const-string v6, "top-left"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    move v2, v0

    goto :goto_54

    :sswitch_82
    const-string v6, "top-center"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    move v2, v1

    goto :goto_54

    :sswitch_8c
    const-string v6, "center"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    const/4 v2, 0x2

    goto :goto_54

    :sswitch_96
    const-string v6, "bottom-left"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    const/4 v2, 0x3

    goto :goto_54

    :sswitch_a0
    const-string v6, "bottom-center"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    const/4 v2, 0x4

    goto :goto_54

    :sswitch_aa
    const-string v6, "bottom-right"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    const/4 v2, 0x5

    goto :goto_54

    :pswitch_b4
    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAe:I

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zzAg:I

    add-int/2addr v3, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAf:I

    iget v6, p0, Lcom/google/android/gms/internal/zzfc;->zzAh:I

    add-int/2addr v2, v6

    goto :goto_66

    :pswitch_bf
    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAe:I

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zzAg:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, -0x19

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAf:I

    iget v6, p0, Lcom/google/android/gms/internal/zzfc;->zzAh:I

    add-int/2addr v2, v6

    goto :goto_66

    :pswitch_d1
    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAe:I

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zzAg:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, -0x19

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAf:I

    iget v6, p0, Lcom/google/android/gms/internal/zzfc;->zzAh:I

    add-int/2addr v2, v6

    iget v6, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x19

    goto/16 :goto_66

    :pswitch_eb
    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAe:I

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zzAg:I

    add-int/2addr v3, v2

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAf:I

    iget v6, p0, Lcom/google/android/gms/internal/zzfc;->zzAh:I

    add-int/2addr v2, v6

    iget v6, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x32

    goto/16 :goto_66

    :pswitch_fc
    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAe:I

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zzAg:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, -0x19

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAf:I

    iget v6, p0, Lcom/google/android/gms/internal/zzfc;->zzAh:I

    add-int/2addr v2, v6

    iget v6, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x32

    goto/16 :goto_66

    :pswitch_114
    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAe:I

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zzAg:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    add-int/2addr v2, v3

    add-int/lit8 v3, v2, -0x32

    iget v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAf:I

    iget v6, p0, Lcom/google/android/gms/internal/zzfc;->zzAh:I

    add-int/2addr v2, v6

    iget v6, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    add-int/2addr v2, v6

    add-int/lit8 v2, v2, -0x32

    goto/16 :goto_66

    :sswitch_data_12a
    .sparse-switch
        -0x514d33ab -> :sswitch_8c
        -0x3c587281 -> :sswitch_78
        -0x27103597 -> :sswitch_96
        0x455fe3fa -> :sswitch_aa
        0x4ccee637 -> :sswitch_a0
        0x68a23bcd -> :sswitch_82
    .end sparse-switch

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_bf
        :pswitch_d1
        :pswitch_eb
        :pswitch_fc
        :pswitch_114
    .end packed-switch
.end method

.method public zzg(Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzfc;->zzpd:Ljava/lang/Object;

    monitor-enter v6

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    if-nez v1, :cond_11

    const-string v1, "Not an activity context. Cannot resize."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzfc;->zzak(Ljava/lang/String;)V

    monitor-exit v6

    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zziz;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    if-nez v1, :cond_23

    const-string v1, "Webview is not yet available, size is not set."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzfc;->zzak(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_10

    :catchall_20
    move-exception v1

    monitor-exit v6
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_20

    throw v1

    :cond_23
    :try_start_23
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zziz;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zztf:Z

    if-eqz v1, :cond_34

    const-string v1, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzfc;->zzak(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_10

    :cond_34
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zziz;->zzhi()Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "Cannot resize an expanded banner."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzfc;->zzak(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_10

    :cond_43
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfc;->zzf(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfc;->zzed()Z

    move-result v1

    if-nez v1, :cond_53

    const-string v1, "Invalid width and height options. Cannot resize."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzfc;->zzak(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_10

    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    if-eqz v7, :cond_61

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_68

    :cond_61
    const-string v1, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzfc;->zzak(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_10

    :cond_68
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfc;->zzee()[I

    move-result-object v8

    if-nez v8, :cond_75

    const-string v1, "Resize location out of screen or close button is not visible."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzfc;->zzak(Ljava/lang/String;)V

    monitor-exit v6

    goto :goto_10

    :cond_75
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    iget v9, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    invoke-virtual {v1, v2, v9}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v9

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    iget v10, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    invoke-virtual {v1, v2, v10}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v10

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zziz;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1d5

    instance-of v1, v2, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1d5

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    iget-object v11, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v11}, Lcom/google/android/gms/internal/zziz;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    if-nez v1, :cond_1ce

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAo:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziz;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzid;->zzk(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    invoke-direct {v2, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAj:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAj:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zziz;->zzaN()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzzm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAo:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAj:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_dd
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAn:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAn:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAn:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAn:Landroid/widget/RelativeLayout;

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v9, v10, v11}, Lcom/google/android/gms/internal/zzid;->zza(Landroid/view/View;IIZ)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAd:Z

    if-nez v1, :cond_1dd

    move v1, v5

    :goto_116
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAn:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziz;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-virtual {v1, v2, v9, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAk:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget-object v9, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    const/16 v10, 0x32

    invoke-virtual {v1, v9, v10}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    const/16 v11, 0x32

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v2, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_2ac

    :cond_155
    move v1, v4

    :goto_156
    packed-switch v1, :pswitch_data_2c6

    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_163
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAk:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/google/android/gms/internal/zzfc$1;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/zzfc$1;-><init>(Lcom/google/android/gms/internal/zzfc;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAk:Landroid/widget/LinearLayout;

    const-string v3, "Close button"

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAn:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfc;->zzAk:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_17b
    .catchall {:try_start_23 .. :try_end_17b} :catchall_20

    :try_start_17b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    const/4 v7, 0x0

    aget v7, v8, v7

    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    const/4 v9, 0x1

    aget v9, v8, v9

    invoke-virtual {v5, v7, v9}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_19f
    .catch Ljava/lang/RuntimeException; {:try_start_17b .. :try_end_19f} :catch_265
    .catchall {:try_start_17b .. :try_end_19f} :catchall_20

    const/4 v1, 0x0

    :try_start_1a0
    aget v1, v8, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzfc;->zzb(II)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    new-instance v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfc;->zzAi:Landroid/app/Activity;

    new-instance v4, Lcom/google/android/gms/ads/AdSize;

    iget v5, p0, Lcom/google/android/gms/internal/zzfc;->zznQ:I

    iget v7, p0, Lcom/google/android/gms/internal/zzfc;->zznR:I

    invoke-direct {v4, v5, v7}, Lcom/google/android/gms/ads/AdSize;-><init>(II)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdSize;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    const/4 v1, 0x0

    aget v1, v8, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/zzfc;->zzc(II)V

    const-string v1, "resized"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzfc;->zzam(Ljava/lang/String;)V

    monitor-exit v6

    goto/16 :goto_10

    :cond_1ce
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_dd

    :cond_1d5
    const-string v1, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzfc;->zzak(Ljava/lang/String;)V

    monitor-exit v6

    goto/16 :goto_10

    :cond_1dd
    move v1, v3

    goto/16 :goto_116

    :sswitch_1e0
    const-string v5, "top-left"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    move v1, v3

    goto/16 :goto_156

    :sswitch_1eb
    const-string v3, "top-center"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    move v1, v5

    goto/16 :goto_156

    :sswitch_1f6
    const-string v3, "center"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    const/4 v1, 0x2

    goto/16 :goto_156

    :sswitch_201
    const-string v3, "bottom-left"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    const/4 v1, 0x3

    goto/16 :goto_156

    :sswitch_20c
    const-string v3, "bottom-center"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    const/4 v1, 0x4

    goto/16 :goto_156

    :sswitch_217
    const-string v3, "bottom-right"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    const/4 v1, 0x5

    goto/16 :goto_156

    :pswitch_222
    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_163

    :pswitch_22e
    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_163

    :pswitch_23a
    const/16 v1, 0xd

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_163

    :pswitch_241
    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_163

    :pswitch_24d
    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_163

    :pswitch_259
    const/16 v1, 0xc

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xb

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_163

    :catch_265
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot show popup window: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzfc;->zzak(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAn:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziz;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAo:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2a8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAo:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAj:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzAo:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziz;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzzm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :cond_2a8
    monitor-exit v6
    :try_end_2a9
    .catchall {:try_start_1a0 .. :try_end_2a9} :catchall_20

    goto/16 :goto_10

    nop

    :sswitch_data_2ac
    .sparse-switch
        -0x514d33ab -> :sswitch_1f6
        -0x3c587281 -> :sswitch_1e0
        -0x27103597 -> :sswitch_201
        0x455fe3fa -> :sswitch_217
        0x4ccee637 -> :sswitch_20c
        0x68a23bcd -> :sswitch_1eb
    .end sparse-switch

    :pswitch_data_2c6
    .packed-switch 0x0
        :pswitch_222
        :pswitch_22e
        :pswitch_23a
        :pswitch_241
        :pswitch_24d
        :pswitch_259
    .end packed-switch
.end method

.method public zzn(Z)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzpd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAn:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziz;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAo:Landroid/view/ViewGroup;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAo:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzAj:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAo:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zziz;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzoM:Lcom/google/android/gms/internal/zziz;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfc;->zzzm:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/zziz;->zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V

    :cond_34
    if-eqz p1, :cond_44

    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfc;->zzam(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAl:Lcom/google/android/gms/internal/zzfi;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAl:Lcom/google/android/gms/internal/zzfi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfi;->zzbc()V

    :cond_44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAm:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAn:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAo:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzAk:Landroid/widget/LinearLayout;

    :cond_50
    monitor-exit v1

    return-void

    :catchall_52
    move-exception v0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v0
.end method
