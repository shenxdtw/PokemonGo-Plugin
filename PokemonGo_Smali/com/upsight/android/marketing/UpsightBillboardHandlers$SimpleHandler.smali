.class abstract Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;
.super Ljava/lang/Object;
.source "UpsightBillboardHandlers.java"

# interfaces
.implements Lcom/upsight/android/marketing/UpsightBillboard$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/UpsightBillboardHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SimpleHandler"
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 182
    return-void
.end method


# virtual methods
.method getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public onDetach()V
    .registers 1

    .prologue
    .line 192
    return-void
.end method

.method public onNextView()V
    .registers 1

    .prologue
    .line 187
    return-void
.end method

.method public onPurchases(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/marketing/UpsightPurchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/marketing/UpsightPurchase;>;"
    return-void
.end method

.method public onRewards(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/marketing/UpsightReward;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "rewards":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/marketing/UpsightReward;>;"
    return-void
.end method
