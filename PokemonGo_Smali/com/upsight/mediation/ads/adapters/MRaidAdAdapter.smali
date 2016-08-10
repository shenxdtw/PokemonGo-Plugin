.class public Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;
.super Lcom/upsight/mediation/ads/adapters/NetworkWrapperFuseInternal;
.source "MRaidAdAdapter.java"

# interfaces
.implements Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;
.implements Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;


# static fields
.field private static final DISPLAY_MRAID_ACTIVITY_REQUEST_CODE:I = 0x0

.field public static final NAME:Ljava/lang/String; = "MRAID"

.field private static final TAG:Ljava/lang/String; = "MRaidAdAdapter"

.field static mRaidRegistry:Lcom/upsight/mediation/ads/adapters/MRaidRegistry;


# instance fields
.field private MRaidActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/upsight/mediation/ads/adapters/MRaidActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected activity:Landroid/app/Activity;

.field protected backgroundColor:I

.field baseUrl:Ljava/lang/String;

.field protected clickBeacon:Ljava/lang/String;

.field private closeButtonDelay:I

.field protected hasReportedClose:Z

.field protected htmlBody:Ljava/lang/String;

.field protected impressionBeacon:Ljava/lang/String;

.field protected interstitial:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

.field private isRewarded:Z

.field protected loaded:Z

.field private name:Ljava/lang/String;

.field protected registryId:I

.field private returnToInterstitial:Z

.field private rewardTimer:I

.field protected rotateMode:I

.field protected shouldPreload:Z

.field private startDisplayTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/upsight/mediation/ads/adapters/MRaidRegistry;

    invoke-direct {v0}, Lcom/upsight/mediation/ads/adapters/MRaidRegistry;-><init>()V

    sput-object v0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->mRaidRegistry:Lcom/upsight/mediation/ads/adapters/MRaidRegistry;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapperFuseInternal;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->loaded:Z

    .line 39
    iput-boolean v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->hasReportedClose:Z

    return-void
.end method

.method private preloadInterstitial()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 104
    iput-boolean v7, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->loaded:Z

    .line 105
    new-instance v0, Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    iget-object v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->baseUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->htmlBody:Ljava/lang/String;

    iget v4, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->backgroundColor:I

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "calendar"

    aput-object v6, v5, v7

    const/4 v6, 0x1

    const-string v7, "inlineVideo"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "storePicture"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "sms"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "tel"

    aput-object v7, v5, v6

    move-object v6, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/upsight/mediation/mraid/MRAIDInterstitial;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lcom/upsight/mediation/mraid/MRAIDInterstitialListener;Lcom/upsight/mediation/mraid/MRAIDNativeFeatureListener;)V

    iput-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->interstitial:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .line 112
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->interstitial:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    iget v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->rotateMode:I

    invoke-virtual {v0, v1}, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->setOrientationConfig(I)V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->htmlBody:Ljava/lang/String;

    .line 114
    return-void
.end method


