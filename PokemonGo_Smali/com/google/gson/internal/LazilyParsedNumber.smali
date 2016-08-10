.class public final Lcom/google/gson/internal/LazilyParsedNumber;
.super Ljava/lang/Number;
.source "LazilyParsedNumber.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public doubleValue()D
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 87
    if-ne p0, p1, :cond_6

    move v1, v2

    .line 94
    :cond_5
    :goto_5
    return v1

    .line 90
    :cond_6
    instance-of v3, p1, Lcom/google/gson/internal/LazilyParsedNumber;

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 91
    check-cast v0, Lcom/google/gson/internal/LazilyParsedNumber;

    .line 92
    .local v0, "other":Lcom/google/gson/internal/LazilyParsedNumber;
    iget-object v3, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    if-eq v3, v4, :cond_1d

    iget-object v3, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1d
    move v1, v2

    goto :goto_5
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .registers 5

    .prologue
    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v2

    .line 42
    :goto_6
    return v2

    .line 38
    :catch_7
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_8
    iget-object v2, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_d} :catch_10

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_6

    .line 41
    :catch_10
    move-exception v1

    .line 42
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v2

    goto :goto_6
.end method

.method public longValue()J
    .registers 5

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v2

    .line 52
    :goto_6
    return-wide v2

    .line 51
    :catch_7
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v2

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    return-object v0
.end method
