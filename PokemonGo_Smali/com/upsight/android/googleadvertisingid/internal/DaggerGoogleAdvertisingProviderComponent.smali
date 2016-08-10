.class public final Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;
.super Ljava/lang/Object;
.source "DaggerGoogleAdvertisingProviderComponent.java"

# interfaces
.implements Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private provideGooglePlayAdvertisingProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/googleadvertisingid/internal/GooglePlayAdvertisingProvider;",
            ">;"
        }
    .end annotation
.end field

.field private upsightGoogleAdvertisingIdExtensionMembersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightGoogleAdvertisingIdExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-boolean v0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_f
    invoke-direct {p0, p1}, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;->initialize(Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;)V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;
    .param p2, "x1"    # Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$1;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;-><init>(Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;)V

    return-void
.end method

.method public static builder()Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;
    .registers 2

    .prologue
    .line 28
    new-instance v0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;-><init>(Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;

    .prologue
    .line 34
    .line 37
    # getter for: Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;->googleAdvertisingProviderModule:Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;
    invoke-static {p1}, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;->access$100(Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;)Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule_ProvideGooglePlayAdvertisingProviderFactory;->create(Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;)Ldagger/internal/Factory;

    move-result-object v0

    .line 35
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;->provideGooglePlayAdvertisingProvider:Ljavax/inject/Provider;

    .line 39
    iget-object v0, p0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;->provideGooglePlayAdvertisingProvider:Ljavax/inject/Provider;

    .line 40
    invoke-static {v0}, Lcom/upsight/android/UpsightGoogleAdvertisingIdExtension_MembersInjector;->create(Ljavax/inject/Provider;)Ldagger/MembersInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;->upsightGoogleAdvertisingIdExtensionMembersInjector:Ldagger/MembersInjector;

    .line 42
    return-void
.end method


# virtual methods
.method public bridge synthetic inject(Lcom/upsight/android/UpsightExtension;)V
    .registers 2

    .prologue
    .line 11
    check-cast p1, Lcom/upsight/android/UpsightGoogleAdvertisingIdExtension;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;->inject(Lcom/upsight/android/UpsightGoogleAdvertisingIdExtension;)V

    return-void
.end method

.method public inject(Lcom/upsight/android/UpsightGoogleAdvertisingIdExtension;)V
    .registers 3
    .param p1, "arg0"    # Lcom/upsight/android/UpsightGoogleAdvertisingIdExtension;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;->upsightGoogleAdvertisingIdExtensionMembersInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 47
    return-void
.end method
