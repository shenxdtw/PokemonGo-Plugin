.class public Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;
.super Ljava/lang/Object;
.source "MRaidPostroll.java"

# interfaces
.implements Lcom/upsight/mediation/vast/Postroll/Postroll;
.implements Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;
.implements Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;


# static fields
.field private static final BASE_URL:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "MRaidPostroll"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mHtml:Ljava/lang/String;

.field private mInterstitial:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

.field private final mListener:Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;

.field private mReady:Z

.field private previousOrientation:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mReady:Z

    .line 30
    iput-object p1, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mActivity:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mHtml:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mListener:Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;

    .line 33
    return-void
.end method


# virtual methods
.method public hide()V
    .registers 1

    .prologue
    .line 60
    return-void
.end method

.method public init()V
    .registers 8

    .prologue
    .line 38
    iget-object v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mInterstitial:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    if-eqz v0, :cond_c

    .line 39
    const-string v0, "MRaidPostroll"

    const-string v1, "Tried to call init on already init\'d mraid postroll"

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_b
    return-void

    .line 42
    :cond_c
    new-instance v0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    iget-object v1, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v3, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mHtml:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/upsight/mediation/mraid/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;)V

    iput-object v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mInterstitial:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    goto :goto_b
.end method

.method public isReady()Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mReady:Z

    return v0
.end method

.method public mraidInterstitialAcceptPressed(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 2
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 86
    return-void
.end method

.method public mraidInterstitialFailedToLoad(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 2
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 82
    return-void
.end method

.method public mraidInterstitialHide(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 4
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->previousOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 76
    iget-object v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mListener:Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;->closeClicked()V

    .line 77
    return-void
.end method

.method public mraidInterstitialLoaded(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 3
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mReady:Z

    .line 66
    return-void
.end method

.method public mraidInterstitialRejectPressed(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 2
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 90
    return-void
.end method

.method public mraidInterstitialReplayVideoPressed(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 4
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->previousOrientation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 95
    iget-object v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mListener:Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;

    invoke-interface {v0}, Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;->replayedClicked()V

    .line 96
    return-void
.end method

.method public mraidInterstitialShow(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 2
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 71
    return-void
.end method

.method public mraidNativeFeatureCallTel(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    return-void
.end method

.method public mraidNativeFeatureCreateCalendarEvent(Ljava/lang/String;)V
    .registers 2
    .param p1, "eventJSON"    # Ljava/lang/String;

    .prologue
    .line 108
    return-void
.end method

.method public mraidNativeFeatureOpenBrowser(Ljava/lang/String;)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mListener:Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;

    if-eqz v0, :cond_f

    .line 118
    iget-object v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mListener:Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;->infoClicked(Z)V

    .line 119
    iget-object v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mListener:Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;

    invoke-interface {v0, p1}, Lcom/upsight/mediation/vast/Postroll/Postroll$Listener;->onOpenMRaidUrl(Ljava/lang/String;)V

    .line 121
    :cond_f
    return-void
.end method

.method public mraidNativeFeatureOpenMarket(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 136
    return-void
.end method

.method public mraidNativeFeaturePlayVideo(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    return-void
.end method

.method public mraidNativeFeatureSendSms(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    return-void
.end method

.method public mraidNativeFeatureStorePicture(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 126
    return-void
.end method

.method public mraidRewardComplete()V
    .registers 1

    .prologue
    .line 141
    return-void
.end method

.method public show(Landroid/view/ViewGroup;)V
    .registers 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->previousOrientation:I

    .line 53
    iget-object v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 54
    iget-object v0, p0, Lcom/upsight/mediation/vast/Postroll/MRaidPostroll;->mInterstitial:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    invoke-virtual {v0}, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->show()Z

    .line 55
    return-void
.end method
