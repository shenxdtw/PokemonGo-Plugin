.class Lcom/upsight/android/googlepushservices/internal/PushModule$1;
.super Ljava/lang/Object;
.source "PushModule.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/session/SessionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/internal/PushModule;->provideSessionManager(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/internal/session/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/googlepushservices/internal/PushModule;


# direct methods
.method constructor <init>(Lcom/upsight/android/googlepushservices/internal/PushModule;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/android/googlepushservices/internal/PushModule;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushModule$1;->this$0:Lcom/upsight/android/googlepushservices/internal/PushModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentSession()Lcom/upsight/android/analytics/internal/session/Session;
    .registers 2

    .prologue
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public startSession(Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;
    .registers 3
    .param p1, "sessionInitializer"    # Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public stopSession()V
    .registers 1

    .prologue
    .line 56
    return-void
.end method
