.class Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/mediation/mraid/MRAIDView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MRAIDWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/mraid/MRAIDView;


# direct methods
.method private constructor <init>(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 2

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/mediation/mraid/MRAIDView;Lcom/upsight/mediation/mraid/MRAIDView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p2, "x1"    # Lcom/upsight/mediation/mraid/MRAIDView$1;

    .prologue
    .line 1173
    invoke-direct {p0, p1}, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;-><init>(Lcom/upsight/mediation/mraid/MRAIDView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1177
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1179
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->state:I
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$900(Lcom/upsight/mediation/mraid/MRAIDView;)I

    move-result v0

    if-nez v0, :cond_a1

    .line 1180
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # setter for: Lcom/upsight/mediation/mraid/MRAIDView;->isPageFinished:Z
    invoke-static {v0, v3}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2702(Lcom/upsight/mediation/mraid/MRAIDView;Z)Z

    .line 1181
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mraid.setPlacementType(\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$400(Lcom/upsight/mediation/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_be

    const-string v0, "interstitial"

    :goto_40
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\');"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->setSupportedServices()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2800(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1183
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->isLaidOut:Z
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2900(Lcom/upsight/mediation/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1184
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->setScreenSize()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3000(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1185
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->setMaxSize()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3100(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1186
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->setCurrentPosition()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3200(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1187
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->setDefaultPosition()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3300(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1188
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # setter for: Lcom/upsight/mediation/mraid/MRAIDView;->state:I
    invoke-static {v0, v3}, Lcom/upsight/mediation/mraid/MRAIDView;->access$902(Lcom/upsight/mediation/mraid/MRAIDView;I)I

    .line 1189
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->fireStateChangeEvent()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2300(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1190
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->fireReadyEvent()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3400(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1191
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->isViewable:Z
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3500(Lcom/upsight/mediation/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1192
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->fireViewableChangeEvent()V
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3600(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1195
    :cond_8e
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->listener:Lcom/upsight/mediation/mraid/MRAIDViewListener;
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2400(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/MRAIDViewListener;

    move-result-object v0

    if-eqz v0, :cond_a1

    .line 1196
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->listener:Lcom/upsight/mediation/mraid/MRAIDViewListener;
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2400(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/MRAIDViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-interface {v0, v1}, Lcom/upsight/mediation/mraid/MRAIDViewListener;->mraidViewLoaded(Lcom/upsight/mediation/mraid/MRAIDView;)V

    .line 1199
    :cond_a1
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->isExpandingPart2:Z
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2100(Lcom/upsight/mediation/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 1200
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    const/4 v1, 0x0

    # setter for: Lcom/upsight/mediation/mraid/MRAIDView;->isExpandingPart2:Z
    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$2102(Lcom/upsight/mediation/mraid/MRAIDView;Z)Z

    .line 1201
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3700(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient$1;

    invoke-direct {v1, p0}, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient$1;-><init>(Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1217
    :cond_bd
    return-void

    .line 1181
    :cond_be
    const-string v0, "inline"

    goto :goto_40
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 1221
    const-string v0, "MRAIDView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1223
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1227
    const-string v1, "MRAIDView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldOverrideUrlLoading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    const-string v1, "mraid://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1229
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->parseCommandUrl(Ljava/lang/String;)V
    invoke-static {v1, p2}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3800(Lcom/upsight/mediation/mraid/MRAIDView;Ljava/lang/String;)V

    .line 1247
    :cond_26
    :goto_26
    return v0

    .line 1231
    :cond_27
    const-string v1, "sms:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1232
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1200(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureManager:Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3900(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->isSmsSupported()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1233
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1200(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureSendSms(Ljava/lang/String;)V

    goto :goto_26

    .line 1236
    :cond_4d
    const-string v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 1237
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1200(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureManager:Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$3900(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/upsight/mediation/mraid/internal/MRAIDNativeFeatureManager;->isTelSupported()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1238
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1200(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureCallTel(Ljava/lang/String;)V

    goto :goto_26

    .line 1241
    :cond_73
    const-string v1, "market:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 1242
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1200(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 1243
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$MRAIDWebViewClient;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->nativeFeatureListener:Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$1200(Lcom/upsight/mediation/mraid/MRAIDView;)Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;->mraidNativeFeatureOpenMarket(Ljava/lang/String;)V

    goto :goto_26

    .line 1247
    :cond_8d
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_26
.end method
