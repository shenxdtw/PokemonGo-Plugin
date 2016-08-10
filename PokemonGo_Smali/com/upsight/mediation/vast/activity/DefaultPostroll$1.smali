.class Lcom/upsight/mediation/vast/activity/DefaultPostroll$1;
.super Ljava/lang/Object;
.source "DefaultPostroll.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/vast/activity/DefaultPostroll;->setUpLearn(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/vast/activity/DefaultPostroll;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/vast/activity/DefaultPostroll;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/mediation/vast/activity/DefaultPostroll;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll$1;->this$0:Lcom/upsight/mediation/vast/activity/DefaultPostroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll$1;->this$0:Lcom/upsight/mediation/vast/activity/DefaultPostroll;

    # getter for: Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mListener:Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;
    invoke-static {v0}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->access$000(Lcom/upsight/mediation/vast/activity/DefaultPostroll;)Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;->infoClicked(Z)V

    .line 127
    return-void
.end method
