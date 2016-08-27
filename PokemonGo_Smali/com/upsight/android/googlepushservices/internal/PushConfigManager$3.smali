.class Lcom/upsight/android/googlepushservices/internal/PushConfigManager$3;
.super Ljava/lang/Object;
.source "PushConfigManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/internal/PushConfigManager;->fetchCurrentConfigObservable()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/upsight/android/analytics/configuration/UpsightConfiguration;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;


# direct methods
.method constructor <init>(Lcom/upsight/android/googlepushservices/internal/PushConfigManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$3;->this$0:Lcom/upsight/android/googlepushservices/internal/PushConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "upsightConfiguration"    # Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .prologue
    .line 61
    const-string v0, "upsight.configuration.push"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 58
    check-cast p1, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/PushConfigManager$3;->call(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
