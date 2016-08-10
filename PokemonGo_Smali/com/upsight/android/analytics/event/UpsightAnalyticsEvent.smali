.class public abstract Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
.super Ljava/lang/Object;
.source "UpsightAnalyticsEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected id:Ljava/lang/String;
    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field protected mCreationTsMs:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ts"
    .end annotation
.end field

.field protected mPublisherData:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pub_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field protected mSequenceId:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seq_id"
    .end annotation
.end field

.field protected mType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field protected mUpsightData:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upsight_data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field protected mUserAttributes:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_attributes"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 59
    .local p0, "this":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;, "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent<TU;TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TU;TP;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;, "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent<TU;TP;>;"
    .local p2, "upsightData":Ljava/lang/Object;, "TU;"
    .local p3, "publisherData":Ljava/lang/Object;, "TP;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->mCreationTsMs:J

    .line 54
    iput-object p1, p0, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->mType:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->mUpsightData:Ljava/lang/Object;

    .line 56
    iput-object p3, p0, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->mPublisherData:Ljava/lang/Object;

    .line 57
    return-void
.end method


# virtual methods
.method public getCreationTimestampMs()J
    .registers 3

    .prologue
    .line 64
    .local p0, "this":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;, "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent<TU;TP;>;"
    iget-wide v0, p0, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->mCreationTsMs:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    .local p0, "this":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;, "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent<TU;TP;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPublisherData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;, "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent<TU;TP;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->mPublisherData:Ljava/lang/Object;

    return-object v0
.end method

.method public getSequenceId()J
    .registers 3

    .prologue
    .line 84
    .local p0, "this":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;, "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent<TU;TP;>;"
    iget-wide v0, p0, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->mSequenceId:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    .local p0, "this":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;, "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent<TU;TP;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->mType:Ljava/lang/String;

    return-object v0
.end method

.method protected getUpsightData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;, "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent<TU;TP;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->mUpsightData:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserAttributes()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 88
    .local p0, "this":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;, "Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent<TU;TP;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->mUserAttributes:Lcom/google/gson/JsonObject;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONObjectSerializer;->fromJsonObject(Lcom/google/gson/JsonObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
