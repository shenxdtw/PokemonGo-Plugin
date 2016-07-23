.class public Lcom/upsight/android/UpsightContext;
.super Landroid/content/ContextWrapper;
.source "UpsightContext.java"


# instance fields
.field private final mAppToken:Ljava/lang/String;

.field private mCoreComponent:Lcom/upsight/android/UpsightCoreComponent;

.field private final mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private final mExtensionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/UpsightExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private final mPublicKey:Ljava/lang/String;

.field private final mSdkPlugin:Ljava/lang/String;

.field private final mSid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/logger/UpsightLogger;)V
    .registers 9
    .param p1, "baseContext"    # Landroid/content/Context;
    .param p2, "sdkPlugin"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "com.upsight.sdk_plugin"
        .end annotation
    .end param
    .param p3, "appToken"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "com.upsight.app_token"
        .end annotation
    .end param
    .param p4, "publicKey"    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "com.upsight.public_key"
        .end annotation
    .end param
    .param p5, "sid"    # Ljava/lang/String;
    .param p6, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p7, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/UpsightContext;->mExtensionsMap:Ljava/util/Map;

    .line 62
    iput-object p2, p0, Lcom/upsight/android/UpsightContext;->mSdkPlugin:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/upsight/android/UpsightContext;->mAppToken:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/upsight/android/UpsightContext;->mPublicKey:Ljava/lang/String;

    .line 65
    iput-object p5, p0, Lcom/upsight/android/UpsightContext;->mSid:Ljava/lang/String;

    .line 66
    iput-object p6, p0, Lcom/upsight/android/UpsightContext;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 67
    iput-object p7, p0, Lcom/upsight/android/UpsightContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 68
    return-void
.end method


# virtual methods
.method public getApplicationToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mAppToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mCoreComponent:Lcom/upsight/android/UpsightCoreComponent;

    return-object v0
.end method

.method public getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method public getLogger()Lcom/upsight/android/logger/UpsightLogger;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkBuild()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    sget v0, Lcom/upsight/android/R$string;->upsight_sdk_build:I

    invoke-virtual {p0, v0}, Lcom/upsight/android/UpsightContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkPlugin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mSdkPlugin:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    sget v0, Lcom/upsight/android/R$string;->upsight_sdk_version:I

    invoke-virtual {p0, v0}, Lcom/upsight/android/UpsightContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mSid:Ljava/lang/String;

    return-object v0
.end method

.method public getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;
    .registers 3
    .param p1, "extensionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/upsight/android/UpsightExtension",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mExtensionsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightExtension;

    return-object v0
.end method

.method onCreate(Lcom/upsight/android/UpsightCoreComponent;Ljava/util/Map;)V
    .registers 9
    .param p1, "coreComponent"    # Lcom/upsight/android/UpsightCoreComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightCoreComponent;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/UpsightExtension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/upsight/android/UpsightExtension;>;"
    iput-object p1, p0, Lcom/upsight/android/UpsightContext;->mCoreComponent:Lcom/upsight/android/UpsightCoreComponent;

    .line 80
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 82
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/upsight/android/UpsightExtension;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightExtension;

    .line 83
    .local v1, "extension":Lcom/upsight/android/UpsightExtension;
    invoke-interface {p1}, Lcom/upsight/android/UpsightCoreComponent;->upsightContext()Lcom/upsight/android/UpsightContext;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/upsight/android/UpsightExtension;->onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v2

    .line 84
    .local v2, "extensionComponent":Lcom/upsight/android/UpsightExtension$BaseComponent;
    invoke-virtual {v1, v2}, Lcom/upsight/android/UpsightExtension;->setComponent(Lcom/upsight/android/UpsightExtension$BaseComponent;)V

    .line 87
    iget-object v4, p0, Lcom/upsight/android/UpsightContext;->mExtensionsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 91
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/upsight/android/UpsightExtension;>;"
    .end local v1    # "extension":Lcom/upsight/android/UpsightExtension;
    .end local v2    # "extensionComponent":Lcom/upsight/android/UpsightExtension$BaseComponent;
    :cond_31
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightExtension;

    .line 92
    .restart local v1    # "extension":Lcom/upsight/android/UpsightExtension;
    invoke-virtual {v1}, Lcom/upsight/android/UpsightExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/upsight/android/UpsightExtension$BaseComponent;->inject(Lcom/upsight/android/UpsightExtension;)V

    goto :goto_39

    .line 96
    .end local v1    # "extension":Lcom/upsight/android/UpsightExtension;
    :cond_4d
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightExtension;

    .line 97
    .restart local v1    # "extension":Lcom/upsight/android/UpsightExtension;
    invoke-virtual {v1, p0}, Lcom/upsight/android/UpsightExtension;->onCreate(Lcom/upsight/android/UpsightContext;)V

    goto :goto_55

    .line 101
    .end local v1    # "extension":Lcom/upsight/android/UpsightExtension;
    :cond_65
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightExtension;

    .line 102
    .restart local v1    # "extension":Lcom/upsight/android/UpsightExtension;
    invoke-virtual {v1, p0}, Lcom/upsight/android/UpsightExtension;->onPostCreate(Lcom/upsight/android/UpsightContext;)V

    goto :goto_6d

    .line 104
    .end local v1    # "extension":Lcom/upsight/android/UpsightExtension;
    :cond_7d
    return-void
.end method
