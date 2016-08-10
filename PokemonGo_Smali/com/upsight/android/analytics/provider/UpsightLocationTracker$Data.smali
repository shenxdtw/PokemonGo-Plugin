.class public final Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
.super Ljava/lang/Object;
.source "UpsightLocationTracker.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.model.location"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/provider/UpsightLocationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field latitude:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field longitude:D
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method private constructor <init>(DD)V
    .registers 6
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide p1, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->latitude:D

    .line 82
    iput-wide p3, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->longitude:D

    .line 83
    return-void
.end method

.method public static create(DD)Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    .registers 6
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    .prologue
    .line 77
    new-instance v0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;-><init>(DD)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    if-ne p0, p1, :cond_5

    .line 141
    :cond_4
    :goto_4
    return v1

    .line 131
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 132
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 135
    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    .line 137
    .local v0, "that":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    iget-object v3, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->id:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_24
    move v1, v2

    .line 138
    goto :goto_4

    .line 137
    :cond_26
    iget-object v3, v0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_24
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->longitude:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->id:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setLatitude(D)V
    .registers 4
    .param p1, "latitude"    # D

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->latitude:D

    .line 114
    return-void
.end method

.method public setLongitude(D)V
    .registers 4
    .param p1, "longitude"    # D

    .prologue
    .line 122
    iput-wide p1, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->longitude:D

    .line 123
    return-void
.end method
