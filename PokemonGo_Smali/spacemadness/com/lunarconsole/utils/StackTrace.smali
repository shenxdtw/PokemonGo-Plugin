.class public Lspacemadness/com/lunarconsole/utils/StackTrace;
.super Ljava/lang/Object;
.source "StackTrace.java"


# static fields
.field public static final MARKER_ASSETS:Ljava/lang/String; = "/Assets/"

.field public static final MARKER_AT:Ljava/lang/String; = " (at "


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static optimize(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 35
    if-eqz p0, :cond_26

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_26

    .line 37
    const-string v4, "\n"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "lines":[Ljava/lang/String;
    array-length v4, v2

    new-array v3, v4, [Ljava/lang/String;

    .line 39
    .local v3, "newLines":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v4, v2

    if-ge v1, v4, :cond_20

    .line 41
    aget-object v4, v2, v1

    invoke-static {v4}, Lspacemadness/com/lunarconsole/utils/StackTrace;->optimizeLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 44
    :cond_20
    const-string v4, "\n"

    invoke-static {v3, v4}, Lspacemadness/com/lunarconsole/utils/StringUtils;->Join([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_27

    move-result-object p0

    .line 52
    .end local v1    # "i":I
    .end local v2    # "lines":[Ljava/lang/String;
    .end local v3    # "newLines":[Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    :cond_26
    :goto_26
    return-object p0

    .line 47
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_27
    move-exception v0

    .line 49
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "Error while optimizing stacktrace: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-static {v0, v4, v5}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_26
.end method

.method private static optimizeLine(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 57
    const-string v2, " (at "

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, "start":I
    if-ne v1, v3, :cond_a

    .line 63
    .end local p0    # "line":Ljava/lang/String;
    :cond_9
    :goto_9
    return-object p0

    .line 60
    .restart local p0    # "line":Ljava/lang/String;
    :cond_a
    const-string v2, "/Assets/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 61
    .local v0, "end":I
    if-eq v0, v3, :cond_9

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const-string v4, " (at "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method
