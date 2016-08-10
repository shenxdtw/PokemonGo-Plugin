.class public Lrx/internal/util/LinkedArrayList;
.super Ljava/lang/Object;
.source "LinkedArrayList.java"


# instance fields
.field final capacityHint:I

.field head:[Ljava/lang/Object;

.field indexInTail:I

.field volatile size:I

.field tail:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacityHint"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lrx/internal/util/LinkedArrayList;->capacityHint:I

    .line 50
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 57
    iget v1, p0, Lrx/internal/util/LinkedArrayList;->size:I

    if-nez v1, :cond_1b

    .line 58
    iget v1, p0, Lrx/internal/util/LinkedArrayList;->capacityHint:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lrx/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    .line 59
    iget-object v1, p0, Lrx/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    iput-object v1, p0, Lrx/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lrx/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    aput-object p1, v1, v4

    .line 61
    iput v3, p0, Lrx/internal/util/LinkedArrayList;->indexInTail:I

    .line 62
    iput v3, p0, Lrx/internal/util/LinkedArrayList;->size:I

    .line 77
    :goto_1a
    return-void

    .line 65
    :cond_1b
    iget v1, p0, Lrx/internal/util/LinkedArrayList;->indexInTail:I

    iget v2, p0, Lrx/internal/util/LinkedArrayList;->capacityHint:I

    if-ne v1, v2, :cond_3a

    .line 66
    iget v1, p0, Lrx/internal/util/LinkedArrayList;->capacityHint:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 67
    .local v0, "t":[Ljava/lang/Object;
    aput-object p1, v0, v4

    .line 68
    iget-object v1, p0, Lrx/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    iget v2, p0, Lrx/internal/util/LinkedArrayList;->capacityHint:I

    aput-object v0, v1, v2

    .line 69
    iput-object v0, p0, Lrx/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    .line 70
    iput v3, p0, Lrx/internal/util/LinkedArrayList;->indexInTail:I

    .line 71
    iget v1, p0, Lrx/internal/util/LinkedArrayList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lrx/internal/util/LinkedArrayList;->size:I

    goto :goto_1a

    .line 73
    .end local v0    # "t":[Ljava/lang/Object;
    :cond_3a
    iget-object v1, p0, Lrx/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    iget v2, p0, Lrx/internal/util/LinkedArrayList;->indexInTail:I

    aput-object p1, v1, v2

    .line 74
    iget v1, p0, Lrx/internal/util/LinkedArrayList;->indexInTail:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lrx/internal/util/LinkedArrayList;->indexInTail:I

    .line 75
    iget v1, p0, Lrx/internal/util/LinkedArrayList;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lrx/internal/util/LinkedArrayList;->size:I

    goto :goto_1a
.end method

.method public capacityHint()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lrx/internal/util/LinkedArrayList;->capacityHint:I

    return v0
.end method

.method public head()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lrx/internal/util/LinkedArrayList;->head:[Ljava/lang/Object;

    return-object v0
.end method

.method public indexInTail()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lrx/internal/util/LinkedArrayList;->indexInTail:I

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lrx/internal/util/LinkedArrayList;->size:I

    return v0
.end method

.method public tail()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lrx/internal/util/LinkedArrayList;->tail:[Ljava/lang/Object;

    return-object v0
.end method

.method toList()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget v0, p0, Lrx/internal/util/LinkedArrayList;->capacityHint:I

    .line 115
    .local v0, "cap":I
    iget v5, p0, Lrx/internal/util/LinkedArrayList;->size:I

    .line 116
    .local v5, "s":I
    new-instance v4, Ljava/util/ArrayList;

    add-int/lit8 v6, v5, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lrx/internal/util/LinkedArrayList;->head()[Ljava/lang/Object;

    move-result-object v1

    .line 119
    .local v1, "h":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 120
    .local v2, "j":I
    const/4 v3, 0x0

    .line 121
    .local v3, "k":I
    :cond_11
    :goto_11
    if-ge v2, v5, :cond_27

    .line 122
    aget-object v6, v1, v3

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_11

    .line 125
    const/4 v3, 0x0

    .line 126
    aget-object v6, v1, v0

    check-cast v6, [Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Object;

    goto :goto_11

    .line 130
    :cond_27
    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lrx/internal/util/LinkedArrayList;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
