.class Lcom/upsight/android/googlepushservices/internal/GooglePushServices$1;
.super Ljava/lang/Object;
.source "GooglePushServices.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->registerInBackground(Ljava/lang/String;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

.field final synthetic val$projectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$1;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    iput-object p2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$1;->val$projectId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 168
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$1;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    # getter for: Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->mUpsight:Lcom/upsight/android/UpsightContext;
    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$000(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Lcom/upsight/android/UpsightContext;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$1;->val$projectId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "registrationId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 174
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 182
    .end local v1    # "registrationId":Ljava/lang/String;
    :goto_22
    return-void

    .line 177
    .restart local v1    # "registrationId":Ljava/lang/String;
    :cond_23
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid push token returned from GoogleCloudMessaging"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_22

    .line 179
    .end local v1    # "registrationId":Ljava/lang/String;
    :catch_2e
    move-exception v0

    .line 180
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_22
.end method
