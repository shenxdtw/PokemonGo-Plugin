.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;
.super Ljava/lang/Object;
.source "SchemaSelectorBuilder.java"


# instance fields
.field private final mDataProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/provider/UpsightDataProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .registers 4
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->mDataProviders:Ljava/util/Map;

    .line 41
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->registerDefaultDataProviders(Lcom/upsight/android/UpsightContext;)V

    .line 42
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->mDataProviders:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->mDefaultSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    .line 43
    return-void
.end method

.method private registerDefaultDataProviders(Lcom/upsight/android/UpsightContext;)V
    .registers 3
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 46
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/AppBlockProvider;

    invoke-direct {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/AppBlockProvider;-><init>(Lcom/upsight/android/UpsightContext;)V

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V

    .line 47
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/DeviceBlockProvider;

    invoke-direct {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/DeviceBlockProvider;-><init>(Lcom/upsight/android/UpsightContext;)V

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V

    .line 48
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/AndroidIDBlockProvider;

    invoke-direct {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/AndroidIDBlockProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V

    .line 49
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/ScreenBlockProvider;

    invoke-direct {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/ScreenBlockProvider;-><init>(Lcom/upsight/android/UpsightContext;)V

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V

    .line 50
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/SdkBlockProvider;

    invoke-direct {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SdkBlockProvider;-><init>(Lcom/upsight/android/UpsightContext;)V

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V

    .line 51
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/SidProvider;

    invoke-direct {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SidProvider;-><init>(Lcom/upsight/android/UpsightContext;)V

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V

    .line 52
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;

    invoke-direct {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/LocationBlockProvider;-><init>(Lcom/upsight/android/UpsightContext;)V

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V

    .line 53
    return-void
.end method


# virtual methods
.method public buildSelectorByName(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;)Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;
    .registers 8
    .param p1, "config"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;",
            ")",
            "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->getIdentifiers()Ljava/util/Map;

    move-result-object v1

    .line 81
    .local v1, "identifiers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 82
    .local v3, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->getIdentifiers()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 84
    .local v0, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_15

    .line 85
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->mDefaultSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    invoke-static {v2, v5, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->from(Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;Ljava/util/Set;)Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    move-result-object v5

    invoke-interface {v3, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 88
    .end local v0    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "name":Ljava/lang/String;
    :cond_37
    new-instance v4, Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector;

    invoke-direct {v4, v3}, Lcom/upsight/android/analytics/internal/dispatcher/util/ByNameSelector;-><init>(Ljava/util/Map;)V

    return-object v4
.end method

.method public buildSelectorByType(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;)Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;
    .registers 9
    .param p1, "config"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;",
            ")",
            "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->getIdentifiers()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 102
    .local v3, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;>;"
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->getIdentifierFilters()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_19
    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 103
    .local v1, "filter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;->getIdentifiers()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 106
    .local v0, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_19

    .line 107
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->mDefaultSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    invoke-static {v4, v6, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->from(Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;Ljava/util/Set;)Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    move-result-object v6

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 110
    .end local v0    # "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "filter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_47
    new-instance v5, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->mDefaultSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    invoke-direct {v5, v3, v6}, Lcom/upsight/android/analytics/internal/dispatcher/util/ByFilterSelector;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v5
.end method

.method public registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V
    .registers 10
    .param p1, "provider"    # Lcom/upsight/android/analytics/provider/UpsightDataProvider;

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;->availableKeys()Ljava/util/Set;

    move-result-object v1

    .line 61
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->mDataProviders:Ljava/util/Map;

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/provider/UpsightDataProvider;

    .line 63
    .local v2, "other":Lcom/upsight/android/analytics/provider/UpsightDataProvider;
    if-eqz v2, :cond_8

    .line 64
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Both %s and %s provide values for key."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 65
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 64
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 69
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "other":Lcom/upsight/android/analytics/provider/UpsightDataProvider;
    :cond_43
    return-void
.end method
