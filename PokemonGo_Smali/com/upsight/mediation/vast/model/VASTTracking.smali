.class public Lcom/upsight/mediation/vast/model/VASTTracking;
.super Ljava/lang/Object;
.source "VASTTracking.java"


# instance fields
.field private consumed:Z

.field private event:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

.field private offset:Ljava/lang/String;

.field private offsetRelative:Z

.field private parsedOffset:J

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvent()Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->event:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    return-object v0
.end method

.method public getParsedOffset()J
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->parsedOffset:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isConsumed()Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->consumed:Z

    return v0
.end method

.method public isOffsetRelative()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->offsetRelative:Z

    return v0
.end method

.method public setConsumed(Z)V
    .registers 2
    .param p1, "consumed"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->consumed:Z

    .line 60
    return-void
.end method

.method public setEvent(Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;)V
    .registers 2
    .param p1, "event"    # Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->event:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    .line 32
    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .registers 5
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 35
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->offset:Ljava/lang/String;

    .line 37
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 38
    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->parsedOffset:J

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->offsetRelative:Z

    .line 44
    :goto_1e
    return-void

    .line 41
    :cond_1f
    invoke-static {p1}, Lcom/upsight/mediation/vast/util/Assets;->parseOffset(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->parsedOffset:J

    .line 42
    iput-boolean v2, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->offsetRelative:Z

    goto :goto_1e
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->value:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tracking [event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->event:Lcom/upsight/mediation/vast/model/TRACKING_EVENTS_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTTracking;->offset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
