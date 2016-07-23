.class Lcom/upsight/android/analytics/internal/dispatcher/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/Config$1;,
        Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;
    }
.end annotation


# instance fields
.field private mIdentifierConfig:Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

.field private mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;


# direct methods
.method private constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;->mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    .line 63
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;->mIdentifierConfig:Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;->access$200(Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mIdentifierConfig:Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;Lcom/upsight/android/analytics/internal/dispatcher/Config$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;
    .param p2, "x1"    # Lcom/upsight/android/analytics/internal/dispatcher/Config$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Config;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    if-ne p0, p1, :cond_5

    .line 101
    :cond_4
    :goto_4
    return v1

    .line 92
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 94
    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/Config;

    .line 96
    .local v0, "config":Lcom/upsight/android/analytics/internal/dispatcher/Config;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mIdentifierConfig:Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mIdentifierConfig:Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    iget-object v4, v0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mIdentifierConfig:Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    invoke-virtual {v3, v4}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    .line 97
    goto :goto_4

    .line 96
    :cond_26
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mIdentifierConfig:Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    if-nez v3, :cond_24

    .line 98
    :cond_2a
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    iget-object v4, v0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    invoke-virtual {v3, v4}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_38
    move v1, v2

    .line 99
    goto :goto_4

    .line 98
    :cond_3a
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    if-eqz v3, :cond_4

    goto :goto_38
.end method

.method public getIdentifierConfig()Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mIdentifierConfig:Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    return-object v0
.end method

.method public getRoutingConfig()Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 107
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mIdentifierConfig:Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    if-eqz v3, :cond_17

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mIdentifierConfig:Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->hashCode()I

    move-result v1

    :cond_17
    add-int v0, v2, v1

    .line 108
    return v0

    .end local v0    # "result":I
    :cond_1a
    move v0, v1

    .line 106
    goto :goto_b
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Config;->mRoutingConfig:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
