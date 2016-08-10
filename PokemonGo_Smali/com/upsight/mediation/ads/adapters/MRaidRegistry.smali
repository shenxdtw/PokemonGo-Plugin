.class public Lcom/upsight/mediation/ads/adapters/MRaidRegistry;
.super Ljava/lang/Object;
.source "MRaidRegistry.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MRaidRegistry"


# instance fields
.field public registeredProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidRegistry;->registeredProviders:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getProvider(I)Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidRegistry;->registeredProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;

    return-object v0
.end method

.method public register(Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;)I
    .registers 4
    .param p1, "provider"    # Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidRegistry;->registeredProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 18
    const-string v0, "MRaidRegistry"

    const-string v1, "Trying to register provider, already registered"

    invoke-static {v0, v1}, Lcom/upsight/mediation/log/FuseLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_f
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidRegistry;->registeredProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/upsight/mediation/ads/adapters/MRaidRegistry;->registeredProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
