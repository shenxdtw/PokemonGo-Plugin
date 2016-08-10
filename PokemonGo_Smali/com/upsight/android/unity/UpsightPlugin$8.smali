.class Lcom/upsight/android/unity/UpsightPlugin$8;
.super Ljava/lang/Object;
.source "UpsightPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightPlugin;->setUserAttributesDatetime(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightPlugin;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:J


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightPlugin;JLjava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightPlugin;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightPlugin$8;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iput-wide p2, p0, Lcom/upsight/android/unity/UpsightPlugin$8;->val$value:J

    iput-object p4, p0, Lcom/upsight/android/unity/UpsightPlugin$8;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 200
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, p0, Lcom/upsight/android/unity/UpsightPlugin$8;->val$value:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 201
    .local v0, "datetimeMs":J
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin$8;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iget-object v2, v2, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin$8;->val$key:Ljava/lang/String;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2, v3, v4}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/util/Date;)V

    .line 202
    return-void
.end method
