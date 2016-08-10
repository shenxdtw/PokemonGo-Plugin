.class Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightDataCollectionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field dataBundle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data_bundle"
    .end annotation
.end field

.field format:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "format"
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


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    # getter for: Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->streamStartTs:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    .line 57
    # getter for: Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->streamId:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->access$100(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->streamId:Ljava/lang/String;

    .line 58
    # getter for: Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->dataBundle:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->access$200(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->dataBundle:Ljava/lang/String;

    .line 59
    # getter for: Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->format:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;->access$300(Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->format:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getDataBundle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->dataBundle:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->streamId:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamStartTs()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/upsight/android/analytics/event/datacollection/UpsightDataCollectionEvent$UpsightData;->streamStartTs:Ljava/lang/String;

    return-object v0
.end method
