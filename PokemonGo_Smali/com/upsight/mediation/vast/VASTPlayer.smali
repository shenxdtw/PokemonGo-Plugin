.class public Lcom/upsight/mediation/vast/VASTPlayer;
.super Ljava/lang/Object;
.source "VASTPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;
    }
.end annotation


# static fields
.field public static final ERROR_EXCEEDED_WRAPPER_LIMIT:I = 0x12e

.field public static final ERROR_FILE_NOT_FOUND:I = 0x191

.field public static final ERROR_GENERAL_LINEAR:I = 0x190

.field public static final ERROR_GENERAL_WRAPPER:I = 0x12c

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NO_COMPATIBLE_MEDIA_FILE:I = 0x193

.field public static final ERROR_NO_NETWORK:I = 0x1

.field public static final ERROR_NO_VAST_IN_WRAPPER:I = 0x12f

.field public static final ERROR_SCHEMA_VALIDATION:I = 0x65

.field public static final ERROR_UNDEFINED:I = 0x384

.field public static final ERROR_UNSUPPORTED_VERSION:I = 0x66

.field public static final ERROR_VIDEO_PLAYBACK:I = 0x195

.field public static final ERROR_VIDEO_TIMEOUT:I = 0x192

.field public static final ERROR_WRAPPER_TIMEOUT:I = 0x12d

.field public static final ERROR_XML_PARSE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "VASTPlayer"

.field public static final VERSION:Ljava/lang/String; = "1.3"

.field public static currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;


# instance fields
.field private actionText:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private final downloadTimeout:I

.field private final endCardHtml:Ljava/lang/String;

.field private isRewarded:Z

.field public listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

.field private loaded:Z

.field private maxVideoFileSize:Ljava/lang/String;

.field private postroll:Z

.field private shouldValidateSchema:Z

.field private skipOffset:J

