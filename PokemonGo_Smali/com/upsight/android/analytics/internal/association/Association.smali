.class public Lcom/upsight/android/analytics/internal/association/Association;
.super Ljava/lang/Object;
.source "Association.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.association"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    }
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field timestampMs:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp_ms"
    .end annotation
.end field

.field upsightData:Lcom/google/gson/JsonObject;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upsight_data"
    .end annotation
.end field

.field upsightDataFilter:Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upsight_data_filter"
    .end annotation
.end field

.field with:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "with"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;Lcom/google/gson/JsonObject;J)V
    .registers 6
    .param p1, "with"    # Ljava/lang/String;
    .param p2, "upsightDataFilter"    # Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    .param p3, "upsightData"    # Lcom/google/gson/JsonObject;
    .param p4, "timestampMs"    # J

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/association/Association;->with:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/association/Association;->upsightDataFilter:Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;

    .line 91
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/association/Association;->upsightData:Lcom/google/gson/JsonObject;

    .line 92
    iput-wide p4, p0, Lcom/upsight/android/analytics/internal/association/Association;->timestampMs:J

    .line 93
    return-void
.end method

.method public static from(Ljava/lang/String;Lcom/google/gson/JsonObject;Lcom/google/gson/JsonObject;Lcom/google/gson/Gson;Lcom/upsight/android/analytics/internal/session/Clock;)Lcom/upsight/android/analytics/internal/association/Association;
    .registers 12
    .param p0, "with"    # Ljava/lang/String;
    .param p1, "upsightDataFilter"    # Lcom/google/gson/JsonObject;
    .param p2, "upsightData"    # Lcom/google/gson/JsonObject;
    .param p3, "gson"    # Lcom/google/gson/Gson;
    .param p4, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    if-nez p2, :cond_12

    .line 66
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_12
    :try_start_12
    const-class v0, Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;

    invoke-virtual {p3, p1, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    :try_end_1a
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_12 .. :try_end_1a} :catch_26

    .line 75
    .local v2, "filter":Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    new-instance v0, Lcom/upsight/android/analytics/internal/association/Association;

    invoke-interface {p4}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/analytics/internal/association/Association;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;Lcom/google/gson/JsonObject;J)V

    return-object v0

    .line 72
    .end local v2    # "filter":Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    :catch_26
    move-exception v6

    .line 73
    .local v6, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/Association;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestampMs()J
    .registers 3

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/association/Association;->timestampMs:J

    return-wide v0
.end method

.method public getUpsightData()Lcom/google/gson/JsonObject;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/Association;->upsightData:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getUpsightDataFilter()Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/Association;->upsightDataFilter:Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;

    return-object v0
.end method

.method public getWith()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/Association;->with:Ljava/lang/String;

    return-object v0
.end method
