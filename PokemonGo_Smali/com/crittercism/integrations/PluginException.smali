.class public Lcom/crittercism/integrations/PluginException;
.super Ljava/lang/Throwable;


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final serialVersionUID:J = -0x1b060f4d0d50af6bL


# instance fields
.field private exceptionName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/integrations/PluginException;->exceptionName:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "stack"    # Ljava/lang/String;

    .prologue
    .line 19
    const-string v0, ""

    invoke-direct {p0, v0, p1, p2}, Lcom/crittercism/integrations/PluginException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "stack"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/integrations/PluginException;->exceptionName:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/crittercism/integrations/PluginException;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/crittercism/integrations/PluginException;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/crittercism/integrations/PluginException;->setExceptionName(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {p3}, Lcom/crittercism/integrations/PluginException;->checkStringStack(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/crittercism/integrations/PluginException;->createStackTraceArrayFromStack([Ljava/lang/String;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crittercism/integrations/PluginException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "classStackElems"    # [Ljava/lang/String;
    .param p4, "methodStackElems"    # [Ljava/lang/String;
    .param p5, "fileStackElems"    # [Ljava/lang/String;
    .param p6, "lineNumberStackElems"    # [I

    .prologue
    .line 154
    invoke-direct {p0, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/crittercism/integrations/PluginException;->exceptionName:Ljava/lang/String;

    .line 155
    invoke-static {p1}, Lcom/crittercism/integrations/PluginException;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/crittercism/integrations/PluginException;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/crittercism/integrations/PluginException;->setExceptionName(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, p3, p4, p5, p6}, Lcom/crittercism/integrations/PluginException;->createStackTraceArrayFromStack([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/crittercism/integrations/PluginException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 158
    return-void
.end method

.method private static checkString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 251
    if-nez p0, :cond_4

    .line 252
    const-string p0, ""

    .line 254
    .end local p0    # "s":Ljava/lang/String;
    :cond_4
    return-object p0
.end method

.method private static checkStringStack(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "stack"    # Ljava/lang/String;

    .prologue
    .line 262
    if-nez p0, :cond_6

    .line 263
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 265
    :goto_5
    return-object v0

    :cond_6
    const-string v0, "\\r?\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private createStackTraceArrayFromStack([Ljava/lang/String;)[Ljava/lang/StackTraceElement;
    .registers 11
    .param p1, "stack"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 185
    const/4 v2, 0x0

    .line 189
    array-length v3, p1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_44

    aget-object v3, p1, v1

    if-eqz v3, :cond_44

    aget-object v3, p1, v0

    if-eqz v3, :cond_44

    .line 190
    aget-object v3, p1, v1

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 192
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Ljava/lang/StackTraceElement;

    move v3, v0

    move-object v0, v2

    .line 196
    :goto_20
    if-nez v3, :cond_25

    .line 197
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    .line 200
    :cond_25
    :goto_25
    array-length v2, p1

    if-ge v1, v2, :cond_43

    .line 201
    if-nez v1, :cond_2c

    if-nez v3, :cond_3e

    .line 202
    :cond_2c
    if-eqz v3, :cond_41

    add-int/lit8 v2, v1, -0x1

    .line 208
    :goto_30
    new-instance v4, Ljava/lang/StackTraceElement;

    const-string v5, ""

    aget-object v6, p1, v1

    const-string v7, ""

    const/4 v8, -0x1

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v4, v0, v2

    .line 200
    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_41
    move v2, v1

    .line 202
    goto :goto_30

    .line 212
    :cond_43
    return-object v0

    :cond_44
    move v3, v1

    move-object v0, v2

    goto :goto_20
.end method

.method private createStackTraceArrayFromStack([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)[Ljava/lang/StackTraceElement;
    .registers 13
    .param p1, "classStackElems"    # [Ljava/lang/String;
    .param p2, "methodStackElems"    # [Ljava/lang/String;
    .param p3, "fileStackElems"    # [Ljava/lang/String;
    .param p4, "lineNumberStackElems"    # [I

    .prologue
    .line 228
    array-length v2, p1

    .line 229
    new-array v3, v2, [Ljava/lang/StackTraceElement;

    .line 231
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v2, :cond_29

    .line 232
    aget v0, p4, v1

    .line 233
    if-gtz v0, :cond_c

    .line 236
    const/4 v0, -0x1

    .line 238
    :cond_c
    new-instance v4, Ljava/lang/StackTraceElement;

    aget-object v5, p1, v1

    invoke-static {v5}, Lcom/crittercism/integrations/PluginException;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aget-object v6, p2, v1

    invoke-static {v6}, Lcom/crittercism/integrations/PluginException;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aget-object v7, p3, v1

    invoke-static {v7}, Lcom/crittercism/integrations/PluginException;->checkString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, v0}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v4, v3, v1

    .line 231
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 244
    :cond_29
    return-object v3
.end method

.method public static createUnityException(Ljava/lang/String;Ljava/lang/String;)Lcom/crittercism/integrations/PluginException;
    .registers 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "stack"    # Ljava/lang/String;

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 45
    :try_start_1
    invoke-static {p0, p1}, Lcom/crittercism/integrations/PluginException;->unsafeCreateUnityException(Ljava/lang/String;Ljava/lang/String;)Lcom/crittercism/integrations/PluginException;
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_4} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_8

    move-result-object v0

    .line 52
    :goto_5
    return-object v0

    .line 46
    :catch_6
    move-exception v0

    throw v0

    .line 48
    :catch_8
    move-exception v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to log unity exception <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcrittercism/android/dx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method private static unsafeCreateUnityException(Ljava/lang/String;Ljava/lang/String;)Lcom/crittercism/integrations/PluginException;
    .registers 15
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "stack"    # Ljava/lang/String;

    .prologue
    .line 55
    if-nez p0, :cond_4

    .line 56
    const-string p0, ""

    .line 59
    :cond_4
    if-nez p1, :cond_8

    .line 60
    const-string p1, ""

    .line 64
    :cond_8
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 65
    const/4 v0, -0x1

    if-eq v1, v0, :cond_13c

    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 68
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 69
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 73
    :cond_2c
    :goto_2c
    new-instance v3, Lcom/crittercism/integrations/PluginException;

    invoke-direct {v3, p0}, Lcom/crittercism/integrations/PluginException;-><init>(Ljava/lang/String;)V

    .line 74
    iput-object v0, v3, Lcom/crittercism/integrations/PluginException;->exceptionName:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_45

    .line 78
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {v3, v0}, Lcom/crittercism/integrations/PluginException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    move-object v0, v3

    .line 136
    :goto_44
    return-object v0

    .line 86
    :cond_45
    const-string v0, "\\r?\\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 87
    array-length v0, v4

    new-array v5, v0, [Ljava/lang/StackTraceElement;

    .line 89
    const/4 v0, 0x0

    :goto_4f
    array-length v1, v4

    if-ge v0, v1, :cond_136

    .line 90
    aget-object v1, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_106

    .line 92
    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 96
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 97
    const/4 v7, -0x1

    if-ne v2, v7, :cond_8e

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to parse unity exception.  No class and method found for frame frame <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    .line 99
    const/4 v0, 0x0

    goto :goto_44

    .line 100
    :cond_8e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_b4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to parse unity exception.  Method is zero length for frame <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    goto :goto_44

    .line 105
    :cond_b4
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 106
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 107
    const/4 v2, 0x0

    .line 108
    const/4 v1, -0x1

    .line 110
    const-string v9, " (at "

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 112
    const/4 v10, -0x1

    if-eq v9, v10, :cond_ff

    .line 113
    add-int/lit8 v9, v9, 0x5

    aget-object v10, v4, v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 114
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 116
    array-length v10, v9

    const/4 v11, 0x2

    if-lt v10, v11, :cond_11c

    .line 117
    const/4 v2, 0x0

    aget-object v2, v9, v2

    .line 121
    :try_start_e5
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v9, v10

    .line 122
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 123
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v10, v12, v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_fe
    .catch Ljava/lang/NumberFormatException; {:try_start_e5 .. :try_end_fe} :catch_10a

    move-result-object v2

    .line 132
    :cond_ff
    :goto_ff
    new-instance v6, Ljava/lang/StackTraceElement;

    invoke-direct {v6, v7, v8, v2, v1}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v6, v5, v0

    .line 89
    :cond_106
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4f

    .line 125
    :catch_10a
    move-exception v6

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Couldn\'t parse integer: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->a()V

    goto :goto_ff

    .line 128
    :cond_11c
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "Unable to parse file & line out of Unity stack trace frame: "

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " ::: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v9, v4, v0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    goto :goto_ff

    .line 135
    :cond_136
    invoke-virtual {v3, v5}, Lcom/crittercism/integrations/PluginException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    move-object v0, v3

    .line 136
    goto/16 :goto_44

    :cond_13c
    move-object v0, p0

    goto/16 :goto_2c
.end method


# virtual methods
.method public getExceptionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/crittercism/integrations/PluginException;->exceptionName:Ljava/lang/String;

    return-object v0
.end method

.method public setExceptionName(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 171
    iput-object p1, p0, Lcom/crittercism/integrations/PluginException;->exceptionName:Ljava/lang/String;

    .line 175
    :goto_8
    return-void

    .line 173
    :cond_9
    const-string v0, "JavaScript Exception"

    iput-object v0, p0, Lcom/crittercism/integrations/PluginException;->exceptionName:Ljava/lang/String;

    goto :goto_8
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/crittercism/integrations/PluginException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-virtual {p0}, Lcom/crittercism/integrations/PluginException;->getExceptionName()Ljava/lang/String;

    move-result-object v0

    .line 276
    if-nez v1, :cond_b

    .line 279
    :goto_a
    return-object v0

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
