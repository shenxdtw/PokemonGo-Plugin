.class Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightPartnerClickEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field ads:Lcom/google/gson/JsonArray;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ads"
    .end annotation
.end field

.field contentId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content_id"
    .end annotation
.end field

.field impressionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "impression_id"
    .end annotation
.end field

.field partnerId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "partner_id"
    .end annotation
.end field

.field partnerName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "partner_name"
    .end annotation
.end field

.field scope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "scope"
    .end annotation
.end field

.field streamId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream_id"
    .end annotation
.end field

.field streamStartTs:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stream_start_ts"
    .end annotation
.end field

.field testDevice:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "test_device"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    # getter for: Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->ads:Lcom/google/gson/JsonArray;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;)Lcom/google/gson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->ads:Lcom/google/gson/JsonArray;

    .line 79
    # getter for: Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->partnerName:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->partnerName:Ljava/lang/String;

    .line 80
    # getter for: Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->impressionId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->impressionId:Ljava/lang/String;

    .line 81
    # getter for: Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 82
    # getter for: Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->access$400(Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 83
    # getter for: Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->scope:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->access$500(Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->scope:Ljava/lang/String;

    .line 84
    # getter for: Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->contentId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->access$600(Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->contentId:Ljava/lang/Integer;

    .line 85
    # getter for: Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->partnerId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->access$700(Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->partnerId:Ljava/lang/Integer;

    .line 86
    # getter for: Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->testDevice:Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;->access$800(Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->testDevice:Ljava/lang/Boolean;

    .line 87
    return-void
.end method


# virtual methods
.method public getAds()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->ads:Lcom/google/gson/JsonArray;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONArraySerializer;->fromJsonArray(Lcom/google/gson/JsonArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getContentId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->contentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->impressionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPartnerId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->partnerId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPartnerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->partnerName:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method public getTestDevice()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/upsight/android/analytics/event/partner/UpsightPartnerClickEvent$UpsightData;->testDevice:Ljava/lang/Boolean;

    return-object v0
.end method
