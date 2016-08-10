.class final Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session$DefaultTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultTypeAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    .registers 5
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement read()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session$DefaultTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)V
    .registers 7
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 79
    const-string v0, "session_num"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mSessionNum:I
    invoke-static {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 80
    const-string v0, "session_start"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mSessionStart:J
    invoke-static {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 81
    const-string v0, "past_session_time"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mPastSessionTime:J
    invoke-static {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->access$200(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 82
    const-string v0, "msg_id"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mMsgId:Ljava/lang/Integer;
    invoke-static {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->access$300(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    .line 83
    const-string v0, "msg_campaign_id"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mMsgCampaignId:Ljava/lang/Integer;
    invoke-static {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->access$400(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;

    .line 84
    const-string v0, "install_ts"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v0

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mInstallTs:J
    invoke-static {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->access$500(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;

    .line 87
    const-string v0, "events"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 89
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->mEvents:Lcom/google/gson/JsonArray;
    invoke-static {p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;->access$600(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)Lcom/google/gson/JsonArray;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 92
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    .line 93
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    check-cast p2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    invoke-virtual {p0, p1, p2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session$DefaultTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;)V

    return-void
.end method
