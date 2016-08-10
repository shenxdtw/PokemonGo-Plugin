.class public final Lcom/upsight/android/analytics/internal/AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory;
.super Ljava/lang/Object;
.source "AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final analyticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/Analytics;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-class v0, Lcom/upsight/android/analytics/internal/AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/analytics/internal/AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/AnalyticsApiModule;Ljavax/inject/Provider;)V
    .registers 4
    .param p1, "module"    # Lcom/upsight/android/analytics/internal/AnalyticsApiModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/AnalyticsApiModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/Analytics;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "analyticsProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/Analytics;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-boolean v0, Lcom/upsight/android/analytics/internal/AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory;->module:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    .line 23
    sget-boolean v0, Lcom/upsight/android/analytics/internal/AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 24
    :cond_1d
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory;->analyticsProvider:Ljavax/inject/Provider;

    .line 25
    return-void
.end method

.method public static create(Lcom/upsight/android/analytics/internal/AnalyticsApiModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 3
    .param p0, "module"    # Lcom/upsight/android/analytics/internal/AnalyticsApiModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/AnalyticsApiModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/Analytics;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "analyticsProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/Analytics;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/analytics/internal/AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory;-><init>(Lcom/upsight/android/analytics/internal/AnalyticsApiModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/UpsightAnalyticsApi;
    .registers 3

    .prologue
    .line 29
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory;->module:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory;->analyticsProvider:Ljavax/inject/Provider;

    .line 30
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/Analytics;

    invoke-virtual {v1, v0}, Lcom/upsight/android/analytics/internal/AnalyticsApiModule;->provideUpsightAnalyticsApi(Lcom/upsight/android/analytics/internal/Analytics;)Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/AnalyticsApiModule_ProvideUpsightAnalyticsApiFactory;->get()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v0

    return-object v0
.end method
