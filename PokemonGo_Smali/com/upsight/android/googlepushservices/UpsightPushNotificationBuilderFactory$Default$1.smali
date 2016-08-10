.class Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;
.super Ljava/lang/Object;
.source "UpsightPushNotificationBuilderFactory.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;->getImageObservable(Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;

.field final synthetic val$imageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;->this$0:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;

    iput-object p2, p0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 133
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/graphics/Bitmap;>;"
    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;->this$0:Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;

    # getter for: Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;->mRequestQueue:Lcom/android/volley/RequestQueue;
    invoke-static {v0}, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;->access$000(Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default;)Lcom/android/volley/RequestQueue;

    move-result-object v8

    new-instance v0, Lcom/android/volley/toolbox/ImageRequest;

    iget-object v1, p0, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;->val$imageUrl:Ljava/lang/String;

    new-instance v2, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1$1;

    invoke-direct {v2, p0, p1}, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1$1;-><init>(Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;Lrx/Subscriber;)V

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    new-instance v7, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1$2;

    invoke-direct {v7, p0, p1}, Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1$2;-><init>(Lcom/upsight/android/googlepushservices/UpsightPushNotificationBuilderFactory$Default$1;Lrx/Subscriber;)V

    move v4, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V

    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v2, 0x1388

    const/4 v3, 0x3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 151
    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/ImageRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    move-result-object v0

    .line 136
    invoke-virtual {v8, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 155
    return-void
.end method
