.class Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightContentDismissEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field action:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

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
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->ads:Lcom/google/gson/JsonArray;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)Lcom/google/gson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->ads:Lcom/google/gson/JsonArray;

    .line 74
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->impressionId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->impressionId:Ljava/lang/String;

    .line 75
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 76
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 77
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->scope:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->access$400(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->scope:Ljava/lang/String;

    .line 78
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->contentId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->access$500(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->contentId:Ljava/lang/Integer;

    .line 79
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->action:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->access$600(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->action:Ljava/lang/String;

    .line 80
    # getter for: Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->testDevice:Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;->access$700(Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->testDevice:Ljava/lang/Boolean;

    .line 81
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getAds()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->ads:Lcom/google/gson/JsonArray;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONArraySerializer;->fromJsonArray(Lcom/google/gson/JsonArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getContentId()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->contentId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getImpressionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->impressionId:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method

.method public getTestDevice()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/upsight/android/analytics/event/content/UpsightContentDismissEvent$UpsightData;->testDevice:Ljava/lang/Boolean;

    return-object v0
.end method
