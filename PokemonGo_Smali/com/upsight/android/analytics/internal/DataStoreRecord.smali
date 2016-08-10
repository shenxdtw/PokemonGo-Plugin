.class public final Lcom/upsight/android/analytics/internal/DataStoreRecord;
.super Ljava/lang/Object;
.source "DataStoreRecord.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.datastore.record"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    }
.end annotation


# instance fields
.field action:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "action"
    .end annotation
.end field

.field campaignID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "campaign_id"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field identifiers:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "identifiers"
    .end annotation
.end field

.field messageID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message_id"
    .end annotation
.end field

.field pastSessionTime:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "past_session_time"
    .end annotation
.end field

.field sessionID:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_id"
    .end annotation
.end field

.field sessionNumber:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "session_num"
    .end annotation
.end field

.field source:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source"
    .end annotation
.end field

.field sourceType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "source_type"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    return-void
.end method

.method private constructor <init>(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;JLjava/lang/Integer;Ljava/lang/Integer;IJLjava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "action"    # Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .param p2, "sessionID"    # J
    .param p4, "messageID"    # Ljava/lang/Integer;
    .param p5, "campaignID"    # Ljava/lang/Integer;
    .param p6, "sessionNumber"    # I
    .param p7, "pastSessionTime"    # J
    .param p9, "source"    # Ljava/lang/String;
    .param p10, "sourceType"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->action:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    .line 103
    iput-wide p2, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sessionID:J

    .line 104
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->messageID:Ljava/lang/Integer;

    .line 105
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->campaignID:Ljava/lang/Integer;

    .line 106
    iput-object p9, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->source:Ljava/lang/String;

    .line 107
    iput-object p10, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sourceType:Ljava/lang/String;

    .line 108
    iput p6, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sessionNumber:I

    .line 109
    iput-wide p7, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->pastSessionTime:J

    .line 110
    return-void
.end method

.method public static create(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;JIJLjava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .registers 18
    .param p0, "action"    # Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .param p1, "sessionID"    # J
    .param p3, "sessionNumber"    # I
    .param p4, "pastSessionTime"    # J
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "sourceType"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->create(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;JLjava/lang/Integer;Ljava/lang/Integer;IJLjava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;JLjava/lang/Integer;Ljava/lang/Integer;IJLjava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .registers 21
    .param p0, "action"    # Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .param p1, "sessionID"    # J
    .param p3, "messageID"    # Ljava/lang/Integer;
    .param p4, "campaignID"    # Ljava/lang/Integer;
    .param p5, "sessionNumber"    # I
    .param p6, "pastSessionTime"    # J
    .param p8, "source"    # Ljava/lang/String;
    .param p9, "sourceType"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/upsight/android/analytics/internal/DataStoreRecord;-><init>(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;JLjava/lang/Integer;Ljava/lang/Integer;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    if-ne p0, p1, :cond_5

    .line 121
    :cond_4
    :goto_4
    return v1

    .line 115
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 117
    check-cast v0, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .line 119
    .local v0, "that":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_24
.end method

.method public getAction()Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->action:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    return-object v0
.end method

.method public getCampaignID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->campaignID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifiers()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->identifiers:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageID()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->messageID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPastSessionTime()J
    .registers 3

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->pastSessionTime:J

    return-wide v0
.end method

.method public getSessionID()J
    .registers 3

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sessionID:J

    return-wide v0
.end method

.method public getSessionNumber()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sessionNumber:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sourceType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setIdentifiers(Ljava/lang/String;)V
    .registers 2
    .param p1, "identifiers"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->identifiers:Ljava/lang/String;

    .line 167
    return-void
.end method
