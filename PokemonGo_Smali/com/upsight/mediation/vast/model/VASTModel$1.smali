.class Lcom/upsight/mediation/vast/model/VASTModel$1;
.super Ljava/lang/Object;
.source "VASTModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/vast/model/VASTModel;->cache(Landroid/content/Context;Lcom/upsight/mediation/vast/VASTPlayer;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/vast/model/VASTModel;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$downloadTimeout:I

.field final synthetic val$vastPlayer:Lcom/upsight/mediation/vast/VASTPlayer;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/vast/model/VASTModel;Lcom/upsight/mediation/vast/VASTPlayer;Landroid/content/Context;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/upsight/mediation/vast/model/VASTModel;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTModel$1;->this$0:Lcom/upsight/mediation/vast/model/VASTModel;

    iput-object p2, p0, Lcom/upsight/mediation/vast/model/VASTModel$1;->val$vastPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iput-object p3, p0, Lcom/upsight/mediation/vast/model/VASTModel$1;->val$c:Landroid/content/Context;

    iput p4, p0, Lcom/upsight/mediation/vast/model/VASTModel$1;->val$downloadTimeout:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 275
    new-instance v0, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTModel$1;->this$0:Lcom/upsight/mediation/vast/model/VASTModel;

    iget-object v2, p0, Lcom/upsight/mediation/vast/model/VASTModel$1;->val$vastPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    iget-object v3, p0, Lcom/upsight/mediation/vast/model/VASTModel$1;->val$c:Landroid/content/Context;

    iget v4, p0, Lcom/upsight/mediation/vast/model/VASTModel$1;->val$downloadTimeout:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;-><init>(Lcom/upsight/mediation/vast/model/VASTModel;Lcom/upsight/mediation/vast/VASTPlayer;Landroid/content/Context;I)V

    .line 276
    .local v0, "task":Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/upsight/mediation/vast/model/VASTModel$1;->this$0:Lcom/upsight/mediation/vast/model/VASTModel;

    # getter for: Lcom/upsight/mediation/vast/model/VASTModel;->mediaFileLocation:Ljava/lang/String;
    invoke-static {v3}, Lcom/upsight/mediation/vast/model/VASTModel;->access$000(Lcom/upsight/mediation/vast/model/VASTModel;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/vast/model/VASTModel$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    return-void
.end method
