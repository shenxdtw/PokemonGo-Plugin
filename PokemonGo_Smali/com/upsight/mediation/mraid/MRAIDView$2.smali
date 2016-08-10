.class Lcom/upsight/mediation/mraid/MRAIDView$2;
.super Landroid/webkit/WebView;
.source "MRAIDView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/mediation/mraid/MRAIDView;->createWebView()Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAIDView-WebView"


# instance fields
.field final synthetic this$0:Lcom/upsight/mediation/mraid/MRAIDView;


# direct methods
.method constructor <init>(Lcom/upsight/mediation/mraid/MRAIDView;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/upsight/mediation/mraid/MRAIDView$2;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 241
    const-string v1, "MRAIDView-WebView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_44

    const-string v0, "portrait"

    :goto_17
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$2;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$400(Lcom/upsight/mediation/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 243
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$2;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$600(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$2;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->displayMetrics:Landroid/util/DisplayMetrics;
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$500(Lcom/upsight/mediation/mraid/MRAIDView;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 245
    :cond_43
    return-void

    .line 241
    :cond_44
    const-string v0, "landscape"

    goto :goto_17
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 234
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->onLayout(ZIIII)V

    .line 235
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$2;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->onLayoutWebView(Landroid/webkit/WebView;ZIIII)V
    invoke-static/range {v0 .. v6}, Lcom/upsight/mediation/mraid/MRAIDView;->access$300(Lcom/upsight/mediation/mraid/MRAIDView;Landroid/webkit/WebView;ZIIII)V

    .line 236
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 6
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 249
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 250
    const-string v0, "MRAIDView-WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVisibilityChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;
    invoke-static {p2}, Lcom/upsight/mediation/mraid/MRAIDView;->access$700(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$2;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$400(Lcom/upsight/mediation/mraid/MRAIDView;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 252
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDView$2;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->setViewable(I)V
    invoke-static {v0, p2}, Lcom/upsight/mediation/mraid/MRAIDView;->access$800(Lcom/upsight/mediation/mraid/MRAIDView;I)V

    .line 254
    :cond_2c
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 6
    .param p1, "visibility"    # I

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    .line 259
    invoke-virtual {p0}, Lcom/upsight/mediation/mraid/MRAIDView$2;->getVisibility()I

    move-result v0

    .line 260
    .local v0, "actualVisibility":I
    const-string v1, "MRAIDView-WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowVisibilityChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$700(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 261
    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->getVisibilityString(I)Ljava/lang/String;
    invoke-static {v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$700(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$2;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # getter for: Lcom/upsight/mediation/mraid/MRAIDView;->isInterstitial:Z
    invoke-static {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->access$400(Lcom/upsight/mediation/mraid/MRAIDView;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 263
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDView$2;->this$0:Lcom/upsight/mediation/mraid/MRAIDView;

    # invokes: Lcom/upsight/mediation/mraid/MRAIDView;->setViewable(I)V
    invoke-static {v1, v0}, Lcom/upsight/mediation/mraid/MRAIDView;->access$800(Lcom/upsight/mediation/mraid/MRAIDView;I)V

    .line 265
    :cond_44
    return-void
.end method
