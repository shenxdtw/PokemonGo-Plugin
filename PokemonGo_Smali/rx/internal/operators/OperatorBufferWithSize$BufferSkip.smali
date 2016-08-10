.class final Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;
.super Lrx/Subscriber;
.source "OperatorBufferWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorBufferWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BufferSkip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field buffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final count:I

.field index:J

.field final skip:I


# direct methods
.method public constructor <init>(Lrx/Subscriber;II)V
    .registers 6
    .param p2, "count"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 159
    iput-object p1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->actual:Lrx/Subscriber;

    .line 160
    iput p2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->count:I

    .line 161
    iput p3, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->skip:I

    .line 162
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->request(J)V

    .line 163
    return-void
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;
    .param p1, "x1"    # J

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->request(J)V

    return-void
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;J)V
    .registers 4
    .param p0, "x0"    # Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;
    .param p1, "x1"    # J

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->request(J)V

    return-void
.end method


# virtual methods
.method createProducer()Lrx/Producer;
    .registers 2

    .prologue
    .line 207
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip$BufferSkipProducer;-><init>(Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;)V

    return-object v0
.end method

.method public onCompleted()V
    .registers 3

    .prologue
    .line 198
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->buffer:Ljava/util/List;

    .line 199
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_c

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->buffer:Ljava/util/List;

    .line 201
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 203
    :cond_c
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 204
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 192
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->buffer:Ljava/util/List;

    .line 193
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 194
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;, "Lrx/internal/operators/OperatorBufferWithSize$BufferSkip<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const-wide/16 v6, 0x0

    .line 167
    iget-wide v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->index:J

    .line 168
    .local v2, "i":J
    iget-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->buffer:Ljava/util/List;

    .line 169
    .local v0, "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    cmp-long v1, v2, v6

    if-nez v1, :cond_13

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->count:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    .restart local v0    # "b":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object v0, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->buffer:Ljava/util/List;

    .line 173
    :cond_13
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 174
    iget v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->skip:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_35

    .line 175
    iput-wide v6, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->index:J

    .line 180
    :goto_1f
    if-eqz v0, :cond_34

    .line 181
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v4, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->count:I

    if-ne v1, v4, :cond_34

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->buffer:Ljava/util/List;

    .line 185
    iget-object v1, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->actual:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 188
    :cond_34
    return-void

    .line 177
    :cond_35
    iput-wide v2, p0, Lrx/internal/operators/OperatorBufferWithSize$BufferSkip;->index:J

    goto :goto_1f
.end method
