.class Lcom/upsight/android/unity/UpsightPushManager$2$1;
.super Ljava/lang/Object;
.source "UpsightPushManager.java"

# interfaces
.implements Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightPushManager$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upsight/android/unity/UpsightPushManager$2;


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightPushManager$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/upsight/android/unity/UpsightPushManager$2;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightPushManager$2$1;->this$1:Lcom/upsight/android/unity/UpsightPushManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .registers 5
    .param p1, "ex"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 81
    const-string v0, "Upsight-UnityPush"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registration failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "Upsight-UnityPush"

    const-string v1, "registration succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method
