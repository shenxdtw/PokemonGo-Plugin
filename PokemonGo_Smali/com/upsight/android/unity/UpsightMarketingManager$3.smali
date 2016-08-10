.class Lcom/upsight/android/unity/UpsightMarketingManager$3;
.super Ljava/lang/Object;
.source "UpsightMarketingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightMarketingManager;->onApplicationPaused()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

.field final synthetic val$currentScope:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightMarketingManager;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightMarketingManager;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightMarketingManager$3;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    iput-object p2, p0, Lcom/upsight/android/unity/UpsightMarketingManager$3;->val$currentScope:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 108
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightMarketingManager$3;->val$currentScope:Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 109
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightMarketingManager$3;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mBillboardMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$000(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/unity/UpsightMarketingManager$3;->val$currentScope:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_f
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightMarketingManager$3;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mPreparedBillboards:Ljava/util/Set;
    invoke-static {v1}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$100(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/unity/UpsightMarketingManager$3;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mBillboardMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$000(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightMarketingManager$3;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mBillboardMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$000(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_30
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, "scope":Ljava/lang/String;
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightMarketingManager$3;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mBillboardMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$000(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/unity/UpsightMarketingManager$BillboardInfo;

    iget-object v1, v1, Lcom/upsight/android/unity/UpsightMarketingManager$BillboardInfo;->billboard:Lcom/upsight/android/marketing/UpsightBillboard;

    invoke-virtual {v1}, Lcom/upsight/android/marketing/UpsightBillboard;->destroy()V

    goto :goto_30

    .line 117
    .end local v0    # "scope":Ljava/lang/String;
    :cond_4e
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightMarketingManager$3;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mBillboardMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$000(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 118
    return-void
.end method
