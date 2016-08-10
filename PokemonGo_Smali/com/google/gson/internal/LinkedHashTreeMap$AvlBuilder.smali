.class final Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AvlBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private leavesSkipped:I

.field private leavesToSkip:I

.field private size:I

.field private stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 670
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcom/google/gson/internal/LinkedHashTreeMap$Node;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    .local p1, "node":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 687
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 688
    iput v7, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 691
    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v4, :cond_27

    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_27

    .line 692
    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 693
    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 694
    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 697
    :cond_27
    iget-object v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 698
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 699
    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 702
    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    if-lez v4, :cond_4f

    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_4f

    .line 703
    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 704
    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 705
    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 721
    :cond_4f
    const/4 v3, 0x4

    .local v3, "scale":I
    :goto_50
    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    add-int/lit8 v5, v3, -0x1

    and-int/2addr v4, v5

    add-int/lit8 v5, v3, -0x1

    if-ne v4, v5, :cond_99

    .line 722
    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-nez v4, :cond_7a

    .line 724
    iget-object v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 725
    .local v2, "right":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 726
    .local v0, "center":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 727
    .local v1, "left":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v4, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v4, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 728
    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 730
    iput-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->left:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 731
    iput-object v2, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 732
    iget v4, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 733
    iput-object v0, v1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 734
    iput-object v0, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 721
    .end local v0    # "center":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v1    # "left":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v2    # "right":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_77
    :goto_77
    mul-int/lit8 v3, v3, 0x2

    goto :goto_50

    .line 735
    :cond_7a
    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    if-ne v4, v7, :cond_91

    .line 737
    iget-object v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 738
    .restart local v2    # "right":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 739
    .restart local v0    # "center":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 741
    iput-object v2, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->right:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 742
    iget v4, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->height:I

    .line 743
    iput-object v0, v2, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 744
    iput v6, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_77

    .line 745
    .end local v0    # "center":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v2    # "right":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_91
    iget v4, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_77

    .line 746
    iput v6, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    goto :goto_77

    .line 749
    :cond_99
    return-void
.end method

.method reset(I)V
    .registers 5
    .param p1, "targetSize"    # I

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    const/4 v2, 0x0

    .line 679
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, -0x1

    .line 680
    .local v0, "treeCapacity":I
    sub-int v1, v0, p1

    iput v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesToSkip:I

    .line 681
    iput v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->size:I

    .line 682
    iput v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->leavesSkipped:I

    .line 683
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 684
    return-void
.end method

.method root()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 752
    .local p0, "this":Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder;->stack:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 753
    .local v0, "stackTop":Lcom/google/gson/internal/LinkedHashTreeMap$Node;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v1, :cond_c

    .line 754
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 756
    :cond_c
    return-object v0
.end method
