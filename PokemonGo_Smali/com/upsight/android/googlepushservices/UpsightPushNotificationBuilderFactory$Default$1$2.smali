.class Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1$2;
.super Ljava/lang/Object;
.source "UpsightPushNotificationBuilderFactory.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;Lrx/Subscriber;)V
    .registers 3
    .param p1, "this$1"    # Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1$2;->this$1:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;

    iput-object p2, p0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1$2;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 3
    .param p1, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1$2;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 149
    return-void
.end method
