.class public final Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerGoogleAdvertisingProviderComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private googleAdvertisingProviderModule:Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$1;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;)Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;->googleAdvertisingProviderModule:Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderComponent;
    .registers 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;->googleAdvertisingProviderModule:Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    if-nez v0, :cond_23

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    .line 57
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

    .line 59
    :cond_23
    new-instance v0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent;-><init>(Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$1;)V

    return-object v0
.end method

.method public googleAdvertisingProviderModule(Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;)Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;
    .registers 3
    .param p1, "googleAdvertisingProviderModule"    # Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    .prologue
    .line 64
    .line 65
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    iput-object v0, p0, Lcom/upsight/android/googleadvertisingid/internal/DaggerGoogleAdvertisingProviderComponent$Builder;->googleAdvertisingProviderModule:Lcom/upsight/android/googleadvertisingid/internal/GoogleAdvertisingProviderModule;

    .line 66
    return-object p0
.end method
