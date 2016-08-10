.class public final Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityTrackEvent;
.super Ljava/lang/Object;
.source "UpsightLifeCycleTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/UpsightLifeCycleTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityTrackEvent"
.end annotation


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final mActivityState:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "activityState"    # Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityTrackEvent;->mActivity:Landroid/app/Activity;

    .line 82
    iput-object p2, p0, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityTrackEvent;->mActivityState:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    .line 83
    return-void
.end method
