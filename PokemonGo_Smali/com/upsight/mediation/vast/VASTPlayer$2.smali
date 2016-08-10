.class Lcom/upsight/mediation/vast/VASTPlayer$2;
.super Ljava/lang/Object;
.source "VASTPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/vast/VASTPlayer;->loadVastResponseViaXML(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/vast/VASTPlayer;

.field final synthetic val$xmlData:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/vast/VASTPlayer;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/mediation/vast/VASTPlayer;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/upsight/mediation/vast/VASTPlayer$2;->this$0:Lcom/upsight/mediation/vast/VASTPlayer;

    iput-object p2, p0, Lcom/upsight/mediation/vast/VASTPlayer$2;->val$xmlData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 167
    new-instance v1, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;

    iget-object v3, p0, Lcom/upsight/mediation/vast/VASTPlayer$2;->this$0:Lcom/upsight/mediation/vast/VASTPlayer;

    # getter for: Lcom/upsight/mediation/vast/VASTPlayer;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/upsight/mediation/vast/VASTPlayer;->access$100(Lcom/upsight/mediation/vast/VASTPlayer;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/upsight/mediation/vast/util/DefaultMediaPicker;-><init>(Landroid/content/Context;)V

    .line 168
    .local v1, "mediaPicker":Lcom/upsight/mediation/vast/processor/VASTMediaPicker;
    new-instance v2, Lcom/upsight/mediation/vast/processor/VASTProcessor;

    iget-object v3, p0, Lcom/upsight/mediation/vast/VASTPlayer$2;->this$0:Lcom/upsight/mediation/vast/VASTPlayer;

    invoke-direct {v2, v1, v3}, Lcom/upsight/mediation/vast/processor/VASTProcessor;-><init>(Lcom/upsight/mediation/vast/processor/VASTMediaPicker;Lcom/upsight/mediation/vast/VASTPlayer;)V

    .line 169
    .local v2, "processor":Lcom/upsight/mediation/vast/processor/VASTProcessor;
    iget-object v3, p0, Lcom/upsight/mediation/vast/VASTPlayer$2;->this$0:Lcom/upsight/mediation/vast/VASTPlayer;

    # getter for: Lcom/upsight/mediation/vast/VASTPlayer;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/upsight/mediation/vast/VASTPlayer;->access$100(Lcom/upsight/mediation/vast/VASTPlayer;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/mediation/vast/VASTPlayer$2;->val$xmlData:Ljava/lang/String;

    iget-object v5, p0, Lcom/upsight/mediation/vast/VASTPlayer$2;->this$0:Lcom/upsight/mediation/vast/VASTPlayer;

    # getter for: Lcom/upsight/mediation/vast/VASTPlayer;->shouldValidateSchema:Z
    invoke-static {v5}, Lcom/upsight/mediation/vast/VASTPlayer;->access$200(Lcom/upsight/mediation/vast/VASTPlayer;)Z

    move-result v5

    iget-object v6, p0, Lcom/upsight/mediation/vast/VASTPlayer$2;->this$0:Lcom/upsight/mediation/vast/VASTPlayer;

    # getter for: Lcom/upsight/mediation/vast/VASTPlayer;->downloadTimeout:I
    invoke-static {v6}, Lcom/upsight/mediation/vast/VASTPlayer;->access$300(Lcom/upsight/mediation/vast/VASTPlayer;)I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/upsight/mediation/vast/processor/VASTProcessor;->process(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    .line 170
    .local v0, "error":I
    if-nez v0, :cond_36

    .line 171
    iget-object v3, p0, Lcom/upsight/mediation/vast/VASTPlayer$2;->this$0:Lcom/upsight/mediation/vast/VASTPlayer;

    invoke-virtual {v2}, Lcom/upsight/mediation/vast/processor/VASTProcessor;->getModel()Lcom/upsight/mediation/vast/model/VASTModel;

    move-result-object v4

    # setter for: Lcom/upsight/mediation/vast/VASTPlayer;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;
    invoke-static {v3, v4}, Lcom/upsight/mediation/vast/VASTPlayer;->access$402(Lcom/upsight/mediation/vast/VASTPlayer;Lcom/upsight/mediation/vast/model/VASTModel;)Lcom/upsight/mediation/vast/model/VASTModel;

    .line 175
    :goto_35
    return-void

    .line 173
    :cond_36
    iget-object v3, p0, Lcom/upsight/mediation/vast/VASTPlayer$2;->this$0:Lcom/upsight/mediation/vast/VASTPlayer;

    # invokes: Lcom/upsight/mediation/vast/VASTPlayer;->sendError(I)V
    invoke-static {v3, v0}, Lcom/upsight/mediation/vast/VASTPlayer;->access$000(Lcom/upsight/mediation/vast/VASTPlayer;I)V

    goto :goto_35
.end method
