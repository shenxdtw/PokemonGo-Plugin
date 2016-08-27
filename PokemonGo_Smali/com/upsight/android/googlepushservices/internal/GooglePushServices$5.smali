.class Lcom/upsight/android/googlepushservices/internal/GooglePushServices$5;
.super Ljava/lang/Object;
.source "GooglePushServices.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->registerPushToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

.field final synthetic val$pushToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$5;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    iput-object p2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$5;->val$pushToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;)V
    .registers 8
    .param p1, "config"    # Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    .prologue
    .line 328
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 329
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$5;->val$pushToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$5;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # invokes: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->getRegistrationId()Ljava/lang/String;
    invoke-static {v3}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$700(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$5;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # invokes: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->getLastPushTokenRegistrationTime()J
    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$800(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-wide v4, p1, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;->pushTokenTtl:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_42

    .line 330
    :cond_28
    invoke-static {}, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent;->createBuilder()Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$5;->val$pushToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;->setToken(Ljava/lang/String;)Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$5;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;
    invoke-static {v3}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$000(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Lcom/upsight/android/UpsightContext;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 331
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$5;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$5;->val$pushToken:Ljava/lang/String;

    # invokes: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->storeRegistrationInfo(Ljava/lang/String;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$900(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Ljava/lang/String;J)V

    .line 333
    :cond_42
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 325
    check-cast p1, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$5;->call(Lcom/upsight/android/googlepushservices/internal/PushConfigManager$Config;)V

    return-void
.end method
