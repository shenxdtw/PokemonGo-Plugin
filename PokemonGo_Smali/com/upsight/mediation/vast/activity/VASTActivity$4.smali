.class Lcom/upsight/mediation/vast/activity/VASTActivity$4;
.super Ljava/util/TimerTask;
.source "VASTActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/vast/activity/VASTActivity;->startToolBarTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/vast/activity/VASTActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/mediation/vast/activity/VASTActivity;

    .prologue
    .line 803
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$4;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 806
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$4;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$400(Lcom/upsight/mediation/vast/activity/VASTActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/upsight/mediation/vast/activity/VASTActivity$4$1;

    invoke-direct {v1, p0}, Lcom/upsight/mediation/vast/activity/VASTActivity$4$1;-><init>(Lcom/upsight/mediation/vast/activity/VASTActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 812
    return-void
.end method
