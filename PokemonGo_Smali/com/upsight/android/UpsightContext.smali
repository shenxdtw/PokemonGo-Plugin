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
    .line 63
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/UpsightContext;->mExtensionsMap:Ljava/util/Map;

    .line 65
    iput-object p2, p0, Lcom/upsight/android/UpsightContext;->mSdkPlugin:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/upsight/android/UpsightContext;->mAppToken:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/upsight/android/UpsightContext;->mPublicKey:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/upsight/android/UpsightContext;->mSid:Ljava/lang/String;

    .line 69
    iput-object p6, p0, Lcom/upsight/android/UpsightContext;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 70
    iput-object p7, p0, Lcom/upsight/android/UpsightContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 71
    return-void
.end method


# virtual methods
.method public getApplicationToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mAppToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mCoreComponent:Lcom/upsight/android/UpsightCoreComponent;

    return-object v0
.end method

.method public getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method public getLogger()Lcom/upsight/android/logger/UpsightLogger;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkBuild()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    sget v0, Lcom/upsight/android/R$string;->upsight_sdk_build:I

    invoke-virtual {p0, v0}, Lcom/upsight/android/UpsightContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkPlugin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mSdkPlugin:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    sget v0, Lcom/upsight/android/R$string;->upsight_sdk_version:I

    invoke-virtual {p0, v0}, Lcom/upsight/android/UpsightContext;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 173
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/upsight/android/UpsightContext;->mExtensionsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightExtension;

    return-object v0
.end method

.method onCreate(Lcom/upsight/android/UpsightCoreComponent;Ljava/util/Map;)V
    .registers 10
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
    .line 81
    .local p2, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/upsight/android/UpsightExtension;>;"
    iput-object p1, p0, Lcom/upsight/android/UpsightContext;->mCoreComponent:Lcom/upsight/android/UpsightCoreComponent;

    .line 84
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p0}, Lcom/upsight/android/internal/persistence/Content;->getAuthoritytUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 85
    .local v0, "client":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_3f

    .line 86
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verify that the Upsight content provider is configured correctly in the Android Manifest:\n        <provider\n            android:name=\"com.upsight.android.internal.persistence.ContentProvider\"\n            android:authorities=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 89
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".upsight\"\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "            android:enabled=\"true\"\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "            android:exported=\"false\" />"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 93
    :cond_3f
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 96
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 98
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/upsight/android/UpsightExtension;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/UpsightExtension;

    .line 99
    .local v2, "extension":Lcom/upsight/android/UpsightExtension;
    invoke-interface {p1}, Lcom/upsight/android/UpsightCoreComponent;->upsightContext()Lcom/upsight/android/UpsightContext;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/upsight/android/UpsightExtension;->onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v3

    .line 100
    .local v3, "extensionComponent":Lcom/upsight/android/UpsightExtension$BaseComponent;
    invoke-virtual {v2, v3}, Lcom/upsight/android/UpsightExtension;->setComponent(Lcom/upsight/android/UpsightExtension$BaseComponent;)V

    .line 103
    iget-object v5, p0, Lcom/upsight/android/UpsightContext;->mExtensionsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 107
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/upsight/android/UpsightExtension;>;"
    .end local v2    # "extension":Lcom/upsight/android/UpsightExtension;
    .end local v3    # "extensionComponent":Lcom/upsight/android/UpsightExtension$BaseComponent;
    :cond_71
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_79
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/UpsightExtension;

    .line 108
    .restart local v2    # "extension":Lcom/upsight/android/UpsightExtension;
    invoke-virtual {v2}, Lcom/upsight/android/UpsightExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/upsight/android/UpsightExtension$BaseComponent;->inject(Lcom/upsight/android/UpsightExtension;)V

    goto :goto_79

    .line 112
    .end local v2    # "extension":Lcom/upsight/android/UpsightExtension;
    :cond_8d
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_95
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/UpsightExtension;

    .line 113
    .restart local v2    # "extension":Lcom/upsight/android/UpsightExtension;
    invoke-virtual {v2, p0}, Lcom/upsight/android/UpsightExtension;->onCreate(Lcom/upsight/android/UpsightContext;)V

    goto :goto_95

    .line 117
    .end local v2    # "extension":Lcom/upsight/android/UpsightExtension;
    :cond_a5
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_ad
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/UpsightExtension;

    .line 118
    .restart local v2    # "extension":Lcom/upsight/android/UpsightExtension;
    invoke-virtual {v2, p0}, Lcom/upsight/android/UpsightExtension;->onPostCreate(Lcom/upsight/android/UpsightContext;)V

    goto :goto_ad

    .line 120
    .end local v2    # "extension":Lcom/upsight/android/UpsightExtension;
    :cond_bd
    return-void
.end method
