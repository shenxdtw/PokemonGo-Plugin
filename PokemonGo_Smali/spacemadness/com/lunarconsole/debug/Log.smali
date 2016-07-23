.class public Lspacemadness/com/lunarconsole/debug/Log;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspacemadness/com/lunarconsole/debug/Log$LogLevel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LunarConsole"

.field private static final logLevel:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Info:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    sput-object v0, Lspacemadness/com/lunarconsole/debug/Log;->logLevel:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lspacemadness/com/lunarconsole/debug/Log;->d(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public static varargs d(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "tag"    # Lspacemadness/com/lunarconsole/debug/Tag;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 87
    sget-object v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Debug:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    invoke-static {v0, p0, p1, p2}, Lspacemadness/com/lunarconsole/debug/Log;->log(Lspacemadness/com/lunarconsole/debug/Log$LogLevel;Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 97
    const/4 v0, 0x0

    check-cast v0, Lspacemadness/com/lunarconsole/debug/Tag;

    invoke-static {v0, p0, p1}, Lspacemadness/com/lunarconsole/debug/Log;->e(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 102
    invoke-static {p1, p2}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    if-eqz p0, :cond_8

    .line 105
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    :cond_8
    return-void
.end method

.method public static varargs e(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "tag"    # Lspacemadness/com/lunarconsole/debug/Tag;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 92
    sget-object v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Error:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    invoke-static {v0, p0, p1, p2}, Lspacemadness/com/lunarconsole/debug/Log;->log(Lspacemadness/com/lunarconsole/debug/Log$LogLevel;Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lspacemadness/com/lunarconsole/debug/Log;->i(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public static varargs i(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "tag"    # Lspacemadness/com/lunarconsole/debug/Tag;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 67
    sget-object v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Info:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    invoke-static {v0, p0, p1, p2}, Lspacemadness/com/lunarconsole/debug/Log;->log(Lspacemadness/com/lunarconsole/debug/Log$LogLevel;Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method private static varargs log(Lspacemadness/com/lunarconsole/debug/Log$LogLevel;Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "level"    # Lspacemadness/com/lunarconsole/debug/Log$LogLevel;
    .param p1, "tag"    # Lspacemadness/com/lunarconsole/debug/Tag;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 111
    invoke-static {p0}, Lspacemadness/com/lunarconsole/debug/Log;->shouldLogLevel(Lspacemadness/com/lunarconsole/debug/Log$LogLevel;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lspacemadness/com/lunarconsole/debug/Log;->shouldLogTag(Lspacemadness/com/lunarconsole/debug/Tag;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 113
    if-eqz p2, :cond_12

    .line 115
    invoke-static {p0, p2, p3}, Lspacemadness/com/lunarconsole/debug/Log;->logHelper(Lspacemadness/com/lunarconsole/debug/Log$LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :cond_11
    :goto_11
    return-void

    .line 119
    :cond_12
    const-string v0, "null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lspacemadness/com/lunarconsole/debug/Log;->logHelper(Lspacemadness/com/lunarconsole/debug/Log$LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11
.end method

.method private static varargs logHelper(Lspacemadness/com/lunarconsole/debug/Log$LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 9
    .param p0, "level"    # Lspacemadness/com/lunarconsole/debug/Log$LogLevel;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 126
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->getAndroidLogPriority()I

    move-result v1

    .line 128
    .local v1, "priority":I
    invoke-static {p1, p2}, Lspacemadness/com/lunarconsole/utils/StringUtils;->TryFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "threadName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LunarConsole/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "tag":Ljava/lang/String;
    invoke-static {v1, v2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void
.end method

.method private static shouldLogLevel(Lspacemadness/com/lunarconsole/debug/Log$LogLevel;)Z
    .registers 3
    .param p0, "level"    # Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    .prologue
    .line 136
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lspacemadness/com/lunarconsole/debug/Log;->logLevel:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    invoke-virtual {v1}, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static shouldLogTag(Lspacemadness/com/lunarconsole/debug/Tag;)Z
    .registers 2
    .param p0, "tag"    # Lspacemadness/com/lunarconsole/debug/Tag;

    .prologue
    .line 141
    if-eqz p0, :cond_6

    iget-boolean v0, p0, Lspacemadness/com/lunarconsole/debug/Tag;->enabled:Z

    if-eqz v0, :cond_8

    :cond_6
    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lspacemadness/com/lunarconsole/debug/Log;->w(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static varargs w(Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p0, "tag"    # Lspacemadness/com/lunarconsole/debug/Tag;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 77
    sget-object v0, Lspacemadness/com/lunarconsole/debug/Log$LogLevel;->Warn:Lspacemadness/com/lunarconsole/debug/Log$LogLevel;

    invoke-static {v0, p0, p1, p2}, Lspacemadness/com/lunarconsole/debug/Log;->log(Lspacemadness/com/lunarconsole/debug/Log$LogLevel;Lspacemadness/com/lunarconsole/debug/Tag;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    return-void
.end method
