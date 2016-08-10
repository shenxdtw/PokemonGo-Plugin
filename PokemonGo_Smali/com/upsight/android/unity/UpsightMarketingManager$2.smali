.class Lcom/upsight/android/unity/UpsightMarketingManager$2;
.super Ljava/lang/Object;
.source "UpsightMarketingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightMarketingManager;->destroyBillboard(Ljava/lang/String;)V
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
    .line 87
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightMarketingManager$2;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    iput-object p2, p0, Lcom/upsight/android/unity/UpsightMarketingManager$2;->val$scope:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 90
    const-string v0, "Upsight-UnityMarketing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying billboard for scope: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/unity/UpsightMarketingManager$2;->val$scope:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightMarketingManager$2;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mBillboardMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$000(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/unity/UpsightMarketingManager$2;->val$scope:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/unity/UpsightMarketingManager$BillboardInfo;

    iget-object v0, v0, Lcom/upsight/android/unity/UpsightMarketingManager$BillboardInfo;->billboard:Lcom/upsight/android/marketing/UpsightBillboard;

    invoke-virtual {v0}, Lcom/upsight/android/marketing/UpsightBillboard;->destroy()V

    .line 92
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightMarketingManager$2;->this$0:Lcom/upsight/android/unity/UpsightMarketingManager;

    # getter for: Lcom/upsight/android/unity/UpsightMarketingManager;->mPreparedBillboards:Ljava/util/Set;
    invoke-static {v0}, Lcom/upsight/android/unity/UpsightMarketingManager;->access$100(Lcom/upsight/android/unity/UpsightMarketingManager;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/unity/UpsightMarketingManager$2;->val$scope:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method
