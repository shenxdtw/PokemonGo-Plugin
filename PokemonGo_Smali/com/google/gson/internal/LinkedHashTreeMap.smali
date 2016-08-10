.class public final Lcom/google/gson/internal/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;,
        Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;,
        Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;,
        Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;,
        Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;,
        Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field size:I

.field table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/google/gson/internal/LinkedHashTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    .line 42
    new-instance v0, Lcom/google/gson/internal/LinkedHashTreeMap$1;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedHashTreeMap$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void

    .line 40
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    sget-object v0, Lcom/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedHashTreeMap;-><init>(Ljava/util/Comparator;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 51
    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    .line 52
    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    .line 73
    if-eqz p1, :cond_27

    .end local p1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_a
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 76
    new-instance v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedHashTreeMap$Node;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->header:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 77
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 78
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->threshold:I

    .line 79
    return-void

    .line 73
    .restart local p1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_27
    sget-object p1, Lcom/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    goto :goto_a
.end method

.method private doubleCapacity()V
    .registers 3

    .prologue
    .line 558
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-static {v0}, Lcom/google/gson/internal/LinkedHashTreeMap;->doubleCapacity([Lcom/google/gson/internal/LinkedHashTreeMap$Node;)[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 559
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->threshold:I

    .line 560
    return-void
.end method

.method static doubleCapacity([Lcom/google/gson/internal/LinkedHashTreeMap$Node;)[Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)[",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "oldTable":[Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "[Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v11, 0x0

    .line 568
    array-length v6, p0

    .line 570
    .local v6, "oldCapacity":I
    mul-int/lit8 v10, v6, 0x2

    new-array v4, v10, [Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 571
    .local v4, "newTable":[Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "[Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    new-instance v1, Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;

    invoke-direct {v1}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;-><init>()V

    .line 572
    .local v1, "iterator":Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    new-instance v2, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v2}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    .line 573
    .local v2, "leftBuilder":Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    new-instance v7, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v7}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;-><init>()V

    .line 576
    .local v7, "rightBuilder":Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, v6, :cond_68

    .line 577
    aget-object v9, p0, v0

    .line 578
    .local v9, "root":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-nez v9, :cond_1f

    .line 576
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 583
    :cond_1f
    invoke-virtual {v1, v9}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;->reset(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 584
    const/4 v3, 0x0

    .line 585
    .local v3, "leftSize":I
    const/4 v8, 0x0

    .line 586
    .local v8, "rightSize":I
    :goto_24
    invoke-virtual {v1}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;->next()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v5

    .local v5, "node":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v5, :cond_35

    .line 587
    iget v10, v5, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v10, v6

    if-nez v10, :cond_32

    .line 588
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 590
    :cond_32
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 595
    :cond_35
    invoke-virtual {v2, v3}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 596
    invoke-virtual {v7, v8}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->reset(I)V

    .line 597
    invoke-virtual {v1, v9}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;->reset(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 598
    :goto_3e
    invoke-virtual {v1}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator;->next()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 599
    iget v10, v5, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    and-int/2addr v10, v6

    if-nez v10, :cond_4d

    .line 600
    invoke-virtual {v2, v5}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->add(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_3e

    .line 602
    :cond_4d
    invoke-virtual {v7, v5}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->add(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_3e

    .line 607
    :cond_51
    if-lez v3, :cond_64

    invoke-virtual {v2}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->root()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v10

    :goto_57
    aput-object v10, v4, v0

    .line 608
    add-int v12, v0, v6

    if-lez v8, :cond_66

    invoke-virtual {v7}, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->root()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v10

    :goto_61
    aput-object v10, v4, v12

    goto :goto_1c

    :cond_64
    move-object v10, v11

    .line 607
    goto :goto_57

    :cond_66
    move-object v10, v11

    .line 608
    goto :goto_61

    .line 610
    .end local v3    # "leftSize":I
    .end local v5    # "node":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v8    # "rightSize":I
    .end local v9    # "root":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_68
    return-object v4
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 224
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    if-eq p1, p2, :cond_a

    if-eqz p1, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private rebalance(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V
    .registers 21
    .param p2, "insert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "unbalanced":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    move-object/from16 v9, p1

    .local v9, "node":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_2
    if-eqz v9, :cond_39

    .line 340
    iget-object v2, v9, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 341
    .local v2, "left":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v10, v9, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 342
    .local v10, "right":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v2, :cond_3a

    iget v4, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 343
    .local v4, "leftHeight":I
    :goto_c
    if-eqz v10, :cond_3c

    iget v12, v10, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 345
    .local v12, "rightHeight":I
    :goto_10
    sub-int v1, v4, v12

    .line 346
    .local v1, "delta":I
    const/16 v17, -0x2

    move/from16 v0, v17

    if-ne v1, v0, :cond_5e

    .line 347
    iget-object v13, v10, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 348
    .local v13, "rightLeft":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v15, v10, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 349
    .local v15, "rightRight":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v15, :cond_3e

    iget v0, v15, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move/from16 v16, v0

    .line 350
    .local v16, "rightRightHeight":I
    :goto_22
    if-eqz v13, :cond_41

    iget v14, v13, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 352
    .local v14, "rightLeftHeight":I
    :goto_26
    sub-int v11, v14, v16

    .line 353
    .local v11, "rightDelta":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_32

    if-nez v11, :cond_43

    if-nez p2, :cond_43

    .line 354
    :cond_32
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 360
    :goto_37
    if-eqz p2, :cond_83

    .line 396
    .end local v1    # "delta":I
    .end local v2    # "left":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v4    # "leftHeight":I
    .end local v10    # "right":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v11    # "rightDelta":I
    .end local v12    # "rightHeight":I
    .end local v13    # "rightLeft":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v14    # "rightLeftHeight":I
    .end local v15    # "rightRight":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v16    # "rightRightHeight":I
    :cond_39
    :goto_39
    return-void

    .line 342
    .restart local v2    # "left":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .restart local v10    # "right":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_3a
    const/4 v4, 0x0

    goto :goto_c

    .line 343
    .restart local v4    # "leftHeight":I
    :cond_3c
    const/4 v12, 0x0

    goto :goto_10

    .line 349
    .restart local v1    # "delta":I
    .restart local v12    # "rightHeight":I
    .restart local v13    # "rightLeft":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .restart local v15    # "rightRight":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_3e
    const/16 v16, 0x0

    goto :goto_22

    .line 350
    .restart local v16    # "rightRightHeight":I
    :cond_41
    const/4 v14, 0x0

    goto :goto_26

    .line 356
    .restart local v11    # "rightDelta":I
    .restart local v14    # "rightLeftHeight":I
    :cond_43
    sget-boolean v17, Lcom/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v17, :cond_53

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_53

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 357
    :cond_53
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 358
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_37

    .line 364
    .end local v11    # "rightDelta":I
    .end local v13    # "rightLeft":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v14    # "rightLeftHeight":I
    .end local v15    # "rightRight":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v16    # "rightRightHeight":I
    :cond_5e
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v1, v0, :cond_a6

    .line 365
    iget-object v5, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 366
    .local v5, "leftLeft":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v7, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 367
    .local v7, "leftRight":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v7, :cond_87

    iget v8, v7, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 368
    .local v8, "leftRightHeight":I
    :goto_6c
    if-eqz v5, :cond_89

    iget v6, v5, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 370
    .local v6, "leftLeftHeight":I
    :goto_70
    sub-int v3, v6, v8

    .line 371
    .local v3, "leftDelta":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_7c

    if-nez v3, :cond_8b

    if-nez p2, :cond_8b

    .line 372
    :cond_7c
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 378
    :goto_81
    if-nez p2, :cond_39

    .line 339
    .end local v3    # "leftDelta":I
    .end local v5    # "leftLeft":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v6    # "leftLeftHeight":I
    .end local v7    # "leftRight":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v8    # "leftRightHeight":I
    :cond_83
    iget-object v9, v9, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    goto/16 :goto_2

    .line 367
    .restart local v5    # "leftLeft":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .restart local v7    # "leftRight":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_87
    const/4 v8, 0x0

    goto :goto_6c

    .line 368
    .restart local v8    # "leftRightHeight":I
    :cond_89
    const/4 v6, 0x0

    goto :goto_70

    .line 374
    .restart local v3    # "leftDelta":I
    .restart local v6    # "leftLeftHeight":I
    :cond_8b
    sget-boolean v17, Lcom/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v17, :cond_9b

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_9b

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 375
    :cond_9b
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/gson/internal/LinkedHashTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 376
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/gson/internal/LinkedHashTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_81

    .line 382
    .end local v3    # "leftDelta":I
    .end local v5    # "leftLeft":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v6    # "leftLeftHeight":I
    .end local v7    # "leftRight":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v8    # "leftRightHeight":I
    :cond_a6
    if-nez v1, :cond_b1

    .line 383
    add-int/lit8 v17, v4, 0x1

    move/from16 v0, v17

    iput v0, v9, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 384
    if-eqz p2, :cond_83

    goto :goto_39

    .line 389
    :cond_b1
    sget-boolean v17, Lcom/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v17, :cond_c7

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v1, v0, :cond_c7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v1, v0, :cond_c7

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 390
    :cond_c7
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v9, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 391
    if-nez p2, :cond_83

    goto/16 :goto_39
.end method

.method private replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "node":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p2, "replacement":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 313
    .local v1, "parent":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 314
    if-eqz p2, :cond_9

    .line 315
    iput-object v1, p2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 318
    :cond_9
    if-eqz v1, :cond_23

    .line 319
    iget-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    if-ne v2, p1, :cond_12

    .line 320
    iput-object p2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 329
    :goto_11
    return-void

    .line 322
    :cond_12
    sget-boolean v2, Lcom/google/gson/internal/LinkedHashTreeMap;->$assertionsDisabled:Z

    if-nez v2, :cond_20

    iget-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    if-eq v2, p1, :cond_20

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 323
    :cond_20
    iput-object p2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_11

    .line 326
    :cond_23
    iget v2, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->hash:I

    iget-object v3, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    and-int v0, v2, v3

    .line 327
    .local v0, "index":I
    iget-object v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    aput-object p2, v2, v0

    goto :goto_11
.end method

.method private rotateLeft(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "root":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    .line 402
    iget-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 403
    .local v0, "left":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 404
    .local v1, "pivot":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 405
    .local v2, "pivotLeft":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v3, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 408
    .local v3, "pivotRight":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 409
    if-eqz v2, :cond_f

    .line 410
    iput-object p1, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 413
    :cond_f
    invoke-direct {p0, p1, v1}, Lcom/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 416
    iput-object p1, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 417
    iput-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 420
    if-eqz v0, :cond_36

    iget v4, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move v6, v4

    :goto_1b
    if-eqz v2, :cond_38

    iget v4, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_1f
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 422
    iget v4, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz v3, :cond_2d

    iget v5, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :cond_2d
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 424
    return-void

    :cond_36
    move v6, v5

    .line 420
    goto :goto_1b

    :cond_38
    move v4, v5

    goto :goto_1f
.end method

.method private rotateRight(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "root":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    .line 430
    iget-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 431
    .local v0, "pivot":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 432
    .local v3, "right":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 433
    .local v1, "pivotLeft":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v2, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 436
    .local v2, "pivotRight":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 437
    if-eqz v2, :cond_f

    .line 438
    iput-object p1, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 441
    :cond_f
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 444
    iput-object p1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 445
    iput-object v0, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 448
    if-eqz v3, :cond_36

    iget v4, v3, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    move v6, v4

    :goto_1b
    if-eqz v2, :cond_38

    iget v4, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :goto_1f
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 450
    iget v4, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-eqz v1, :cond_2d

    iget v5, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    :cond_2d
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 452
    return-void

    :cond_36
    move v6, v5

    .line 448
    goto :goto_1b

    :cond_38
    move v4, v5

    goto :goto_1f
.end method

.method private static secondaryHash(I)I
    .registers 3
    .param p0, "h"    # I

    .prologue
    .line 235
    ushr-int/lit8 v0, p0, 0x14

    ushr-int/lit8 v1, p0, 0xc

    xor-int/2addr v0, v1

    xor-int/2addr p0, v0

    .line 236
    ushr-int/lit8 v0, p0, 0x7

    xor-int/2addr v0, p0

    ushr-int/lit8 v1, p0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 862
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 6

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 105
    iget-object v3, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    .line 107
    iget v3, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    .line 110
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->header:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 111
    .local v1, "header":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .local v0, "e":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_13
    if-eq v0, v1, :cond_1d

    .line 112
    iget-object v2, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 113
    .local v2, "next":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v4, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 114
    move-object v0, v2

    .line 115
    goto :goto_13

    .line 117
    .end local v2    # "next":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_1d
    iput-object v1, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 118
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 91
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->entrySet:Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;

    .line 459
    .local v0, "result":Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    if-eqz v0, :cond_5

    .end local v0    # "result":Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    :goto_4
    return-object v0

    .restart local v0    # "result":Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    :cond_5
    new-instance v0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;

    .end local v0    # "result":Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.EntrySet;"
    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->entrySet:Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;

    goto :goto_4
.end method

.method find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 16
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 132
    iget-object v8, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->comparator:Ljava/util/Comparator;

    .line 133
    .local v8, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v11, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->table:[Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 134
    .local v11, "table":[Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "[Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lcom/google/gson/internal/LinkedHashTreeMap;->secondaryHash(I)I

    move-result v3

    .line 135
    .local v3, "hash":I
    array-length v2, v11

    add-int/lit8 v2, v2, -0x1

    and-int v10, v3, v2

    .line 136
    .local v10, "index":I
    aget-object v1, v11, v10

    .line 137
    .local v1, "nearest":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v9, 0x0

    .line 139
    .local v9, "comparison":I
    if-eqz v1, :cond_3a

    .line 142
    sget-object v2, Lcom/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v8, v2, :cond_2b

    move-object v2, p1

    check-cast v2, Ljava/lang/Comparable;

    move-object v7, v2

    .line 147
    .local v7, "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :goto_1f
    if-eqz v7, :cond_2d

    iget-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 148
    invoke-interface {v7, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v9

    .line 152
    :goto_27
    if-nez v9, :cond_34

    move-object v5, v1

    .line 196
    .end local v7    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_2a
    :goto_2a
    return-object v5

    :cond_2b
    move-object v7, v5

    .line 142
    goto :goto_1f

    .line 148
    .restart local v7    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_2d
    iget-object v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->key:Ljava/lang/Object;

    .line 149
    invoke-interface {v8, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    goto :goto_27

    .line 157
    :cond_34
    if-gez v9, :cond_69

    iget-object v6, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 158
    .local v6, "child":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_38
    if-nez v6, :cond_6c

    .line 167
    .end local v6    # "child":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v7    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_3a
    if-eqz p2, :cond_2a

    .line 172
    iget-object v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->header:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 174
    .local v4, "header":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-nez v1, :cond_8d

    .line 176
    sget-object v2, Lcom/google/gson/internal/LinkedHashTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v8, v2, :cond_6e

    instance-of v2, p1, Ljava/lang/Comparable;

    if-nez v2, :cond_6e

    .line 177
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " is not Comparable"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    .end local v4    # "header":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .restart local v7    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_69
    iget-object v6, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_38

    .line 162
    .restart local v6    # "child":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_6c
    move-object v1, v6

    .line 163
    goto :goto_1f

    .line 179
    .end local v6    # "child":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v7    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .restart local v4    # "header":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_6e
    new-instance v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v5, v4, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/gson/internal/LinkedHashTreeMap$Node;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 180
    .local v0, "created":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    aput-object v0, v11, v10

    .line 191
    :goto_78
    iget v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    iget v5, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->threshold:I

    if-le v2, v5, :cond_85

    .line 192
    invoke-direct {p0}, Lcom/google/gson/internal/LinkedHashTreeMap;->doubleCapacity()V

    .line 194
    :cond_85
    iget v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    move-object v5, v0

    .line 196
    goto :goto_2a

    .line 182
    .end local v0    # "created":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_8d
    new-instance v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v5, v4, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/gson/internal/LinkedHashTreeMap$Node;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 183
    .restart local v0    # "created":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-gez v9, :cond_9e

    .line 184
    iput-object v0, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 188
    :goto_99
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/google/gson/internal/LinkedHashTreeMap;->rebalance(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    goto :goto_78

    .line 186
    :cond_9e
    iput-object v0, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_99
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 219
    .local v0, "mine":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_1a

    iget-object v2, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/gson/internal/LinkedHashTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v1, 0x1

    .line 220
    .local v1, "valuesEqual":Z
    :goto_17
    if-eqz v1, :cond_1c

    .end local v0    # "mine":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_19
    return-object v0

    .line 219
    .end local v1    # "valuesEqual":Z
    .restart local v0    # "mine":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_1a
    const/4 v1, 0x0

    goto :goto_17

    .line 220
    .restart local v1    # "valuesEqual":Z
    :cond_1c
    const/4 v0, 0x0

    goto :goto_19
.end method

.method findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 202
    if-eqz p1, :cond_8

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v2}, Lcom/google/gson/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    .line 204
    :cond_8
    :goto_8
    return-object v1

    .line 203
    :catch_9
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_8
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 87
    .local v0, "node":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->keySet:Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;

    .line 464
    .local v0, "result":Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.KeySet;"
    if-eqz v0, :cond_5

    .end local v0    # "result":Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.KeySet;"
    :goto_4
    return-object v0

    .restart local v0    # "result":Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.KeySet;"
    :cond_5
    new-instance v0, Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;

    .end local v0    # "result":Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>.KeySet;"
    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->keySet:Lcom/google/gson/internal/LinkedHashTreeMap$KeySet;

    goto :goto_4
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_a

    .line 96
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_a
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/google/gson/internal/LinkedHashTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 99
    .local v0, "created":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 100
    .local v1, "result":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    .line 101
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 122
    .local v0, "node":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->value:Ljava/lang/Object;

    :goto_8
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V
    .registers 13
    .param p2, "unlink"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    .local p1, "node":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 246
    if-eqz p2, :cond_14

    .line 247
    iget-object v6, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v7, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v7, v6, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 248
    iget-object v6, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v7, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v7, v6, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 249
    iput-object v8, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v8, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->next:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 252
    :cond_14
    iget-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 253
    .local v1, "left":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v4, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 254
    .local v4, "right":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 255
    .local v3, "originalParent":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v1, :cond_56

    if-eqz v4, :cond_56

    .line 266
    iget v6, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    iget v7, v4, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    if-le v6, v7, :cond_51

    invoke-virtual {v1}, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->last()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 267
    .local v0, "adjacent":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_28
    invoke-virtual {p0, v0, v9}, Lcom/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 269
    const/4 v2, 0x0

    .line 270
    .local v2, "leftHeight":I
    iget-object v1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 271
    if-eqz v1, :cond_38

    .line 272
    iget v2, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 273
    iput-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 274
    iput-object v0, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 275
    iput-object v8, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 277
    :cond_38
    const/4 v5, 0x0

    .line 278
    .local v5, "rightHeight":I
    iget-object v4, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 279
    if-eqz v4, :cond_45

    .line 280
    iget v5, v4, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 281
    iput-object v4, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 282
    iput-object v0, v4, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 283
    iput-object v8, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 285
    :cond_45
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 286
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 301
    .end local v0    # "adjacent":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v2    # "leftHeight":I
    .end local v5    # "rightHeight":I
    :goto_50
    return-void

    .line 266
    :cond_51
    invoke-virtual {v4}, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->first()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    goto :goto_28

    .line 288
    :cond_56
    if-eqz v1, :cond_6d

    .line 289
    invoke-direct {p0, p1, v1}, Lcom/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 290
    iput-object v8, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 298
    :goto_5d
    invoke-direct {p0, v3, v9}, Lcom/google/gson/internal/LinkedHashTreeMap;->rebalance(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 299
    iget v6, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    .line 300
    iget v6, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    goto :goto_50

    .line 291
    :cond_6d
    if-eqz v4, :cond_75

    .line 292
    invoke-direct {p0, p1, v4}, Lcom/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    .line 293
    iput-object v8, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    goto :goto_5d

    .line 295
    :cond_75
    invoke-direct {p0, p1, v8}, Lcom/google/gson/internal/LinkedHashTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V

    goto :goto_5d
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    .line 305
    .local v0, "node":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_a

    .line 306
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    .line 308
    :cond_a
    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 82
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap;, "Lcom/google/gson/internal/LinkedHashTreeMap<TK;TV;>;"
    iget v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap;->size:I

    return v0
.end method
