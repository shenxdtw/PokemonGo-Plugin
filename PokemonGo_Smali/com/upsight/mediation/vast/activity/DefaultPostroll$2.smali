.class Lcom/upsight/mediation/vast/activity/DefaultPostroll$2;
.super Ljava/lang/Object;
.source "DefaultPostroll.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/vast/activity/DefaultPostroll;->setUpX(Landroid/content/Context;)V
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
    .line 152
    iput-object p1, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll$2;->this$0:Lcom/upsight/mediation/vast/activity/DefaultPostroll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll$2;->this$0:Lcom/upsight/mediation/vast/activity/DefaultPostroll;

    invoke-virtual {v0}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->hide()V

    .line 156
    iget-object v0, p0, Lcom/upsight/mediation/vast/activity/DefaultPostroll$2;->this$0:Lcom/upsight/mediation/vast/activity/DefaultPostroll;

    # getter for: Lcom/upsight/mediation/vast/activity/DefaultPostroll;->mListener:Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;
    invoke-static {v0}, Lcom/upsight/mediation/vast/activity/DefaultPostroll;->access$000(Lcom/upsight/mediation/vast/activity/DefaultPostroll;)Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;->closeClicked()V

    .line 157
    return-void
.end method