.field private vastModel:Lcom/upsight/mediation/vast/model/VASTModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;ZLjava/lang/String;JZLjava/lang/String;ZLjava/lang/String;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;
    .param p3, "postroll"    # Z
    .param p4, "endCardHtml"    # Ljava/lang/String;
    .param p5, "skipOffset"    # J
    .param p7, "isRewarded"    # Z
    .param p8, "maxVideoFileSize"    # Ljava/lang/String;
    .param p9, "shouldValidateSchema"    # Z
    .param p10, "actionText"    # Ljava/lang/String;
    .param p11, "downloadTimeout"    # I

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/mediation/vast/VASTPlayer;->loaded:Z

    .line 98
    iput-object p1, p0, Lcom/upsight/mediation/vast/VASTPlayer;->context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    .line 100
    iput-boolean p3, p0, Lcom/upsight/mediation/vast/VASTPlayer;->postroll:Z

    .line 101
    iput-wide p5, p0, Lcom/upsight/mediation/vast/VASTPlayer;->skipOffset:J

    .line 102
    iput-boolean p7, p0, Lcom/upsight/mediation/vast/VASTPlayer;->isRewarded:Z

    .line 103
    iput-object p8, p0, Lcom/upsight/mediation/vast/VASTPlayer;->maxVideoFileSize:Ljava/lang/String;

    .line 104
    iput-boolean p9, p0, Lcom/upsight/mediation/vast/VASTPlayer;->shouldValidateSchema:Z

    .line 105
    iput-object p10, p0, Lcom/upsight/mediation/vast/VASTPlayer;->actionText:Ljava/lang/String;

    .line 106
    iput-object p4, p0, Lcom/upsight/mediation/vast/VASTPlayer;->endCardHtml:Ljava/lang/String;

    .line 107
    iput p11, p0, Lcom/upsight/mediation/vast/VASTPlayer;->downloadTimeout:I

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/mediation/vast/VASTPlayer;I)V
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/VASTPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/upsight/mediation/vast/VASTPlayer;->sendError(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/mediation/vast/VASTPlayer;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/VASTPlayer;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/upsight/mediation/vast/VASTPlayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/mediation/vast/VASTPlayer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/VASTPlayer;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/VASTPlayer;->shouldValidateSchema:Z

    return v0
.end method

.method static synthetic access$300(Lcom/upsight/mediation/vast/VASTPlayer;)I
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/VASTPlayer;

    .prologue
    .line 26
    iget v0, p0, Lcom/upsight/mediation/vast/VASTPlayer;->downloadTimeout:I

    return v0
.end method

.method static synthetic access$402(Lcom/upsight/mediation/vast/VASTPlayer;Lcom/upsight/mediation/vast/model/VASTModel;)Lcom/upsight/mediation/vast/model/VASTModel;
    .registers 2
    .param p0, "x0"    # Lcom/upsight/mediation/vast/VASTPlayer;
    .param p1, "x1"    # Lcom/upsight/mediation/vast/model/VASTModel;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/upsight/mediation/vast/VASTPlayer;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    return-object p1
.end method

.method private sendError(I)V
    .registers 4
    .param p1, "error"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    if-eqz v0, :cond_10

    .line 218
    iget-object v0, p0, Lcom/upsight/mediation/vast/VASTPlayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/upsight/mediation/vast/VASTPlayer$3;

    invoke-direct {v1, p0, p1}, Lcom/upsight/mediation/vast/VASTPlayer$3;-><init>(Lcom/upsight/mediation/vast/VASTPlayer;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 225
    :cond_10
    return-void
.end method


# virtual methods
.method public getMaxFileSize()J
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/upsight/mediation/vast/VASTPlayer;->maxVideoFileSize:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const v1, 0x49742400    # 1000000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public isLoaded()Z
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/upsight/mediation/vast/VASTPlayer;->loaded:Z

    return v0
.end method

.method public loadVastResponseViaURL(Ljava/lang/String;)V
    .registers 4
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/mediation/vast/VASTPlayer;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    .line 127
    iget-object v0, p0, Lcom/upsight/mediation/vast/VASTPlayer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/upsight/mediation/vast/util/NetworkTools;->connectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 128
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/upsight/mediation/vast/VASTPlayer$1;

    invoke-direct {v1, p0, p1}, Lcom/upsight/mediation/vast/VASTPlayer$1;-><init>(Lcom/upsight/mediation/vast/VASTPlayer;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    :goto_18
    return-void

    .line 157
    :cond_19
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/upsight/mediation/vast/VASTPlayer;->sendError(I)V

    goto :goto_18
.end method

.method public loadVastResponseViaXML(Ljava/lang/String;)V
    .registers 4
    .param p1, "xmlData"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/mediation/vast/VASTPlayer;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    .line 163
    iget-object v0, p0, Lcom/upsight/mediation/vast/VASTPlayer;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/upsight/mediation/vast/util/NetworkTools;->connectedToInternet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 164
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/upsight/mediation/vast/VASTPlayer$2;

    invoke-direct {v1, p0, p1}, Lcom/upsight/mediation/vast/VASTPlayer$2;-><init>(Lcom/upsight/mediation/vast/VASTPlayer;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 180
    :goto_18
    return-void

    .line 178
    :cond_19
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/upsight/mediation/vast/VASTPlayer;->sendError(I)V

    goto :goto_18
.end method

.method public play()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 184
    iget-object v9, p0, Lcom/upsight/mediation/vast/VASTPlayer;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    if-eqz v9, :cond_b1

    .line 185
    sput-object p0, Lcom/upsight/mediation/vast/VASTPlayer;->currentPlayer:Lcom/upsight/mediation/vast/VASTPlayer;

    .line 186
    new-instance v5, Landroid/content/Intent;

    iget-object v9, p0, Lcom/upsight/mediation/vast/VASTPlayer;->context:Landroid/content/Context;

    const-class v10, Lcom/upsight/mediation/vast/activity/VASTActivity;

    invoke-direct {v5, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .local v5, "vastPlayerIntent":Landroid/content/Intent;
    const-string v9, "com.nexage.android.vast.player.vastModel"

    iget-object v10, p0, Lcom/upsight/mediation/vast/VASTPlayer;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 188
    const-string v9, "postroll"

    iget-boolean v10, p0, Lcom/upsight/mediation/vast/VASTPlayer;->postroll:Z

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 189
    const-string v9, "endCardHtml"

    iget-object v10, p0, Lcom/upsight/mediation/vast/VASTPlayer;->endCardHtml:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    iget-object v9, p0, Lcom/upsight/mediation/vast/VASTPlayer;->vastModel:Lcom/upsight/mediation/vast/model/VASTModel;

    invoke-virtual {v9}, Lcom/upsight/mediation/vast/model/VASTModel;->getSkipOffset()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, "xmlSkipOffset":Ljava/lang/String;
    if-eqz v8, :cond_8e

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "components":[Ljava/lang/String;
    :goto_33
    array-length v9, v0

    const/4 v10, 0x3

    if-ne v9, v10, :cond_73

    .line 195
    const/4 v9, 0x0

    :try_start_38
    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 196
    .local v2, "hours":I
    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 197
    .local v3, "minutes":I
    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 198
    .local v4, "seconds":I
    const v9, 0x36ee80

    mul-int/2addr v9, v2

    const v10, 0xea60

    mul-int/2addr v10, v3

    add-int/2addr v9, v10

    mul-int/lit16 v10, v4, 0x3e8

    add-int/2addr v9, v10

    int-to-long v6, v9

    .line 199
    .local v6, "timeoutMs":J
    const-string v9, "VASTPlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Overriding server sent skip offset with VAST offset from XML: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/upsight/mediation/log/FuseLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iput-wide v6, p0, Lcom/upsight/mediation/vast/VASTPlayer;->skipOffset:J
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_73} :catch_91

    .line 206
    .end local v2    # "hours":I
    .end local v3    # "minutes":I
    .end local v4    # "seconds":I
    .end local v6    # "timeoutMs":J
    :cond_73
    :goto_73
    const-string v9, "skipOffset"

    iget-wide v10, p0, Lcom/upsight/mediation/vast/VASTPlayer;->skipOffset:J

    invoke-virtual {v5, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 207
    const-string v9, "rewarded"

    iget-boolean v10, p0, Lcom/upsight/mediation/vast/VASTPlayer;->isRewarded:Z

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    const-string v9, "actionText"

    iget-object v10, p0, Lcom/upsight/mediation/vast/VASTPlayer;->actionText:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v9, p0, Lcom/upsight/mediation/vast/VASTPlayer;->context:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 213
    .end local v0    # "components":[Ljava/lang/String;
    .end local v5    # "vastPlayerIntent":Landroid/content/Intent;
    .end local v8    # "xmlSkipOffset":Ljava/lang/String;
    :goto_8d
    return-void

    .line 192
    .restart local v5    # "vastPlayerIntent":Landroid/content/Intent;
    .restart local v8    # "xmlSkipOffset":Ljava/lang/String;
    :cond_8e
    new-array v0, v11, [Ljava/lang/String;

    goto :goto_33

    .line 201
    .restart local v0    # "components":[Ljava/lang/String;
    :catch_91
    move-exception v1

    .line 202
    .local v1, "ex":Ljava/lang/NumberFormatException;
    const-string v9, "VASTPlayer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not parse skip offset from xml: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", using cb_ms instead"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/upsight/mediation/log/FuseLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73

    .line 211
    .end local v0    # "components":[Ljava/lang/String;
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .end local v5    # "vastPlayerIntent":Landroid/content/Intent;
    .end local v8    # "xmlSkipOffset":Ljava/lang/String;
    :cond_b1
    const-string v9, "VASTPlayer"

    const-string v10, "vastModel is null; nothing to play"

    invoke-static {v9, v10}, Lcom/upsight/mediation/log/FuseLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d
.end method

.method public setLoaded(Z)V
    .registers 3
    .param p1, "loaded"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/upsight/mediation/vast/VASTPlayer;->loaded:Z

    .line 112
    if-eqz p1, :cond_9

    .line 113
    iget-object v0, p0, Lcom/upsight/mediation/vast/VASTPlayer;->listener:Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;

    invoke-interface {v0}, Lcom/upsight/mediation/vast/VASTPlayer$VASTPlayerListener;->vastReady()V

    .line 115
    :cond_9
    return-void
.end method
