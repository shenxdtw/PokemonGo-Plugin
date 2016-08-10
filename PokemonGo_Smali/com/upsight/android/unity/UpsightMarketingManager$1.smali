.class Lcom/upsight/android/unity/UpsightMarketingManager$1;
.super Ljava/lang/Object;
.source "UpsightMarketingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightMarketingManager;->prepareBillboard(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

.field final synthetic val$scope:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightMarketingManager;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightMarketingManager;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightMarketingManager$1;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    iput-object p2, p0, Lcom/upsight/android/unity/UpsightMarketingManager$1;->val$scope:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 72
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightMarketingManager$1;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mBillboardMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$000(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/unity/UpsightMarketingManager$1;->val$scope:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, p0, Lcom/upsight/android/unity/UpsightMarketingManager$1;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mPreparedBillboards:Ljava/util/Set;
    invoke-static {v2}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$100(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/unity/UpsightMarketingManager$1;->val$scope:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 78
    :cond_1c
    :goto_1c
    return-void

    .line 75
    :cond_1d
    new-instance v1, Lcom/upsight/android/unity/BillboardHandler;

    invoke-static {}, Lcom/upsight/android/unity/UnityBridge;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/upsight/android/unity/BillboardHandler;-><init>(Landroid/app/Activity;)V

    .line 76
    .local v1, "handler":Lcom/upsight/android/unity/BillboardHandler;
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightMarketingManager$1;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mUpsight:Lcom/upsight/android/UpsightContext;
    invoke-static {v2}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$200(Lcom/upsight/android/unity/UpsightMarketingManager;)Lcom/upsight/android/UpsightContext;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/unity/UpsightMarketingManager$1;->val$scope:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/upsight/android/marketing/UpsightBillboard;->create(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)Lcom/upsight/android/marketing/UpsightBillboard;

    move-result-object v0

    .line 77
    .local v0, "billboard":Lcom/upsight/android/marketing/UpsightBillboard;
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightMarketingManager$1;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mBillboardMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$000(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/unity/UpsightMarketingManager$1;->val$scope:Ljava/lang/String;

    new-instance v4, Lcom/upsight/android/unity/UpsightMarketingManager$BillboardInfo;

    invoke-direct {v4, v0, v1}, Lcom/upsight/android/unity/UpsightMarketingManager$BillboardInfo;-><init>(Lcom/upsight/android/marketing/UpsightBillboard;Lcom/upsight/android/unity/BillboardHandler;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method
