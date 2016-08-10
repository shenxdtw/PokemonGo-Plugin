.class public final Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerGooglePushServicesComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private googleCloudMessagingModule:Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

.field private pushModule:Lcom/upsight/android/googlepushservices/internal/PushModule;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$1;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)Lcom/upsight/android/googlepushservices/internal/PushModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->pushModule:Lcom/upsight/android/googlepushservices/internal/PushModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->googleCloudMessagingModule:Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/upsight/android/googlepushservices/internal/GooglePushServicesComponent;
    .registers 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->pushModule:Lcom/upsight/android/googlepushservices/internal/PushModule;

    if-nez v0, :cond_23

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/upsight/android/googlepushservices/internal/PushModule;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_23
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->googleCloudMessagingModule:Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    if-nez v0, :cond_2e

    .line 109
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    invoke-direct {v0}, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->googleCloudMessagingModule:Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    .line 111
    :cond_2e
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;-><init>(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$1;)V

    return-object v0
.end method

.method public googleCloudMessagingModule(Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;)Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;
    .registers 3
    .param p1, "googleCloudMessagingModule"    # Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    .prologue
    .line 130
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->googleCloudMessagingModule:Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    .line 131
    return-object p0
.end method

.method public googlePushServicesModule(Lcom/upsight/android/googlepushservices/internal/GooglePushServicesModule;)Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;
    .registers 2
    .param p1, "googlePushServicesModule"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServicesModule;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-object p0
.end method

.method public pushModule(Lcom/upsight/android/googlepushservices/internal/PushModule;)Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;
    .registers 3
    .param p1, "pushModule"    # Lcom/upsight/android/googlepushservices/internal/PushModule;

    .prologue
    .line 124
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/internal/PushModule;

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->pushModule:Lcom/upsight/android/googlepushservices/internal/PushModule;

    .line 125
    return-object p0
.end method
