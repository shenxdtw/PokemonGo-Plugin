.class Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;
.super Ljava/util/HashMap;
.source "VastContentModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/marketing/internal/vast/VastContentModel;->getSettings()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/marketing/internal/vast/VastContentModel;


# direct methods
.method constructor <init>(Lcom/upsight/android/marketing/internal/vast/VastContentModel;)V
    .registers 4
    .param p1, "this$0"    # Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 147
    const-string v0, "beacon-click"

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;->beacons:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings$Beacons;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings$Beacons;->click:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "beacon-impression"

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;->beacons:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings$Beacons;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings$Beacons;->impression:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "campaign_id"

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;->campaignId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "cb_ms"

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;->cbMs:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "cta"

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;->cta:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "id"

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;->id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v0, "postroll"

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;->postroll:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v0, "script"

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;->script:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "t"

    iget-object v1, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->settings:Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;

    iget-object v1, v1, Lcom/upsight/android/marketing/internal/vast/VastContentModel$Settings;->t:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/upsight/android/marketing/internal/vast/VastContentModel$1;->this$0:Lcom/upsight/android/marketing/internal/vast/VastContentModel;

    # invokes: Lcom/upsight/android/marketing/internal/vast/VastContentModel;->appendEndcard(Ljava/util/Map;)V
    invoke-static {v0, p0}, Lcom/upsight/android/marketing/internal/vast/VastContentModel;->access$000(Lcom/upsight/android/marketing/internal/vast/VastContentModel;Ljava/util/Map;)V

    .line 158
    return-void
.end method
