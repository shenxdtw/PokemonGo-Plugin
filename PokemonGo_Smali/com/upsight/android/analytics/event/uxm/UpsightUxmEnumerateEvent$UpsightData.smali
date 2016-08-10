.class Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightUxmEnumerateEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field uxm:Lcom/google/gson/JsonArray;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uxm"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    # getter for: Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;->uxm:Lcom/google/gson/JsonArray;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$Builder;)Lcom/google/gson/JsonArray;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$UpsightData;->uxm:Lcom/google/gson/JsonArray;

    .line 44
    return-void
.end method


# virtual methods
.method public getUxm()Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/upsight/android/analytics/event/uxm/UpsightUxmEnumerateEvent$UpsightData;->uxm:Lcom/google/gson/JsonArray;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/util/GsonHelper$JSONArraySerializer;->fromJsonArray(Lcom/google/gson/JsonArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method
