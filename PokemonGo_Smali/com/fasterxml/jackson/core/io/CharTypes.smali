.class public final Lcom/fasterxml/jackson/core/io/CharTypes;
.super Ljava/lang/Object;
.source "CharTypes.java"


# static fields
.field private static final HB:[B

.field private static final HC:[C

.field static final sHexValues:[I

.field static final sInputCodes:[I

.field static final sInputCodesComment:[I

.field static final sInputCodesJsNames:[I

.field static final sInputCodesUTF8:[I

.field static final sInputCodesUtf8JsNames:[I

.field static final sInputCodesWS:[I

.field static final sOutputEscapes128:[I


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/16 v12, 0xa

    const/4 v11, -0x1

    const/16 v10, 0x100

    const/16 v9, 0x80

    const/4 v8, 0x0

    .line 7
    const-string v6, "0123456789ABCDEF"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    sput-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    .line 10
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    array-length v4, v6

    .line 11
    .local v4, "len":I
    new-array v6, v4, [B

    sput-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    .line 12
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    if-ge v3, v4, :cond_26

    .line 13
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    sget-object v7, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    aget-char v7, v7, v3

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    .line 12
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 28
    :cond_26
    new-array v5, v10, [I

    .line 30
    .local v5, "table":[I
    const/4 v3, 0x0

    :goto_29
    const/16 v6, 0x20

    if-ge v3, v6, :cond_32

    .line 31
    aput v11, v5, v3

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 34
    :cond_32
    const/16 v6, 0x22

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 35
    const/16 v6, 0x5c

    const/4 v7, 0x1

    aput v7, v5, v6

    .line 36
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    .line 45
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    array-length v6, v6

    new-array v5, v6, [I

    .line 46
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    array-length v7, v5

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    const/16 v1, 0x80

    .local v1, "c":I
    :goto_4b
    if-ge v1, v10, :cond_6b

    .line 51
    and-int/lit16 v6, v1, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_59

    .line 52
    const/4 v2, 0x2

    .line 62
    .local v2, "code":I
    :goto_54
    aput v2, v5, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 53
    .end local v2    # "code":I
    :cond_59
    and-int/lit16 v6, v1, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_61

    .line 54
    const/4 v2, 0x3

    .restart local v2    # "code":I
    goto :goto_54

    .line 55
    .end local v2    # "code":I
    :cond_61
    and-int/lit16 v6, v1, 0xf8

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_69

    .line 57
    const/4 v2, 0x4

    .restart local v2    # "code":I
    goto :goto_54

    .line 60
    .end local v2    # "code":I
    :cond_69
    const/4 v2, -0x1

    .restart local v2    # "code":I
    goto :goto_54

    .line 64
    .end local v2    # "code":I
    :cond_6b
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    .line 75
    new-array v5, v10, [I

    .line 77
    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([II)V

    .line 79
    const/16 v3, 0x21

    :goto_74
    if-ge v3, v10, :cond_82

    .line 80
    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 81
    aput v8, v5, v3

    .line 79
    :cond_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 87
    :cond_82
    const/16 v6, 0x40

    aput v8, v5, v6

    .line 88
    const/16 v6, 0x23

    aput v8, v5, v6

    .line 89
    const/16 v6, 0x2a

    aput v8, v5, v6

    .line 90
    const/16 v6, 0x2d

    aput v8, v5, v6

    .line 91
    const/16 v6, 0x2b

    aput v8, v5, v6

    .line 92
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    .line 102
    new-array v5, v10, [I

    .line 104
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    array-length v7, v5

    invoke-static {v6, v8, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    invoke-static {v5, v9, v9, v8}, Ljava/util/Arrays;->fill([IIII)V

    .line 106
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    .line 115
    new-array v0, v10, [I

    .line 117
    .local v0, "buf":[I
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    invoke-static {v6, v9, v0, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    const/16 v6, 0x20

    invoke-static {v0, v8, v6, v11}, Ljava/util/Arrays;->fill([IIII)V

    .line 121
    const/16 v6, 0x9

    aput v8, v0, v6

    .line 122
    aput v12, v0, v12

    .line 123
    const/16 v6, 0xd

    const/16 v7, 0xd

    aput v7, v0, v6

    .line 124
    const/16 v6, 0x2a

    const/16 v7, 0x2a

    aput v7, v0, v6

    .line 125
    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    .line 136
    new-array v0, v10, [I

    .line 137
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    invoke-static {v6, v9, v0, v9, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    const/16 v6, 0x20

    invoke-static {v0, v8, v6, v11}, Ljava/util/Arrays;->fill([IIII)V

    .line 143
    const/16 v6, 0x20

    const/4 v7, 0x1

    aput v7, v0, v6

    .line 144
    const/16 v6, 0x9

    const/4 v7, 0x1

    aput v7, v0, v6

    .line 145
    aput v12, v0, v12

    .line 146
    const/16 v6, 0xd

    const/16 v7, 0xd

    aput v7, v0, v6

    .line 147
    const/16 v6, 0x2f

    const/16 v7, 0x2f

    aput v7, v0, v6

    .line 148
    const/16 v6, 0x23

    const/16 v7, 0x23

    aput v7, v0, v6

    .line 149
    sput-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesWS:[I

    .line 158
    new-array v5, v9, [I

    .line 160
    const/4 v3, 0x0

    :goto_f4
    const/16 v6, 0x20

    if-ge v3, v6, :cond_fd

    .line 162
    aput v11, v5, v3

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_f4

    .line 167
    :cond_fd
    const/16 v6, 0x22

    const/16 v7, 0x22

    aput v7, v5, v6

    .line 168
    const/16 v6, 0x5c

    const/16 v7, 0x5c

    aput v7, v5, v6

    .line 170
    const/16 v6, 0x8

    const/16 v7, 0x62

    aput v7, v5, v6

    .line 171
    const/16 v6, 0x9

    const/16 v7, 0x74

    aput v7, v5, v6

    .line 172
    const/16 v6, 0xc

    const/16 v7, 0x66

    aput v7, v5, v6

    .line 173
    const/16 v6, 0x6e

    aput v6, v5, v12

    .line 174
    const/16 v6, 0xd

    const/16 v7, 0x72

    aput v7, v5, v6

    .line 175
    sput-object v5, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 183
    new-array v6, v9, [I

    sput-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    .line 185
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    invoke-static {v6, v11}, Ljava/util/Arrays;->fill([II)V

    .line 186
    const/4 v3, 0x0

    :goto_131
    if-ge v3, v12, :cond_13c

    .line 187
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v7, v3, 0x30

    aput v3, v6, v7

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_131

    .line 189
    :cond_13c
    const/4 v3, 0x0

    :goto_13d
    const/4 v6, 0x6

    if-ge v3, v6, :cond_153

    .line 190
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v7, v3, 0x61

    add-int/lit8 v8, v3, 0xa

    aput v8, v6, v7

    .line 191
    sget-object v6, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    add-int/lit8 v7, v3, 0x41

    add-int/lit8 v8, v3, 0xa

    aput v8, v6, v7

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_13d

    .line 193
    :cond_153
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 12
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x30

    .line 220
    sget-object v2, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    .line 221
    .local v2, "escCodes":[I
    array-length v3, v2

    .line 222
    .local v3, "escLen":I
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "len":I
    :goto_a
    if-ge v4, v5, :cond_49

    .line 223
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 224
    .local v0, "c":C
    if-ge v0, v3, :cond_16

    aget v7, v2, v0

    if-nez v7, :cond_1c

    .line 225
    :cond_16
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :goto_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 228
    :cond_1c
    const/16 v7, 0x5c

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    aget v1, v2, v0

    .line 230
    .local v1, "escCode":I
    if-gez v1, :cond_44

    .line 239
    const/16 v7, 0x75

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    move v6, v0

    .line 243
    .local v6, "value":I
    sget-object v7, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    shr-int/lit8 v8, v6, 0x4

    aget-char v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    sget-object v7, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    and-int/lit8 v8, v6, 0xf

    aget-char v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 246
    .end local v6    # "value":I
    :cond_44
    int-to-char v7, v1

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 249
    .end local v0    # "c":C
    .end local v1    # "escCode":I
    :cond_49
    return-void
.end method

.method public static charToHex(I)I
    .registers 2
    .param p0, "ch"    # I

    .prologue
    .line 215
    const/16 v0, 0x7f

    if-le p0, v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sHexValues:[I

    aget v0, v0, p0

    goto :goto_5
.end method

.method public static copyHexBytes()[B
    .registers 1

    .prologue
    .line 256
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HB:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public static copyHexChars()[C
    .registers 1

    .prologue
    .line 252
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->HC:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    check-cast v0, [C

    return-object v0
.end method

.method public static get7BitOutputEscapes()[I
    .registers 1

    .prologue
    .line 211
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sOutputEscapes128:[I

    return-object v0
.end method

.method public static getInputCodeComment()[I
    .registers 1

    .prologue
    .line 201
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesComment:[I

    return-object v0
.end method

.method public static getInputCodeLatin1()[I
    .registers 1

    .prologue
    .line 195
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodes:[I

    return-object v0
.end method

.method public static getInputCodeLatin1JsNames()[I
    .registers 1

    .prologue
    .line 198
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesJsNames:[I

    return-object v0
.end method

.method public static getInputCodeUtf8()[I
    .registers 1

    .prologue
    .line 196
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUTF8:[I

    return-object v0
.end method

.method public static getInputCodeUtf8JsNames()[I
    .registers 1

    .prologue
    .line 199
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesUtf8JsNames:[I

    return-object v0
.end method

.method public static getInputCodeWS()[I
    .registers 1

    .prologue
    .line 202
    sget-object v0, Lcom/fasterxml/jackson/core/io/CharTypes;->sInputCodesWS:[I

    return-object v0
.end method
