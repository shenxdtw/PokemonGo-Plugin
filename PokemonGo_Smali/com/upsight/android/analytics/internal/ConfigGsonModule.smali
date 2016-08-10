.class public final Lcom/upsight/android/analytics/internal/ConfigGsonModule;
.super Ljava/lang/Object;
.source "ConfigGsonModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field public static final GSON_CONFIG:Ljava/lang/String; = "config-gson"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideConfigGson(Lcom/upsight/android/UpsightContext;)Lcom/google/gson/Gson;
    .registers 3
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "config-gson"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->gson()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method
