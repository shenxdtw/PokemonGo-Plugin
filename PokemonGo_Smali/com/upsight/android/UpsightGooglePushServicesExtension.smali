.class public Lcom/upsight/android/UpsightGooglePushServicesExtension;
.super Lcom/upsight/android/UpsightExtension;
.source "UpsightGooglePushServicesExtension.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/upsight/android/UpsightExtension",
        "<",
        "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;",
        "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;",
        ">;"
    }
.end annotation


# static fields
.field public static final EXTENSION_NAME:Ljava/lang/String; = "com.upsight.extension.googlepushservices"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mPushConfigManager:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mUpsightPush:Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/upsight/android/UpsightExtension;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getApi()Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->mUpsightPush:Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    return-object v0
.end method

.method public bridge synthetic getApi()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->getApi()Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    move-result-object v0

    return-object v0
.end method

.method protected onPostCreate(Lcom/upsight/android/UpsightContext;)V
    .registers 8
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->mPushConfigManager:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    invoke-virtual {v1}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->fetchCurrentConfigObservable()Lrx/Observable;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/upsight/android/UpsightCoreComponent;->subscribeOnScheduler()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/upsight/android/UpsightCoreComponent;->observeOnScheduler()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/upsight/android/UpsightGooglePushServicesExtension$1;

    invoke-direct {v2, p0, p1}, Lcom/upsight/android/UpsightGooglePushServicesExtension$1;-><init>(Lcom/upsight/android/UpsightGooglePushServicesExtension;Lcom/upsight/android/UpsightContext;)V

    .line 66
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_27

    .line 90
    :goto_26
    return-void

    .line 87
    :catch_27
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    sget-object v2, Lcom/upsight/android/UpsightGooglePushServicesExtension;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to fetch push configurations"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_26
.end method

.method protected bridge synthetic onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/UpsightExtension$BaseComponent;
    .registers 3

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;

    move-result-object v0

    return-object v0
.end method

.method protected onResolve(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;
    .registers 4
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 45
    invoke-static {}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;->builder()Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/googlepushservices/internal/PushModule;

    invoke-direct {v1, p1}, Lcom/upsight/android/googlepushservices/internal/PushModule;-><init>(Lcom/upsight/android/UpsightContext;)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->pushModule(Lcom/upsight/android/googlepushservices/internal/PushModule;)Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->build()Lcom/upsight/android/googlepushservices/internal/GooglePushServicesComponent;

    move-result-object v0

    return-object v0
.end method
