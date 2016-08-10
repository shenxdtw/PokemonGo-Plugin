.class Lcom/upsight/mediation/mraid/MRAIDView$6;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/mraid/MRAIDView;->expand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/mraid/MRAIDView;

.field final synthetic val$finalUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/mraid/MRAIDView;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    iput-object p2, p0, Lcom/upsight/mediation/mraid/MRAIDView$6;->val$finalUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 484
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView$6;->val$finalUrl:Ljava/lang/String;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->getStringFromUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1300(Lcom/upsight/mediation/mraid/MRAIDView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 487
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$600(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/upsight/mediation/mraid/MRAIDView$6$1;

    invoke-direct {v2, p0, v0}, Lcom/upsight/mediation/mraid/MRAIDView$6$1;-><init>(Lcom/upsight/mediation/mraid/MRAIDView$6;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 507
    :goto_1e
    return-void

    .line 505
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load part 2 expanded content for URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView$6;->val$finalUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->i(Ljava/lang/String;)V

    goto :goto_1e
.end method
