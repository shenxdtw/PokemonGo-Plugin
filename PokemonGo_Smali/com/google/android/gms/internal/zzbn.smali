.class public Lcom/google/android/gms/internal/zzbn;
.super Ljava/lang/Object;


# direct methods
.method public static zzC(Ljava/lang/String;)I
    .registers 4

    const/4 v2, 0x0

    :try_start_1
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_6} :catch_d

    move-result-object v0

    :goto_7
    array-length v1, v0

    invoke-static {v0, v2, v1, v2}, Lcom/google/android/gms/internal/zzmw;->zza([BIII)I

    move-result v0

    return v0

    :catch_d
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_7
.end method

.method public static zzD(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    const/4 v2, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    move v3, v2

    move v0, v2

    move v1, v2

    :goto_15
    if-ge v1, v6, :cond_6c

    invoke-static {v5, v1}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    invoke-static {v7}, Lcom/google/android/gms/internal/zzbn;->zzh(I)Z

    move-result v9

    if-eqz v9, :cond_40

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/String;

    sub-int v7, v1, v0

    invoke-direct {v3, v5, v0, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_31
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5, v1, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v0

    move v0, v2

    :goto_3b
    add-int/2addr v1, v8

    move v11, v0

    move v0, v3

    move v3, v11

    goto :goto_15

    :cond_40
    invoke-static {v7}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v9

    if-nez v9, :cond_55

    invoke-static {v7}, Ljava/lang/Character;->getType(I)I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_55

    invoke-static {v7}, Ljava/lang/Character;->getType(I)I

    move-result v7

    const/16 v9, 0x8

    if-ne v7, v9, :cond_5d

    :cond_55
    if-nez v3, :cond_58

    move v0, v1

    :cond_58
    const/4 v3, 0x1

    move v11, v3

    move v3, v0

    move v0, v11

    goto :goto_3b

    :cond_5d
    if-eqz v3, :cond_84

    new-instance v3, Ljava/lang/String;

    sub-int v7, v1, v0

    invoke-direct {v3, v5, v0, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v0

    move v0, v2

    goto :goto_3b

    :cond_6c
    if-eqz v3, :cond_77

    new-instance v2, Ljava/lang/String;

    sub-int/2addr v1, v0

    invoke-direct {v2, v5, v0, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_77
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_4

    :cond_84
    move v11, v3

    move v3, v0

    move v0, v11

    goto :goto_3b
.end method

.method private static zza(Ljava/lang/Character$UnicodeBlock;)Z
    .registers 2

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_38

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO_EXTENDED:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_38

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_38

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_38

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_38

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_38

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_38

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_38

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->ENCLOSED_CJK_LETTERS_AND_MONTHS:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_38

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_38

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_38

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_38

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq p0, v0, :cond_38

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-ne p0, v0, :cond_3a

    :cond_38
    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method static zzh(I)Z
    .registers 2

    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbn;->zza(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbn;->zzi(I)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private static zzi(I)Z
    .registers 2

    const v0, 0xff66

    if-lt p0, v0, :cond_a

    const v0, 0xff9d

    if-le p0, v0, :cond_14

    :cond_a
    const v0, 0xffa1

    if-lt p0, v0, :cond_16

    const v0, 0xffdc

    if-gt p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
