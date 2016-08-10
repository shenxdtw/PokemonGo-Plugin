.class final Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WindowSkipProducer"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x40322bd5c2bb9bacL


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;)V
    .registers 2

    .prologue
    .line 261
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>.WindowSkipProducer;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 16
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>.WindowSkipProducer;"
    const-wide/16 v8, 0x0

    .line 267
    cmp-long v1, p1, v8

    if-gez v1, :cond_1f

    .line 268
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "n >= 0 required but it was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 270
    :cond_1f
    cmp-long v1, p1, v8

    if-eqz v1, :cond_4f

    .line 271
    iget-object v0, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;

    .line 272
    .local v0, "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;->get()Z

    move-result v1

    if-nez v1, :cond_50

    const/4 v1, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v1, v8}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip$WindowSkipProducer;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 273
    iget v1, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->size:I

    int-to-long v8, v1

    invoke-static {p1, p2, v8, v9}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v2

    .line 274
    .local v2, "u":J
    iget v1, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->skip:I

    iget v8, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->size:I

    sub-int/2addr v1, v8

    int-to-long v8, v1

    const-wide/16 v10, 0x1

    sub-long v10, p1, v10

    invoke-static {v8, v9, v10, v11}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v4

    .line 275
    .local v4, "v":J
    invoke-static {v2, v3, v4, v5}, Lrx/internal/operators/BackpressureUtils;->addCap(JJ)J

    move-result-wide v6

    .line 276
    .local v6, "w":J
    # invokes: Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->request(J)V
    invoke-static {v0, v6, v7}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->access$100(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;J)V

    .line 282
    .end local v0    # "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    .end local v2    # "u":J
    .end local v4    # "v":J
    .end local v6    # "w":J
    :cond_4f
    :goto_4f
    return-void

    .line 278
    .restart local v0    # "parent":Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;, "Lrx/internal/operators/OperatorWindowWithSize$WindowSkip<TT;>;"
    :cond_50
    iget v1, v0, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->skip:I

    int-to-long v8, v1

    invoke-static {p1, p2, v8, v9}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v2

    .line 279
    .restart local v2    # "u":J
    # invokes: Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->request(J)V
    invoke-static {v0, v2, v3}, Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;->access$200(Lrx/internal/operators/OperatorWindowWithSize$WindowSkip;J)V

    goto :goto_4f
.end method
