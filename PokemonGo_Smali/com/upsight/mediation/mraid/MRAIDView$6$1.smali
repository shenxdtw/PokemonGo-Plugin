.class Lcom/upsight/mediation/mraid/MRAIDView$6$1;
.super Ljava/lang/Object;
.source "MRAIDView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/mraid/MRAIDView$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/mraid/MRAIDView$6;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/upsight/mediation/mraid/MRAIDView$6;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iput-object p2, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 490
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->state:I
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$900(Lcom/upsight/mediation/mraid/MRAIDView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_22

    .line 491
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->removeResizeView()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1400(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 492
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v1, v1, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1500(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->addView(Landroid/view/View;)V

    .line 494
    :cond_22
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1500(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 495
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->webView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1500(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 496
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v1, v1, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->createWebView()Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1700(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    # setter for: Lcom/upsight/mediation/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;
    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1602(Lcom/upsight/mediation/mraid/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 497
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v1, v1, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1600(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->injectMraidJs(Landroid/webkit/WebView;)V
    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1800(Lcom/upsight/mediation/mraid/MRAIDView;Landroid/webkit/WebView;)V

    .line 498
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1600(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v1, v1, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->baseUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1900(Lcom/upsight/mediation/mraid/MRAIDView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->val$content:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v1, v1, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->webViewPart2:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1600(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/webkit/WebView;

    move-result-object v1

    # setter for: Lcom/upsight/mediation/mraid/MRAIDView;->currentWebView:Landroid/webkit/WebView;
    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2002(Lcom/upsight/mediation/mraid/MRAIDView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 500
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    const/4 v1, 0x1

    # setter for: Lcom/upsight/mediation/mraid/MRAIDView;->isExpandingPart2:Z
    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2102(Lcom/upsight/mediation/mraid/MRAIDView;Z)Z

    .line 501
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$6$1;->this$1:Lcom/upsight/mediation/mraid/MRAIDView$6;

    iget-object v0, v0, Lcom/upsight/mediation/mraid/MRAIDView$6;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->expandHelper()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2200(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 502
    return-void
.end method
