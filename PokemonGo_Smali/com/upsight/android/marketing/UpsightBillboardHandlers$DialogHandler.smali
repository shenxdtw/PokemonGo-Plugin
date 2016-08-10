.class public Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;
.super Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;
.source "UpsightBillboardHandlers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/UpsightBillboardHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;-><init>(Landroid/app/Activity;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onAttach(Ljava/lang/String;)Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;
    .registers 5
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 99
    :cond_c
    const/4 v1, 0x0

    .line 102
    :goto_d
    return-object v1

    .line 101
    :cond_e
    new-instance v1, Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;

    invoke-direct {v1, v0}, Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;-><init>(Landroid/app/Activity;)V

    sget-object v2, Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;->Dialog:Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;

    .line 102
    invoke-virtual {v1, v2}, Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;->putPreferredPresentationStyle(Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;)Lcom/upsight/android/marketing/UpsightBillboard$AttachParameters;

    move-result-object v1

    goto :goto_d
.end method

.method public bridge synthetic onDetach()V
    .registers 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;->onDetach()V

    return-void
.end method

.method public bridge synthetic onNextView()V
    .registers 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;->onNextView()V

    return-void
.end method

.method public bridge synthetic onPurchases(Ljava/util/List;)V
    .registers 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;->onPurchases(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onRewards(Ljava/util/List;)V
    .registers 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;->onRewards(Ljava/util/List;)V

    return-void
.end method
