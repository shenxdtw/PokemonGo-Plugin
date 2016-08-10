.class Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightCommClickEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;
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


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    # getter for: Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->msgId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;->msgId:Ljava/lang/Integer;

    .line 48
    # getter for: Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->msgCampaignId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;->msgCampaignId:Ljava/lang/Integer;

    .line 49
    return-void
.end method


# virtual methods
.method public getMsgCampaignId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;->msgCampaignId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$UpsightData;->msgId:Ljava/lang/Integer;

    return-object v0
.end method
