.class Lcom/upsight/android/unity/UpsightPlugin$10;
.super Ljava/lang/Object;
.source "UpsightPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightPlugin;->recordMilestoneEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightPlugin;

.field final synthetic val$properties:Ljava/lang/String;

.field final synthetic val$scope:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightPlugin;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightPlugin$10;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iput-object p2, p0, Lcom/upsight/android/unity/UpsightPlugin$10;->val$scope:Ljava/lang/String;

    iput-object p3, p0, Lcom/upsight/android/unity/UpsightPlugin$10;->val$properties:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 356
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$10;->val$scope:Ljava/lang/String;

    invoke-static {v1}, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent;->createBuilder(Ljava/lang/String;)Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;

    move-result-object v0

    .line 357
    .local v0, "builder":Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$10;->val$properties:Ljava/lang/String;

    # invokes: Lcom/upsight/android/unity/UpsightPlugin;->publisherDataFromJsonString(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;
    invoke-static {v1}, Lcom/upsight/android/unity/UpsightPlugin;->access$000(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;->put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;

    .line 358
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$10;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iget-object v1, v1, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 359
    return-void
.end method
