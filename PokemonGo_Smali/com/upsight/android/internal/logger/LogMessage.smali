.class public final Lcom/upsight/android/internal/logger/LogMessage;
.super Ljava/lang/Object;
.source "LogMessage.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "com.upsight.message.log"
.end annotation


# instance fields
.field public id:Ljava/lang/String;
    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field private level:Lcom/upsight/android/logger/UpsightLogger$Level;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private throwableString:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method constructor <init>(Lcom/upsight/android/internal/logger/LogMessage;)V
    .registers 6
    .param p1, "source"    # Lcom/upsight/android/internal/logger/LogMessage;

    .prologue
    .line 43
    iget-object v0, p1, Lcom/upsight/android/internal/logger/LogMessage;->tag:Ljava/lang/String;

    iget-object v1, p1, Lcom/upsight/android/internal/logger/LogMessage;->level:Lcom/upsight/android/logger/UpsightLogger$Level;

    iget-object v2, p1, Lcom/upsight/android/internal/logger/LogMessage;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/upsight/android/internal/logger/LogMessage;->throwableString:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/upsight/android/internal/logger/LogMessage;-><init>(Ljava/lang/String;Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "level"    # Lcom/upsight/android/logger/UpsightLogger$Level;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "throwableString"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->tag:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/upsight/android/internal/logger/LogMessage;->level:Lcom/upsight/android/logger/UpsightLogger$Level;

    .line 38
    iput-object p3, p0, Lcom/upsight/android/internal/logger/LogMessage;->message:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/upsight/android/internal/logger/LogMessage;->throwableString:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p0, p1, :cond_5

    .line 96
    :cond_4
    :goto_4
    return v1

    .line 86
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 87
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 90
    check-cast v0, Lcom/upsight/android/internal/logger/LogMessage;

    .line 92
    .local v0, "that":Lcom/upsight/android/internal/logger/LogMessage;
    iget-object v3, p0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_24
    move v1, v2

    .line 93
    goto :goto_4

    .line 92
    :cond_26
    iget-object v3, v0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_24
.end method

.method public getLevel()Lcom/upsight/android/logger/UpsightLogger$Level;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->level:Lcom/upsight/android/logger/UpsightLogger$Level;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowableString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->throwableString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/upsight/android/internal/logger/LogMessage;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setLevel(Lcom/upsight/android/logger/UpsightLogger$Level;)V
    .registers 2
    .param p1, "level"    # Lcom/upsight/android/logger/UpsightLogger$Level;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->level:Lcom/upsight/android/logger/UpsightLogger$Level;

    .line 79
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->message:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->tag:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setThrowableString(Ljava/lang/String;)V
    .registers 2
    .param p1, "throwableString"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/upsight/android/internal/logger/LogMessage;->throwableString:Ljava/lang/String;

    .line 71
    return-void
.end method
