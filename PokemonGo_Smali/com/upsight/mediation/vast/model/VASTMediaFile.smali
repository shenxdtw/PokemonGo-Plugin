.class public Lcom/upsight/mediation/vast/model/VASTMediaFile;
.super Ljava/lang/Object;
.source "VASTMediaFile.java"


# instance fields
.field private apiFramework:Ljava/lang/String;

.field private bitrate:Ljava/math/BigInteger;

.field private delivery:Ljava/lang/String;

.field private height:Ljava/math/BigInteger;

.field private id:Ljava/lang/String;

.field private maintainAspectRatio:Ljava/lang/Boolean;

.field private scalable:Ljava/lang/Boolean;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;

.field private width:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApiFramework()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->apiFramework:Ljava/lang/String;

    return-object v0
.end method

.method public getBitrate()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->bitrate:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDelivery()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->delivery:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->height:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->width:Ljava/math/BigInteger;

    return-object v0
.end method

.method public isMaintainAspectRatio()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->maintainAspectRatio:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isScalable()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->scalable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setApiFramework(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->apiFramework:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setBitrate(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->bitrate:Ljava/math/BigInteger;

    .line 62
    return-void
.end method

.method public setDelivery(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->delivery:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setHeight(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->height:Ljava/math/BigInteger;

    .line 78
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->id:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setMaintainAspectRatio(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->maintainAspectRatio:Ljava/lang/Boolean;

    .line 94
    return-void
.end method

.method public setScalable(Ljava/lang/Boolean;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->scalable:Ljava/lang/Boolean;

    .line 86
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->type:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->value:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setWidth(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->width:Ljava/math/BigInteger;

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaFile [value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", delivery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->delivery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->bitrate:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->width:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->height:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scalable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->scalable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maintainAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->maintainAspectRatio:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apiFramework="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VASTMediaFile;->apiFramework:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
