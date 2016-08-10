.class Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .registers 5

    .prologue
    .line 242
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    # getter for: Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$100(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    const-string v1, "Configurator"

    const-string v2, "Record config.expired"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-static {}, Lcom/upsight/android/analytics/event/config/UpsightConfigExpiredEvent;->createBuilder()Lcom/upsight/android/analytics/event/config/UpsightConfigExpiredEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    # getter for: Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mUpsight:Lcom/upsight/android/UpsightContext;
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$400(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/UpsightContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/config/UpsightConfigExpiredEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 244
    return-void
.end method
