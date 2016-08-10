.class public final Lcom/upsight/android/marketing/UpsightBillboardHandlers;
.super Ljava/lang/Object;
.source "UpsightBillboardHandlers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;,
        Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;,
        Lcom/upsight/android/marketing/UpsightBillboardHandlers$FullscreenHandler;,
        Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forDefault(Landroid/app/Activity;)Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;

    invoke-direct {v0, p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DefaultHandler;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static forDialog(Landroid/app/Activity;)Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;

    invoke-direct {v0, p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static forFullscreen(Landroid/app/Activity;)Lcom/upsight/android/marketing/UpsightBillboard$Handler;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    new-instance v0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$FullscreenHandler;

    invoke-direct {v0, p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$FullscreenHandler;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
