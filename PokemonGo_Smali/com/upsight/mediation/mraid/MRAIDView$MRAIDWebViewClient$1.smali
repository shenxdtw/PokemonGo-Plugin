.class Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient$1;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;)V
    .registers 2
    .param p1, "this$1"    # Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v1, v0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.setPlacementType(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$400(Lcom/upsight/mediation/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "interstitial"

    :goto_1b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\');"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->setSupportedServices()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2800(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1206
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->setScreenSize()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3000(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1207
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->setDefaultPosition()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3300(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1208
    const-string v0, "MRAIDView"

    const-string v1, "calling fireStateChangeEvent 2"

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->fireStateChangeEvent()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2300(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1210
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->fireReadyEvent()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3400(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1211
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->isViewable:Z
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3500(Lcom/upsight/mediation/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1212
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->fireViewableChangeEvent()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3600(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1214
    :cond_67
    return-void

    .line 1204
    :cond_68
    const-string v0, "inline"

    goto :goto_1b
.end method
