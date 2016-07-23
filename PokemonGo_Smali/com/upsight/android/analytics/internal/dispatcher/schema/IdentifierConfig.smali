.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;
.super Ljava/lang/Object;
.source "IdentifierConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$1;,
        Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;
    }
.end annotation


# instance fields
.field private mIdentifierFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdentifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->identifiers:Ljava/util/Map;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifiers:Ljava/util/Map;

    .line 76
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->identifierFilters:Ljava/util/Map;
    invoke-static {p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->access$200(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifierFilters:Ljava/util/Map;

    .line 77
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;
    .param p2, "x1"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    if-ne p0, p1, :cond_5

    .line 106
    :cond_4
    :goto_4
    return v1

    .line 96
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

    .line 98
    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    .line 100
    .local v0, "that":Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifierFilters:Ljava/util/Map;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifierFilters:Ljava/util/Map;

    iget-object v4, v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifierFilters:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    .line 102
    goto :goto_4

    .line 100
    :cond_26
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifierFilters:Ljava/util/Map;

    if-nez v3, :cond_24

    .line 103
    :cond_2a
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifiers:Ljava/util/Map;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifiers:Ljava/util/Map;

    iget-object v4, v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifiers:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_38
    move v1, v2

    .line 104
    goto :goto_4

    .line 103
    :cond_3a
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifiers:Ljava/util/Map;

    if-eqz v3, :cond_4

    goto :goto_38
.end method

.method public getIdentifierFilters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifierFilters:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifiers()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifiers:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifiers:Ljava/util/Map;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifiers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v0

    .line 112
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifierFilters:Ljava/util/Map;

    if-eqz v3, :cond_17

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->mIdentifierFilters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    :cond_17
    add-int v0, v2, v1

    .line 113
    return v0

    .end local v0    # "result":I
    :cond_1a
    move v0, v1

    .line 111
    goto :goto_b
.end method
