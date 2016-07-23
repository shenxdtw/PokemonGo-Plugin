.class abstract Lcom/google/android/gms/internal/zzix;
.super Ljava/lang/Object;


# instance fields
.field private final zzJS:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzix;->zzJS:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final detach()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzix;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzix;->zzb(Landroid/view/ViewTreeObserver;)V

    :cond_9
    return-void
.end method

.method protected getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzix;->zzJS:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_d

    move-object v0, v1

    :cond_c
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_19
    move-object v0, v1

    goto :goto_c
.end method

.method protected abstract zza(Landroid/view/ViewTreeObserver;)V
.end method

.method protected abstract zzb(Landroid/view/ViewTreeObserver;)V
.end method

.method public final zzgW()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzix;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzix;->zza(Landroid/view/ViewTreeObserver;)V

    :cond_9
    return-void
.end method
