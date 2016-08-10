.class Lcom/upsight/mediation/mraid/MRAIDView$8;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/mraid/MRAIDView;->closeFromExpanded(Z)V
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
    .line 823
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView$8;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    iput-boolean p2, p0, Lcom/upsight/mediation/mraid/MRAIDView$8;->val$sendCallback:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 826
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$8;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->fireStateChangeEvent()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2300(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 827
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$8;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->listener:Lcom/upsight/mediation/mraid/MRAIDViewListener;
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2400(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/MRAIDViewListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$8;->val$sendCallback:Z

    if-eqz v0, :cond_1c

    .line 828
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$8;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->listener:Lcom/upsight/mediation/mraid/MRAIDViewListener;
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2400(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/MRAIDViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$8;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-interface {v0, v1}, Lcom/upsight/mediation/mraid/MRAIDViewListener;->mraidViewClose(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 830
    :cond_1c
    return-void
.end method
