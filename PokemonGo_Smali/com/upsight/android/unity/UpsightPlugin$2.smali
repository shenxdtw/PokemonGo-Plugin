.class Lcom/upsight/android/unity/UpsightPlugin$2;
.super Ljava/lang/Object;
.source "UpsightPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightPlugin;->setLocation(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightPlugin;

.field final synthetic val$lat:D

.field final synthetic val$lon:D


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightPlugin;DD)V
    .registers 6
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightPlugin;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightPlugin$2;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iput-wide p2, p0, Lcom/upsight/android/unity/UpsightPlugin$2;->val$lat:D

    iput-wide p4, p0, Lcom/upsight/android/unity/UpsightPlugin$2;->val$lon:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 140
    iget-wide v2, p0, Lcom/upsight/android/unity/UpsightPlugin$2;->val$lat:D

    iget-wide v4, p0, Lcom/upsight/android/unity/UpsightPlugin$2;->val$lon:D

    invoke-static {v2, v3, v4, v5}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->create(DD)Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    move-result-object v0

    .line 141
    .local v0, "data":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$2;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iget-object v1, v1, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1, v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;->track(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V

    .line 142
    return-void
.end method
