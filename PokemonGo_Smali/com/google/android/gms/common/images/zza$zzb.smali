.class public final Lcom/google/android/gms/common/images/zza$zzb;
.super Lcom/google/android/gms/common/images/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation


# instance fields
.field private zzaee:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/zza;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzs(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zza$zzb;->zzaee:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zza;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzs(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zza$zzb;->zzaee:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private zza(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 11

    const/4 v2, 0x0

    if-nez p4, :cond_1d

    if-nez p5, :cond_1d

    const/4 v0, 0x1

    move v3, v0

    :goto_7
    if-eqz v3, :cond_1f

    instance-of v0, p1, Lcom/google/android/gms/internal/zzlu;

    if-eqz v0, :cond_1f

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzlu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlu;->zzoH()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/images/zza$zzb;->zzadX:I

    if-eqz v1, :cond_1f

    iget v1, p0, Lcom/google/android/gms/common/images/zza$zzb;->zzadX:I

    if-ne v0, v1, :cond_1f

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    move v3, v2

    goto :goto_7

    :cond_1f
    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/common/images/zza$zzb;->zzb(ZZ)Z

    move-result v4

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/zza$zzb;->zzadY:Z

    if-eqz v0, :cond_63

    if-eqz p2, :cond_63

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    move-object v0, p2

    :goto_32
    if-eqz v4, :cond_3c

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/images/zza$zzb;->zza(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/zzls;

    move-result-object v0

    :cond_3c
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v1, p1, Lcom/google/android/gms/internal/zzlu;

    if-eqz v1, :cond_55

    check-cast p1, Lcom/google/android/gms/internal/zzlu;

    if-eqz p5, :cond_5f

    iget-object v1, p0, Lcom/google/android/gms/common/images/zza$zzb;->zzadV:Lcom/google/android/gms/common/images/zza$zza;

    iget-object v1, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    :goto_4b
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzlu;->zzj(Landroid/net/Uri;)V

    if-eqz v3, :cond_61

    iget v1, p0, Lcom/google/android/gms/common/images/zza$zzb;->zzadX:I

    :goto_52
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzlu;->zzbA(I)V

    :cond_55
    if-eqz v4, :cond_1c

    check-cast v0, Lcom/google/android/gms/internal/zzls;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzls;->startTransition(I)V

    goto :goto_1c

    :cond_5f
    const/4 v1, 0x0

    goto :goto_4b

    :cond_61
    move v1, v2

    goto :goto_52

    :cond_63
    move-object v0, p2

    goto :goto_32
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v0, p1, Lcom/google/android/gms/common/images/zza$zzb;

    if-nez v0, :cond_7

    .end local p1    # "obj":Ljava/lang/Object;
    :goto_6
    return v3

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_7
    if-ne p0, p1, :cond_b

    move v3, v2

    goto :goto_6

    :cond_b
    check-cast p1, Lcom/google/android/gms/common/images/zza$zzb;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/common/images/zza$zzb;->zzaee:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/google/android/gms/common/images/zza$zzb;->zzaee:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v2

    :goto_28
    move v3, v0

    goto :goto_6

    :cond_2a
    move v0, v3

    goto :goto_28
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected zza(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/common/images/zza$zzb;->zzaee:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_12

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/images/zza$zzb;->zza(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V

    :cond_12
    return-void
.end method
