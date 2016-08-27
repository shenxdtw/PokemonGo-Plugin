.class public final Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;
.super Ljava/lang/Object;
.source "GooglePushServices_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/googlepushservices/internal/GooglePushServices;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final pushConfigManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field private final upsightProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p2, "pushConfigManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/internal/PushConfigManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-boolean v0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->upsightProvider:Ljavax/inject/Provider;

    .line 22
    sget-boolean v0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->pushConfigManagerProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/GooglePushServices;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    .local p1, "pushConfigManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/internal/PushConfigManager;>;"
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/googlepushservices/internal/GooglePushServices;
    .registers 4

    .prologue
    .line 28
    new-instance v2, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->upsightProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightContext;

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->pushConfigManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    invoke-direct {v2, v0, v1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;-><init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/googlepushservices/internal/PushConfigManager;)V

    return-object v2
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices_Factory;->get()Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    move-result-object v0

    return-object v0
.end method
