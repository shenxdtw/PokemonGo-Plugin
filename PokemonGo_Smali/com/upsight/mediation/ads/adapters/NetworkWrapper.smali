.class public abstract Lcom/upsight/mediation/ads/adapters/NetworkWrapper;
.super Ljava/lang/Object;
.source "NetworkWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;
    }
.end annotation


# static fields
.field public static final BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field public static final BASE_URL:Ljava/lang/String; = "baseUrl"

.field public static final CLOSE_BUTTON_DELAY:Ljava/lang/String; = "closeButtonDelay"

.field public static final FUSE_SDK_VERSION:Ljava/lang/String; = "fuse_sdk_version"

.field public static final IS_REWARDED:Ljava/lang/String; = "isRewarded"

.field public static final IS_VIDEO:Ljava/lang/String; = "isVideo"

.field public static final MAX_FILE_SIZE:Ljava/lang/String; = "maxFileSize"

.field public static final REWARD_TIMER:Ljava/lang/String; = "rewardTimer"

.field public static final ROTATE_MODE:Ljava/lang/String; = "rotateMode"

.field public static final SHOULD_PRELOAD:Ljava/lang/String; = "shouldPreload"

.field public static final SHOULD_VALIDATE_SCHEMA:Ljava/lang/String; = "shouldValidateSchema"

.field public static final TIMEOUT:Ljava/lang/String; = "timeout"

.field public static final VAST_CACHE_TO:Ljava/lang/String; = "vast_cache_to"


# instance fields
.field listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract displayAd()V
.end method

.method public getID()I
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->getID()I

    move-result v0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract init()V
.end method

.method public abstract isAdAvailable()Z
.end method

.method protected isLandscape(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected isPortrait(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 139
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v1, v2, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method protected isTablet()Z
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public abstract loadAd(Landroid/app/Activity;Ljava/util/HashMap;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/HashMap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/upsight/mediation/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected logError(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/upsight/mediation/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method protected logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/upsight/mediation/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method protected final onAdClicked()V
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    if-eqz v0, :cond_9

    .line 110
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onAdClicked()V

    .line 112
    :cond_9
    return-void
.end method

.method protected final onAdClosed()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    if-eqz v0, :cond_9

    .line 128
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onAdClosed()V

    .line 130
    :cond_9
    return-void
.end method

.method protected final onAdCompleted()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    if-eqz v0, :cond_9

    .line 116
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onAdCompleted()V

    .line 118
    :cond_9
    return-void
.end method

.method protected final onAdDisplayed()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    if-eqz v0, :cond_9

    .line 92
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onAdDisplayed()V

    .line 94
    :cond_9
    return-void
.end method

.method protected final onAdFailedToDisplay()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onAdFailedToDisplay()V

    .line 100
    :cond_9
    return-void
.end method

.method protected final onAdFailedToLoad(Lcom/upsight/mediation/ads/model/AdapterLoadError;)V
    .registers 3
    .param p1, "error"    # Lcom/upsight/mediation/ads/model/AdapterLoadError;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    if-eqz v0, :cond_9

    .line 86
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0, p1}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onAdFailedToLoad(Lcom/upsight/mediation/ads/model/AdapterLoadError;)V

    .line 88
    :cond_9
    return-void
.end method

.method protected final onAdLoaded()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    if-eqz v0, :cond_9

    .line 80
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onAdLoaded()V

    .line 82
    :cond_9
    return-void
.end method

.method protected final onAdSkipped()V
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    if-eqz v0, :cond_9

    .line 104
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onAdSkipped()V

    .line 106
    :cond_9
    return-void
.end method

.method protected final onRewardedVideoCompleted()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;->onRewardedVideoCompleted()V

    .line 124
    :cond_9
    return-void
.end method

.method public resumedAfterAdDisplay()V
    .registers 1

    .prologue
    .line 74
    return-void
.end method

.method public setListener(Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;)V
    .registers 2
    .param p1, "listener"    # Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;->listener:Lcom/upsight/mediation/ads/adapters/NetworkWrapper$Listener;

    .line 39
    return-void
.end method
