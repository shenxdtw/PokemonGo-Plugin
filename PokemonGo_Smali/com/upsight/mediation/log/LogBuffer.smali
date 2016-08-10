.class public Lcom/upsight/mediation/log/LogBuffer;
.super Ljava/lang/Object;
.source "LogBuffer.java"


# instance fields
.field public final buffer:[Ljava/lang/String;

.field public final bufferSize:I

.field public end:I

.field public final msgLength:I


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1, "bufferSize"    # I
    .param p2, "msgLength"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-gtz p1, :cond_d

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_d
    if-gtz p2, :cond_17

    .line 21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message length must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_17
    iput p1, p0, Lcom/upsight/mediation/log/LogBuffer;->bufferSize:I

    .line 24
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/upsight/mediation/log/LogBuffer;->buffer:[Ljava/lang/String;

    .line 25
    iput p2, p0, Lcom/upsight/mediation/log/LogBuffer;->msgLength:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/upsight/mediation/log/LogBuffer;->end:I

    .line 27
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 35
    if-nez p1, :cond_b

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_b
    iget v0, p0, Lcom/upsight/mediation/log/LogBuffer;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/upsight/mediation/log/LogBuffer;->end:I

    iget v1, p0, Lcom/upsight/mediation/log/LogBuffer;->bufferSize:I

    if-lt v0, v1, :cond_17

    .line 40
    iput v3, p0, Lcom/upsight/mediation/log/LogBuffer;->end:I

    .line 42
    :cond_17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/upsight/mediation/log/LogBuffer;->msgLength:I

    if-le v0, v1, :cond_2c

    .line 43
    iget-object v0, p0, Lcom/upsight/mediation/log/LogBuffer;->buffer:[Ljava/lang/String;

    iget v1, p0, Lcom/upsight/mediation/log/LogBuffer;->end:I

    iget v2, p0, Lcom/upsight/mediation/log/LogBuffer;->msgLength:I

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 47
    :goto_2b
    return-void

    .line 45
    :cond_2c
    iget-object v0, p0, Lcom/upsight/mediation/log/LogBuffer;->buffer:[Ljava/lang/String;

    iget v1, p0, Lcom/upsight/mediation/log/LogBuffer;->end:I

    aput-object p1, v0, v1

    goto :goto_2b
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "level"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "compiledLog":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/upsight/mediation/log/LogBuffer;->append(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public getLog()[Ljava/lang/String;
    .registers 8

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/upsight/mediation/log/LogBuffer;->getStartIndex()I

    move-result v4

    .line 51
    .local v4, "startIndex":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v3, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    iget v5, p0, Lcom/upsight/mediation/log/LogBuffer;->bufferSize:I

    if-ge v1, v5, :cond_1a

    .line 53
    add-int v5, v4, v1

    iget v6, p0, Lcom/upsight/mediation/log/LogBuffer;->bufferSize:I

    rem-int v2, v5, v6

    .line 54
    .local v2, "index":I
    iget-object v5, p0, Lcom/upsight/mediation/log/LogBuffer;->buffer:[Ljava/lang/String;

    aget-object v0, v5, v2

    .line 55
    .local v0, "currentLog":Ljava/lang/String;
    if-nez v0, :cond_27

    .line 60
    .end local v0    # "currentLog":Ljava/lang/String;
    .end local v2    # "index":I
    :cond_1a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5

    .line 58
    .restart local v0    # "currentLog":Ljava/lang/String;
    .restart local v2    # "index":I
    :cond_27
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public getStartIndex()I
    .registers 4

    .prologue
    .line 67
    iget-object v1, p0, Lcom/upsight/mediation/log/LogBuffer;->buffer:[Ljava/lang/String;

    iget-object v2, p0, Lcom/upsight/mediation/log/LogBuffer;->buffer:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-nez v1, :cond_12

    .line 68
    const/4 v0, 0x0

    .line 73
    .local v0, "start":I
    :goto_c
    iget v1, p0, Lcom/upsight/mediation/log/LogBuffer;->bufferSize:I

    if-lt v0, v1, :cond_11

    .line 74
    const/4 v0, 0x0

    .line 77
    :cond_11
    return v0

    .line 70
    .end local v0    # "start":I
    :cond_12
    iget v1, p0, Lcom/upsight/mediation/log/LogBuffer;->end:I

    add-int/lit8 v0, v1, 0x1

    .restart local v0    # "start":I
    goto :goto_c
.end method
