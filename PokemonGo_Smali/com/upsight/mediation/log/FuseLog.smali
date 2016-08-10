.class public Lcom/upsight/mediation/log/FuseLog;
.super Ljava/lang/Object;
.source "FuseLog.java"


# static fields
.field private static INTERNAL:Z

.field public static LOG:Z

.field private static buffer:Lcom/upsight/mediation/log/LogBuffer;

.field public static debug:Z

.field private static testingMode:Z

.field public static veryDebug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/upsight/mediation/log/LogBuffer;

    const/16 v1, 0x64

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/log/LogBuffer;-><init>(II)V

    sput-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    .line 14
    sput-boolean v3, Lcom/upsight/mediation/log/FuseLog;->debug:Z

    .line 15
    sput-boolean v3, Lcom/upsight/mediation/log/FuseLog;->veryDebug:Z

    .line 16
    sput-boolean v3, Lcom/upsight/mediation/log/FuseLog;->INTERNAL:Z

    .line 17
    sput-boolean v3, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/upsight/mediation/log/FuseLog;->LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TOAST(Ljava/lang/String;)V
    .registers 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    if-eqz v0, :cond_4

    .line 168
    :cond_4
    return-void
.end method

.method public static clearBuffer()V
    .registers 3

    .prologue
    .line 30
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->INTERNAL:Z

    if-eqz v0, :cond_f

    .line 31
    new-instance v0, Lcom/upsight/mediation/log/LogBuffer;

    const/16 v1, 0xc8

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/log/LogBuffer;-><init>(II)V

    sput-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    .line 33
    :cond_f
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 125
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    if-eqz v0, :cond_5

    .line 132
    :cond_4
    :goto_4
    return-void

    .line 128
    :cond_5
    sget-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    const-string v1, "d"

    invoke-virtual {v0, v1, p0, p1}, Lcom/upsight/mediation/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->veryDebug:Z

    if-eqz v0, :cond_4

    .line 130
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static disableForTests()V
    .registers 1

    .prologue
    .line 171
    const/4 v0, 0x1

    sput-boolean v0, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    .line 172
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    if-eqz v0, :cond_5

    .line 80
    :cond_4
    :goto_4
    return-void

    .line 76
    :cond_5
    sget-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    const-string v1, "e"

    invoke-virtual {v0, v1, p0, p1}, Lcom/upsight/mediation/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->debug:Z

    if-eqz v0, :cond_4

    .line 78
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    if-eqz v0, :cond_5

    .line 90
    :cond_4
    :goto_4
    return-void

    .line 86
    :cond_5
    sget-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    const-string v1, "e"

    invoke-virtual {v0, v1, p0, p1}, Lcom/upsight/mediation/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->debug:Z

    if-eqz v0, :cond_4

    .line 88
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static enableInternalLogging()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    .line 20
    new-instance v0, Lcom/upsight/mediation/log/LogBuffer;

    const/16 v1, 0xc8

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v2}, Lcom/upsight/mediation/log/LogBuffer;-><init>(II)V

    sput-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    .line 21
    sput-boolean v3, Lcom/upsight/mediation/log/FuseLog;->debug:Z

    .line 22
    sput-boolean v3, Lcom/upsight/mediation/log/FuseLog;->veryDebug:Z

    .line 23
    sput-boolean v3, Lcom/upsight/mediation/log/FuseLog;->INTERNAL:Z

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1b

    .line 25
    invoke-static {v3}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 27
    :cond_1b
    return-void
.end method

.method public static getLogHistory()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 158
    sget-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    invoke-virtual {v0}, Lcom/upsight/mediation/log/LogBuffer;->getLog()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    if-eqz v0, :cond_5

    .line 120
    :cond_4
    :goto_4
    return-void

    .line 116
    :cond_5
    sget-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    const-string v1, "i"

    invoke-virtual {v0, v1, p0, p1}, Lcom/upsight/mediation/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->debug:Z

    if-eqz v0, :cond_4

    .line 118
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static internal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 148
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    if-eqz v0, :cond_5

    .line 155
    :cond_4
    :goto_4
    return-void

    .line 151
    :cond_5
    sget-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    const-string v1, "INTERNAL"

    invoke-virtual {v0, v1, p0, p1}, Lcom/upsight/mediation/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->INTERNAL:Z

    if-eqz v0, :cond_4

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTERNAL | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static public_e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    if-eqz v0, :cond_5

    .line 44
    :goto_4
    return-void

    .line 42
    :cond_5
    sget-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    const-string v1, "e"

    invoke-virtual {v0, v1, p0, p1}, Lcom/upsight/mediation/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static public_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 47
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    if-eqz v0, :cond_5

    .line 52
    :goto_4
    return-void

    .line 50
    :cond_5
    sget-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    const-string v1, "e"

    invoke-virtual {v0, v1, p0, p1}, Lcom/upsight/mediation/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static public_w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 55
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    if-eqz v0, :cond_5

    .line 60
    :goto_4
    return-void

    .line 58
    :cond_5
    sget-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    const-string v1, "w"

    invoke-virtual {v0, v1, p0, p1}, Lcom/upsight/mediation/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static public_w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    if-eqz v0, :cond_5

    .line 68
    :goto_4
    return-void

    .line 66
    :cond_5
    sget-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    const-string v1, "w"

    invoke-virtual {v0, v1, p0, p1}, Lcom/upsight/mediation/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    if-eqz v0, :cond_5

    .line 143
    :cond_4
    :goto_4
    return-void

    .line 139
    :cond_5
    sget-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    const-string v1, "v"

    invoke-virtual {v0, v1, p0, p1}, Lcom/upsight/mediation/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->veryDebug:Z

    if-eqz v0, :cond_4

    .line 141
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    if-eqz v0, :cond_5

    .line 100
    :cond_4
    :goto_4
    return-void

    .line 96
    :cond_5
    sget-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    const-string v1, "w"

    invoke-virtual {v0, v1, p0, p1}, Lcom/upsight/mediation/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->debug:Z

    if-eqz v0, :cond_4

    .line 98
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 103
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->testingMode:Z

    if-eqz v0, :cond_5

    .line 110
    :cond_4
    :goto_4
    return-void

    .line 106
    :cond_5
    sget-object v0, Lcom/upsight/mediation/log/FuseLog;->buffer:Lcom/upsight/mediation/log/LogBuffer;

    const-string v1, "w"

    invoke-virtual {v0, v1, p0, p1}, Lcom/upsight/mediation/log/LogBuffer;->append(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-boolean v0, Lcom/upsight/mediation/log/FuseLog;->debug:Z

    if-eqz v0, :cond_4

    .line 108
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method
