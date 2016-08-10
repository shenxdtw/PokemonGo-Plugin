.class Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1$1;
.super Ljava/lang/Object;
.source "UpsightPushNotificationBuilderFactory.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;Lrx/Subscriber;)V
    .registers 3
    .param p1, "this$1"    # Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1$1;->this$1:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;

    iput-object p2, p0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Landroid/graphics/Bitmap;)V
    .registers 3
    .param p1, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 143
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 138
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1$1;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
