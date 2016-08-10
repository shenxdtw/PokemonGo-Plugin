.class Lcom/upsight/mediation/mraid/MRAIDView$4;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/mraid/MRAIDView;->close(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/mraid/MRAIDView;

.field final synthetic val$sendCallback:Z


# direct methods
.method constructor <init>(Lcom/upsight/mediation/mraid/MRAIDView;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView$4;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    iput-boolean p2, p0, Lcom/upsight/mediation/mraid/MRAIDView$4;->val$sendCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 402
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$4;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->state:I
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$900(Lcom/upsight/mediation/mraid/MRAIDView;)I

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$4;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->state:I
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$900(Lcom/upsight/mediation/mraid/MRAIDView;)I

    move-result v0

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$4;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$400(Lcom/upsight/mediation/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_19
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$4;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->state:I
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$900(Lcom/upsight/mediation/mraid/MRAIDView;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_23

    .line 410
    :cond_22
    :goto_22
    return-void

    .line 405
    :cond_23
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$4;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->state:I
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$900(Lcom/upsight/mediation/mraid/MRAIDView;)I

    move-result v0

    if-eq v0, v2, :cond_34

    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$4;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->state:I
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$900(Lcom/upsight/mediation/mraid/MRAIDView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3c

    .line 406
    :cond_34
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$4;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    iget-boolean v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$4;->val$sendCallback:Z

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->closeFromExpanded(Z)V
    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1000(Lcom/upsight/mediation/mraid/MRAIDView;Z)V

    goto :goto_22

    .line 407
    :cond_3c
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$4;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->state:I
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$900(Lcom/upsight/mediation/mraid/MRAIDView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 408
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$4;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    iget-boolean v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$4;->val$sendCallback:Z

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->closeFromResized(Z)V
    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1100(Lcom/upsight/mediation/mraid/MRAIDView;Z)V

    goto :goto_22
.end method
