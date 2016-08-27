.class public final Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;
.super Ljava/lang/Object;
.source "UpsightGooglePushServicesExtension_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/upsight/android/UpsightGooglePushServicesExtension;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mPushConfigManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpsightPushProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->$assertionsDisabled:Z

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
            "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "mUpsightPushProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;>;"
    .local p2, "mPushConfigManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/internal/PushConfigManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-boolean v0, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->mUpsightPushProvider:Ljavax/inject/Provider;

    .line 24
    sget-boolean v0, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->mPushConfigManagerProvider:Ljavax/inject/Provider;

    .line 26
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightGooglePushServicesExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "mUpsightPushProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;>;"
    .local p1, "mPushConfigManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/internal/PushConfigManager;>;"
    new-instance v0, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectMPushConfigManager(Lcom/upsight/android/UpsightGooglePushServicesExtension;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/UpsightGooglePushServicesExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightGooglePushServicesExtension;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/internal/PushConfigManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "mPushConfigManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/internal/PushConfigManager;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    iput-object v0, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->mPushConfigManager:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    .line 54
    return-void
.end method

.method public static injectMUpsightPush(Lcom/upsight/android/UpsightGooglePushServicesExtension;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/upsight/android/UpsightGooglePushServicesExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightGooglePushServicesExtension;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "mUpsightPushProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    iput-object v0, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension;->mUpsightPush:Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    .line 48
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/upsight/android/UpsightGooglePushServicesExtension;)V
    .registers 4
    .param p1, "instance"    # Lcom/upsight/android/UpsightGooglePushServicesExtension;

    .prologue
    .line 37
    if-nez p1, :cond_a

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_a
    iget-object v0, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->mUpsightPushProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    iput-object v0, p1, Lcom/upsight/android/UpsightGooglePushServicesExtension;->mUpsightPush:Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesApi;

    .line 41
    iget-object v0, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->mPushConfigManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    iput-object v0, p1, Lcom/upsight/android/UpsightGooglePushServicesExtension;->mPushConfigManager:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    .line 42
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 9
    check-cast p1, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    invoke-virtual {p0, p1}, Lcom/upsight/android/UpsightGooglePushServicesExtension_MembersInjector;->injectMembers(Lcom/upsight/android/UpsightGooglePushServicesExtension;)V

    return-void
.end method
