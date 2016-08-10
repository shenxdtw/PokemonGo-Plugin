.class Lcom/upsight/mediation/vast/activity/VASTActivity$4$1;
.super Ljava/lang/Object;
.source "VASTActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/vast/activity/VASTActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upsight/mediation/vast/activity/VASTActivity$4;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/vast/activity/VASTActivity$4;)V
    .registers 2
    .param p1, "this$1"    # Lcom/upsight/mediation/vast/activity/VASTActivity$4;

    .prologue
    .line 806
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$4$1;->this$1:Lcom/upsight/mediation/vast/activity/VASTActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 809
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/VASTActivity$4$1;->this$1:Lcom/upsight/mediation/vast/activity/VASTActivity$4;

    iget-object v0, v0, Lcom/upsight/mediation/vast/activity/VASTActivity$4;->this$0:Lcom/upsight/mediation/vast/activity/VASTActivity;

    # getter for: Lcom/upsight/mediation/vast/activity/VASTActivity;->mPlayerControls:Lcom/upsight/mediation/vast/activity/PlayerControls;
    invoke-static {v0}, Lcom/upsight/mediation/vast/activity/VASTActivity;->access$300(Lcom/upsight/mediation/vast/activity/VASTActivity;)Lcom/upsight/mediation/vast/activity/PlayerControls;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/vast/activity/PlayerControls;->setVisibility(I)V

    .line 810
    return-void
.end method
