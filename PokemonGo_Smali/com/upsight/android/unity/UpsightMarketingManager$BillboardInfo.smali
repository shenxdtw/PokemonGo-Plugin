.class Lcom/upsight/android/unity/UpsightMarketingManager$BillboardInfo;
.super Ljava/lang/Object;
.source "UpsightMarketingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/unity/UpsightMarketingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BillboardInfo"
.end annotation


# instance fields
.field public final billboard:Lcom/upsight/android/marketing/UpsightBillboard;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public final handler:Lcom/upsight/android/unity/BillboardHandler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/upsight/android/marketing/UpsightBillboard;Lcom/upsight/android/unity/BillboardHandler;)V
    .registers 3
    .param p1, "billboard"    # Lcom/upsight/android/marketing/UpsightBillboard;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "handler"    # Lcom/upsight/android/unity/BillboardHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightMarketingManager$BillboardInfo;->billboard:Lcom/upsight/android/marketing/UpsightBillboard;

    .line 31
    iput-object p2, p0, Lcom/upsight/android/unity/UpsightMarketingManager$BillboardInfo;->handler:Lcom/upsight/android/unity/BillboardHandler;

    .line 32
    return-void
.end method
