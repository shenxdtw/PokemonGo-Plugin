.class Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightCommSendEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field msgCampaignId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg_campaign_id"
    .end annotation
.end field

.field msgId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "msg_id"
    .end annotation
.end field

.field payload:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "payload"
    .end annotation
.end field

.field token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    # getter for: Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->token:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->token:Ljava/lang/String;

    .line 57
    # getter for: Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->msgId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->msgId:Ljava/lang/Integer;

    .line 58
    # getter for: Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->payload:Lcom/google/gson/JsonObject;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)Lcom/google/gson/JsonObject;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->payload:Lcom/google/gson/JsonObject;

    .line 59
    # getter for: Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->msgCampaignId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->msgCampaignId:Ljava/lang/Integer;

    .line 60
    return-void
.end method


# virtual methods
.method public getMsgCampaignId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->msgCampaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->msgId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPayload()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->payload:Lcom/google/gson/JsonObject;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONObjectSerializer;->fromJsonObject(Lcom/google/gson/JsonObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommSendEvent$UpsightData;->token:Ljava/lang/String;

    return-object v0
.end method
