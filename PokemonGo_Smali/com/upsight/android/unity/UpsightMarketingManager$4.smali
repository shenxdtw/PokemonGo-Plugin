.class Lcom/upsight/android/unity/UpsightMarketingManager$4;
.super Ljava/lang/Object;
.source "UpsightMarketingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightMarketingManager;->onApplicationResumed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightMarketingManager;


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightMarketingManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightMarketingManager;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightMarketingManager$4;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 132
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightMarketingManager$4;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mPreparedBillboards:Ljava/util/Set;
    invoke-static {v3}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$100(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 133
    .local v2, "scope":Ljava/lang/String;
    new-instance v1, Lcom/upsight/android/unity/BillboardHandler;

    invoke-static {}, Lcom/upsight/android/unity/UnityBridge;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/upsight/android/unity/BillboardHandler;-><init>(Landroid/app/Activity;)V

    .line 134
    .local v1, "handler":Lcom/upsight/android/unity/BillboardHandler;
    iget-object v4, p0, Lcom/upsight/android/unity/UpsightMarketingManager$4;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mUpsight:Lcom/upsight/android/UpsightContext;
    invoke-static {v4}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$200(Lcom/upsight/android/unity/UpsightMarketingManager;)Lcom/upsight/android/UpsightContext;

    move-result-object v4

    invoke-static {v4, v2, v1}, Lcom/upsight/android/marketing/UpsightBillboard;->create(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)Lcom/upsight/android/marketing/UpsightBillboard;

    move-result-object v0

    .line 135
    .local v0, "billboard":Lcom/upsight/android/marketing/UpsightBillboard;
    iget-object v4, p0, Lcom/upsight/android/unity/UpsightMarketingManager$4;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mBillboardMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$000(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/upsight/android/unity/UpsightMarketingManager$BillboardInfo;

    invoke-direct {v5, v0, v1}, Lcom/upsight/android/unity/UpsightMarketingManager$BillboardInfo;-><init>(Lcom/upsight/android/marketing/UpsightBillboard;Lcom/upsight/android/unity/BillboardHandler;)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 137
    .end local v0    # "billboard":Lcom/upsight/android/marketing/UpsightBillboard;
    .end local v1    # "handler":Lcom/upsight/android/unity/BillboardHandler;
    .end local v2    # "scope":Ljava/lang/String;
    :cond_38
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightMarketingManager$4;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mPreparedBillboards:Ljava/util/Set;
    invoke-static {v3}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$100(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 138
    return-void
.end method
