.class public final Lcom/upsight/android/googlepushservices/internal/GooglePushServicesModule;
.super Ljava/lang/Object;
.source "GooglePushServicesModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/upsight/android/googlepushservices/internal/PushModule;,
        Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
