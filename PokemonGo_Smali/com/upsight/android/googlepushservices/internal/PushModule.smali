.class public final Lcom/upsight/android/googlepushservices/internal/PushModule;
.super Ljava/lang/Object;
.source "PushModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# instance fields
.field private final mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method public constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .registers 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 26
    return-void
.end method


# virtual methods
.method public provideGooglePushServicesApi(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;
    .registers 2
    .param p1, "googlePushServices"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 63
    return-object p1
.end method

.method public providePushConfigManager(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/googlepushservices/internal/PushConfigManager;
    .registers 3
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    invoke-direct {v0, p1}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;-><init>(Lcom/upsight/android/UpsightContext;)V

    return-object v0
.end method

.method provideSessionManager(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/internal/session/SessionManager;
    .registers 4
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 37
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p1, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 38
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_15

    .line 39
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;

    invoke-interface {v1}, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;->sessionManager()Lcom/upsight/android/analytics/internal/session/SessionManager;

    move-result-object v1

    .line 42
    :goto_14
    return-object v1

    :cond_15
    new-instance v1, Lcom/upsight/android/googlepushservices/internal/PushModule$1;

    invoke-direct {v1, p0}, Lcom/upsight/android/googlepushservices/internal/PushModule$1;-><init>(Lcom/upsight/android/googlepushservices/internal/PushModule;)V

    goto :goto_14
.end method

.method provideUpsightContext()Lcom/upsight/android/UpsightContext;
    .registers 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/PushModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method
