.class public abstract Lcrittercism/android/n;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcrittercism/android/n;->a:Ljava/util/Map;

    .line 12
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lcrittercism/android/n;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 61
    const/4 v1, 0x0

    .line 63
    if-eqz v0, :cond_18

    .line 64
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    :goto_17
    return-object v0

    :cond_18
    move-object v0, v1

    goto :goto_17
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .registers 5

    .prologue
    .line 71
    const-wide v0, 0x7fffffffffffffffL

    .line 73
    invoke-direct {p0, p1}, Lcrittercism/android/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    if-eqz v2, :cond_f

    .line 77
    :try_start_b
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_e} :catch_10

    move-result-wide v0

    .line 81
    :cond_f
    :goto_f
    return-wide v0

    :catch_10
    move-exception v2

    goto :goto_f
.end method

.method public final b(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 86
    const/4 v0, -0x1

    .line 88
    invoke-direct {p0, p1}, Lcrittercism/android/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    if-eqz v1, :cond_b

    .line 92
    :try_start_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_a} :catch_c

    move-result v0

    .line 96
    :cond_b
    :goto_b
    return v0

    :catch_c
    move-exception v1

    goto :goto_b
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcrittercism/android/n;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