# virtual methods
.method public displayAd()V
    .registers 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->isAdAvailable()Z

    move-result v0

    if-nez v0, :cond_a

    .line 130
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onAdFailedToDisplay()V

    .line 139
    :goto_9
    return-void

    .line 134
    :cond_a
    iget-boolean v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->shouldPreload:Z

    if-eqz v0, :cond_12

    .line 135
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->displayInterstitial()V

    goto :goto_9

    .line 137
    :cond_12
    invoke-direct {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->preloadInterstitial()V

    goto :goto_9
.end method

.method displayInterstitial()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 142
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->activity:Landroid/app/Activity;

    const-class v2, Lcom/upsight/mediation/ads/adapters/MRaidActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "registryId"

    iget v2, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->registryId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 144
    const-string v1, "rotate"

    iget v2, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->rotateMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 147
    iput-boolean v3, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->hasReportedClose:Z

    .line 148
    iput-boolean v3, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->loaded:Z

    .line 149
    return-void
.end method

.method public getInterstitial()Lcom/upsight/mediation/mraid/MRAIDInterstitial;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->interstitial:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    return-object v0
.end method

.method public getMRaidActivity()Lcom/upsight/mediation/ads/adapters/MRaidActivity;
    .registers 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->MRaidActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    .line 293
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->MRaidActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/mediation/ads/adapters/MRaidActivity;

    .line 295
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->name:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MRAID"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->getID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->name:Ljava/lang/String;

    .line 62
    :cond_1f
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .registers 2

    .prologue
    .line 53
    sget-object v0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->mRaidRegistry:Lcom/upsight/mediation/ads/adapters/MRaidRegistry;

    invoke-virtual {v0, p0}, Lcom/upsight/mediation/ads/adapters/MRaidRegistry;->register(Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;)I

    move-result v0

    iput v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->registryId:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->baseUrl:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public isAdAvailable()Z
    .registers 3

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->loaded:Z

    .line 119
    .local v0, "isAvailable":Z
    iget-boolean v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->shouldPreload:Z

    if-eqz v1, :cond_13

    .line 120
    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->interstitial:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->interstitial:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    iget-boolean v1, v1, Lcom/upsight/mediation/mraid/MRAIDInterstitial;->isReady:Z

    if-eqz v1, :cond_14

    const/4 v0, 0x1

    .line 123
    :cond_13
    :goto_13
    return v0

    .line 120
    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public isDisplaying()Z
    .registers 3

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->getMRaidActivity()Lcom/upsight/mediation/ads/adapters/MRaidActivity;

    move-result-object v0

    .line 301
    .local v0, "displayedActivity":Lcom/upsight/mediation/ads/adapters/MRaidActivity;
    if-eqz v0, :cond_9

    .line 302
    iget-boolean v1, v0, Lcom/upsight/mediation/ads/adapters/MRaidActivity;->isVisible:Z

    .line 304
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public loadAd(Landroid/app/Activity;Ljava/util/HashMap;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
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

    .prologue
    .line 68
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "isRewarded"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->isRewarded:Z

    .line 69
    iput-object p1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->activity:Landroid/app/Activity;

    .line 70
    const-string v1, "script"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->htmlBody:Ljava/lang/String;

    .line 71
    iget-object v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->htmlBody:Ljava/lang/String;

    invoke-static {v1}, Lcom/upsight/mediation/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 72
    sget-object v1, Lcom/upsight/mediation/ads/model/AdapterLoadError;->INVALID_PARAMETERS:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    invoke-virtual {p0, v1}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onAdFailedToLoad(Lcom/upsight/mediation/ads/model/AdapterLoadError;)V

    .line 98
    :goto_27
    return-void

    .line 76
    :cond_28
    const-string v1, "beacon-click"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->clickBeacon:Ljava/lang/String;

    .line 77
    const-string v1, "beacon-impression"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->impressionBeacon:Ljava/lang/String;

    .line 78
    const-string v1, "baseUrl"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->baseUrl:Ljava/lang/String;

    .line 79
    const-string v1, "shouldPreload"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->shouldPreload:Z

    .line 80
    const-string v1, "rewardTimer"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->returnToInterstitial:Z

    .line 82
    :try_start_62
    const-string v1, "backgroundColor"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->backgroundColor:I

    .line 83
    const-string v1, "rotateMode"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->rotateMode:I

    .line 84
    const-string v1, "rewardTimer"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->rewardTimer:I

    .line 85
    const-string v1, "rewardTimer"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->closeButtonDelay:I
    :try_end_9a
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_9a} :catch_a2

    .line 91
    iget-boolean v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->shouldPreload:Z

    if-eqz v1, :cond_aa

    .line 92
    invoke-direct {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->preloadInterstitial()V

    goto :goto_27

    .line 86
    :catch_a2
    move-exception v0

    .line 87
    .local v0, "ex":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/upsight/mediation/ads/model/AdapterLoadError;->INVALID_PARAMETERS:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    invoke-virtual {p0, v1}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onAdFailedToLoad(Lcom/upsight/mediation/ads/model/AdapterLoadError;)V

    goto/16 :goto_27

    .line 94
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_aa
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->loaded:Z

    .line 95
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onAdLoaded()V

    goto/16 :goto_27
.end method

.method public mraidInterstitialAcceptPressed(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 2
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 206
    return-void
.end method

.method public mraidInterstitialFailedToLoad(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 4
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 199
    const-string v0, "MRaidAdAdapter"

    const-string v1, "MRAID Ad Failed to Load"

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_ADAPTER_ERROR:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onAdFailedToLoad(Lcom/upsight/mediation/ads/model/AdapterLoadError;)V

    .line 201
    return-void
.end method

.method public mraidInterstitialFailedToShow()V
    .registers 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onAdFailedToDisplay()V

    .line 311
    return-void
.end method

.method public mraidInterstitialHide(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 10
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    const/4 v1, 0x1

    .line 178
    const-string v4, "MRaidAdAdapter"

    const-string v5, "MRAID Ad Hidden"

    invoke-static {v4, v5}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-boolean v4, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->hasReportedClose:Z

    if-nez v4, :cond_3a

    .line 180
    iput-boolean v1, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->hasReportedClose:Z

    .line 181
    iget-boolean v4, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->isRewarded:Z

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->startDisplayTime:Ljava/util/Date;

    if-eqz v4, :cond_37

    .line 182
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->startDisplayTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 183
    .local v2, "duration":J
    iget v4, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->rewardTimer:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_44

    iget v4, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->rewardTimer:I

    if-lez v4, :cond_44

    .line 184
    .local v1, "displayedLongEnoughForReward":Z
    :goto_32
    if-eqz v1, :cond_37

    .line 185
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onRewardedVideoCompleted()V

    .line 188
    .end local v1    # "displayedLongEnoughForReward":Z
    .end local v2    # "duration":J
    :cond_37
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onAdClosed()V

    .line 191
    :cond_3a
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->getMRaidActivity()Lcom/upsight/mediation/ads/adapters/MRaidActivity;

    move-result-object v0

    .line 192
    .local v0, "displayedActivity":Lcom/upsight/mediation/ads/adapters/MRaidActivity;
    if-eqz v0, :cond_43

    .line 193
    invoke-virtual {v0}, Lcom/upsight/mediation/ads/adapters/MRaidActivity;->finish()V

    .line 195
    :cond_43
    return-void

    .line 183
    .end local v0    # "displayedActivity":Lcom/upsight/mediation/ads/adapters/MRaidActivity;
    .restart local v2    # "duration":J
    :cond_44
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public mraidInterstitialLoaded(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 4
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->shouldPreload:Z

    if-eqz v0, :cond_12

    .line 156
    const-string v0, "MRaidAdAdapter"

    const-string v1, "MRAID Ad Loaded"

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->loaded:Z

    .line 158
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onAdLoaded()V

    .line 162
    :goto_11
    return-void

    .line 160
    :cond_12
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->displayInterstitial()V

    goto :goto_11
.end method

.method public mraidInterstitialRejectPressed(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 2
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 211
    return-void
.end method

.method public mraidInterstitialReplayVideoPressed(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 2
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 216
    return-void
.end method

.method public mraidInterstitialShow(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V
    .registers 4
    .param p1, "mraidInterstitial"    # Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    .prologue
    .line 166
    const-string v0, "MRaidAdAdapter"

    const-string v1, "MRAID Ad Displayed"

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onAdDisplayed()V

    .line 168
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->impressionBeacon:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 169
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->impressionBeacon:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->sendRequestToBeacon(Ljava/lang/String;)V

    .line 171
    :cond_13
    iget-boolean v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->isRewarded:Z

    if-eqz v0, :cond_1e

    .line 172
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->startDisplayTime:Ljava/util/Date;

    .line 174
    :cond_1e
    return-void
.end method

.method public mraidNativeFeatureCallTel(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v0, "MRaidAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID Ad Wants to make phone call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public mraidNativeFeatureCreateCalendarEvent(Ljava/lang/String;)V
    .registers 5
    .param p1, "eventJSON"    # Ljava/lang/String;

    .prologue
    .line 228
    const-string v0, "MRaidAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID Ad Wants to create calendar event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public mraidNativeFeatureOpenBrowser(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 247
    const-string v0, "MRaidAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Wants to display browser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->clickBeacon:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 249
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->clickBeacon:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->sendRequestToBeacon(Ljava/lang/String;)V

    .line 252
    :cond_21
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onAdClicked()V

    .line 253
    invoke-virtual {p0, p1}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onOpenMRaidUrl(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->interstitial:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->mraidInterstitialHide(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V

    .line 255
    return-void
.end method

.method public mraidNativeFeatureOpenMarket(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 259
    const-string v0, "MRaidAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Wants to display market: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->clickBeacon:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 261
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->clickBeacon:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->sendRequestToBeacon(Ljava/lang/String;)V

    .line 263
    :cond_21
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onAdClicked()V

    .line 264
    invoke-virtual {p0, p1}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onOpenMRaidUrl(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->interstitial:Lcom/upsight/mediation/mraid/MRAIDInterstitial;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->mraidInterstitialHide(Lcom/upsight/mediation/mraid/MRAIDInterstitial;)V

    .line 266
    return-void
.end method

.method public mraidNativeFeaturePlayVideo(Ljava/lang/String;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 234
    const-string v2, "MRaidAdAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MRAID Ad Wants to play video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->getMRaidActivity()Lcom/upsight/mediation/ads/adapters/MRaidActivity;

    move-result-object v0

    .line 236
    .local v0, "displayedActivity":Lcom/upsight/mediation/ads/adapters/MRaidActivity;
    if-eqz v0, :cond_3c

    .line 237
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/upsight/mediation/ads/adapters/MRaidVideoActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v2, "cb_ms"

    iget v3, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->closeButtonDelay:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    const-string v2, "rti"

    iget-boolean v3, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->returnToInterstitial:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/upsight/mediation/ads/adapters/MRaidActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 243
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3c
    return-void
.end method

.method public mraidNativeFeatureSendSms(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 275
    const-string v0, "MRaidAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Wants to send SMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public mraidNativeFeatureStorePicture(Ljava/lang/String;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 270
    const-string v0, "MRaidAdAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad Wants to store a picture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public mraidRewardComplete()V
    .registers 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->onRewardedVideoCompleted()V

    .line 281
    return-void
.end method

.method public setMRaidActivity(Lcom/upsight/mediation/ads/adapters/MRaidActivity;)V
    .registers 3
    .param p1, "mRaidActivity"    # Lcom/upsight/mediation/ads/adapters/MRaidActivity;

    .prologue
    .line 288
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->MRaidActivity:Ljava/lang/ref/WeakReference;

    .line 289
    return-void
.end method

.method public verifyParameters(Ljava/util/HashMap;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "script"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/upsight/mediation/util/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
