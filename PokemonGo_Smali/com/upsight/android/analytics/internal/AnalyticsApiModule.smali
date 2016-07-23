.class public final Lcom/upsight/android/analytics/internal/AnalyticsApiModule;
.super Ljava/lang/Object;
.source "AnalyticsApiModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideUpsightAnalyticsApi(Lcom/upsight/android/analytics/internal/Analytics;)Lcom/upsight/android/analytics/UpsightAnalyticsApi;
    .registers 2
    .param p1, "analytics"    # Lcom/upsight/android/analytics/internal/Analytics;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 20
    return-object p1
.end method
