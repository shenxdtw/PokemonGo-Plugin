.class public Lcom/upsight/mediation/vast/model/VideoClicks;
.super Ljava/lang/Object;
.source "VideoClicks.java"


# instance fields
.field private clickThrough:Ljava/lang/String;

.field private clickTracking:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private customClick:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    .local v0, "sb":Ljava/lang/StringBuffer;
    if-nez p1, :cond_a

    .line 51
    const-string v2, ""

    .line 56
    :goto_9
    return-object v2

    .line 53
    :cond_a
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 54
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 56
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9
.end method


# virtual methods
.method public getClickThrough()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VideoClicks;->clickThrough:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTracking()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VideoClicks;->clickTracking:Ljava/util/List;

    if-nez v0, :cond_b

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upsight/mediation/vast/model/VideoClicks;->clickTracking:Ljava/util/List;

    .line 30
    :cond_b
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VideoClicks;->clickTracking:Ljava/util/List;

    return-object v0
.end method

.method public getCustomClick()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VideoClicks;->customClick:Ljava/util/List;

    if-nez v0, :cond_b

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upsight/mediation/vast/model/VideoClicks;->customClick:Ljava/util/List;

    .line 37
    :cond_b
    iget-object v0, p0, Lcom/upsight/mediation/vast/model/VideoClicks;->customClick:Ljava/util/List;

    return-object v0
.end method

.method public setClickThrough(Ljava/lang/String;)V
    .registers 2
    .param p1, "clickThrough"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/upsight/mediation/vast/model/VideoClicks;->clickThrough:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoClicks [clickThrough="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VideoClicks;->clickThrough:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", clickTracking=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VideoClicks;->clickTracking:Ljava/util/List;

    .line 43
    invoke-direct {p0, v1}, Lcom/upsight/mediation/vast/model/VideoClicks;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], customClick=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/mediation/vast/model/VideoClicks;->customClick:Ljava/util/List;

    .line 44
    invoke-direct {p0, v1}, Lcom/upsight/mediation/vast/model/VideoClicks;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
