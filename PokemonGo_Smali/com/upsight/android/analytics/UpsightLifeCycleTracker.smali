.class public abstract Lcom/upsight/android/analytics/UpsightLifeCycleTracker;
.super Ljava/lang/Object;
.source "UpsightLifeCycleTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityTrackEvent;,
        Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;
    }
.end annotation


# static fields
.field public static final STARTED_FROM_PUSH:Ljava/lang/String; = "pushMessage"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static track(Lcom/upsight/android/UpsightContext;Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;)V
    .registers 8
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "activityState"    # Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    .prologue
    .line 49
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 50
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_12

    .line 51
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->trackActivity(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;)V

    .line 55
    :goto_11
    return-void

    .line 53
    :cond_12
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11
.end method


# virtual methods
.method public abstract track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V
.end method
