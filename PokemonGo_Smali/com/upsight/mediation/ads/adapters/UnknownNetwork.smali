.class public Lcom/upsight/mediation/ads/adapters/UnknownNetwork;
.super Lcom/upsight/mediation/ads/adapters/NetworkWrapper;
.source "UnknownNetwork.java"


# static fields
.field private static final UNKNOWN:Ljava/lang/String; = "Unknown"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/upsight/mediation/ads/adapters/NetworkWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public displayAd()V
    .registers 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/upsight/mediation/ads/adapters/UnknownNetwork;->onAdFailedToDisplay()V

    .line 39
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    const-string v0, "Unknown"

    return-object v0
.end method

.method public init()V
    .registers 1

    .prologue
    .line 19
    return-void
.end method

.method public isAdAvailable()Z
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public loadAd(Landroid/app/Activity;Ljava/util/HashMap;)V
    .registers 4
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
    .line 33
    .local p2, "parameters":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_UNRECOGNIZED:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    invoke-virtual {p0, v0}, Lcom/upsight/mediation/ads/adapters/UnknownNetwork;->onAdFailedToLoad(Lcom/upsight/mediation/ads/model/AdapterLoadError;)V

    .line 34
    return-void
.end method
