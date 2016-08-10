.class public Lcom/upsight/mediation/mraid/MRAIDInterstitial;
.super Ljava/lang/Object;
.source "MRAIDInterstitial.java"

# interfaces
.implements Lcom/upsight/mediation/mraid/MRAIDViewListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MRAIDInterstitial"


# instance fields
.field private handler:Landroid/os/Handler;

.field public isReady:Z

.field private listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

.field public mraidView:Lcom/upsight/mediation/mraid/MRAIDView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "backgroundColor"    # I
    .param p5, "supportedNativeFeatures"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "listener"    # Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;
    .param p7, "nativeFeatureListener"    # Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p6, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->handler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/upsight/mediation/mraid/MRAIDView;

    const/4 v8, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p0

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/upsight/mediation/mraid/MRAIDView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/upsight/mediation/mraid/MRAIDViewListener;Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;Z)V

    iput-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->mraidView:Lcom/upsight/mediation/mraid/MRAIDView;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "supportedNativeFeatures"    # [Ljava/lang/String;
    .param p5, "listener"    # Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;
    .param p6, "nativeFeatureListener"    # Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;

    .prologue
    .line 25
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/upsight/mediation/mraid/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    return-object v0
.end method


# virtual methods
.method public injectJavaScript(Ljava/lang/String;)V
    .registers 3
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->mraidView:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-virtual {v0, p1}, Lcom/upsight/mediation/mraid/MRAIDView;->injectJavaScript(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public mraidReplayVideoPressed(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 3
    .param p1, "mraidView"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    if-eqz v0, :cond_9

    .line 128
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    invoke-interface {v0, p0}, Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;->mraidInterstitialReplayVideoPressed(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V

    .line 130
    :cond_9
    return-void
.end method

.method public mraidViewAcceptPressed(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 3
    .param p1, "mraidView"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    if-eqz v0, :cond_9

    .line 114
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    invoke-interface {v0, p0}, Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;->mraidInterstitialAcceptPressed(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V

    .line 116
    :cond_9
    return-void
.end method

.method public mraidViewClose(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 4
    .param p1, "mraidView"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 90
    const-string v0, "MRAIDInterstitial-MRAIDViewListener"

    const-string v1, "mraidViewClose"

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->isReady:Z

    .line 92
    const/4 p1, 0x0

    .line 93
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    if-eqz v0, :cond_14

    .line 94
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    invoke-interface {v0, p0}, Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;->mraidInterstitialHide(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V

    .line 96
    :cond_14
    return-void
.end method

.method public mraidViewExpand(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 4
    .param p1, "mraidView"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 82
    const-string v0, "MRAIDInterstitial-MRAIDViewListener"

    const-string v1, "mraidViewExpand"

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    if-eqz v0, :cond_10

    .line 84
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    invoke-interface {v0, p0}, Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;->mraidInterstitialShow(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V

    .line 86
    :cond_10
    return-void
.end method

.method public mraidViewFailedToLoad(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 3
    .param p1, "mraidView"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->isReady:Z

    .line 106
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    if-eqz v0, :cond_c

    .line 107
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    invoke-interface {v0, p0}, Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;->mraidInterstitialFailedToLoad(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V

    .line 109
    :cond_c
    return-void
.end method

.method public mraidViewLoaded(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 6
    .param p1, "mraidView"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 65
    const-string v0, "MRAIDInterstitial-MRAIDViewListener"

    const-string v1, "mraidViewLoaded"

    invoke-static {v0, v1}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->isReady:Z

    .line 67
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/upsight/mediation/mraid/MRAIDInterstitial$1;

    invoke-direct {v1, p0}, Lcom/upsight/mediation/mraid/MRAIDInterstitial$1;-><init>(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    return-void
.end method

.method public mraidViewRejectPressed(Lcom/upsight/mediation/mraid/MRAIDView;)V
    .registers 3
    .param p1, "mraidView"    # Lcom/upsight/mediation/mraid/MRAIDView;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->listener:Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;

    invoke-interface {v0, p0}, Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;->mraidInterstitialRejectPressed(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V

    .line 123
    :cond_9
    return-void
.end method

.method public mraidViewResize(Lcom/upsight/mediation/mraid/MRAIDView;IIII)Z
    .registers 7
    .param p1, "mraidView"    # Lcom/upsight/mediation/mraid/MRAIDView;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "offsetX"    # I
    .param p5, "offsetY"    # I

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public setOrientationConfig(I)V
    .registers 3
    .param p1, "rotateMode"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->mraidView:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-virtual {v0, p1}, Lcom/upsight/mediation/mraid/MRAIDView;->setOrientationConfig(I)V

    .line 134
    return-void
.end method

.method public show()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 44
    iget-boolean v1, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->isReady:Z

    if-nez v1, :cond_d

    .line 45
    const-string v1, "MRAIDInterstitial"

    const-string v2, "interstitial is not ready to show"

    invoke-static {v1, v2}, Lcom/upsight/mediation/mraid/internal/MRAIDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :goto_c
    return v0

    .line 48
    :cond_d
    iget-object v1, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->mraidView:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-virtual {v1}, Lcom/upsight/mediation/mraid/MRAIDView;->showAsInterstitial()V

    .line 49
    iput-boolean v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->isReady:Z

    .line 50
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public updateContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->mraidView:Lcom/upsight/mediation/mraid/MRAIDView;

    invoke-virtual {v0, p1}, Lcom/upsight/mediation/mraid/MRAIDView;->updateContext(Landroid/content/Context;)V

    .line 55
    return-void
.end method
