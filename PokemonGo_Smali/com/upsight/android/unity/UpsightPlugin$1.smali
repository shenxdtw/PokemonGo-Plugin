.class Lcom/upsight/android/unity/UpsightPlugin$1;
.super Ljava/lang/Object;
.source "UpsightPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightPlugin;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightPlugin;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightPlugin;Landroid/app/Activity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightPlugin;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightPlugin$1;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iput-object p2, p0, Lcom/upsight/android/unity/UpsightPlugin$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin$1;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iget-object v0, v0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$1;->val$activity:Landroid/app/Activity;

    sget-object v2, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->STARTED:Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;

    invoke-static {v0, v1, v2}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker;->track(Lcom/upsight/android/UpsightContext;Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;)V

    .line 66
    const-string v0, "Upsight-Unity"

    const-string v1, "Upsight initialization finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method
