.class final Lrx/internal/operators/OperatorZip$Zip;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Zip"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;"
    }
.end annotation


# static fields
.field static final THRESHOLD:I

.field private static final serialVersionUID:J = 0x53337eae55d8937dL


# instance fields
.field final child:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TR;>;"
        }
    .end annotation
.end field

.field private final childSubscription:Lrx/subscriptions/CompositeSubscription;

.field emitted:I

.field private requested:Ljava/util/concurrent/atomic/AtomicLong;

.field private volatile subscribers:[Ljava/lang/Object;

.field private final zipFunction:Lrx/functions/FuncN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/FuncN",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 188
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    int-to-double v0, v0

    const-wide v2, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sput v0, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/FuncN;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    .local p2, "zipFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 186
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 189
    const/4 v0, 0x0

    iput v0, p0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    .line 196
    iput-object p1, p0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    .line 197
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lrx/functions/FuncN;

    .line 198
    iget-object v0, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 199
    return-void
.end method


# virtual methods
.method public start([Lrx/Observable;Ljava/util/concurrent/atomic/AtomicLong;)V
    .registers 8
    .param p1, "os"    # [Lrx/Observable;
    .param p2, "requested"    # Ljava/util/concurrent/atomic/AtomicLong;

    .prologue
    .line 203
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/Object;

    .line 204
    .local v2, "subscribers":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    array-length v3, p1

    if-ge v0, v3, :cond_16

    .line 205
    new-instance v1, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    invoke-direct {v1, p0}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;-><init>(Lrx/internal/operators/OperatorZip$Zip;)V

    .line 206
    .local v1, "io":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    aput-object v1, v2, v0

    .line 207
    iget-object v3, p0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v3, v1}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 210
    .end local v1    # "io":Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    :cond_16
    iput-object p2, p0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 211
    iput-object v2, p0, Lrx/internal/operators/OperatorZip$Zip;->subscribers:[Ljava/lang/Object;

    .line 213
    const/4 v0, 0x0

    :goto_1b
    array-length v3, p1

    if-ge v0, v3, :cond_2a

    .line 214
    aget-object v4, p1, v0

    aget-object v3, v2, v0

    check-cast v3, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    invoke-virtual {v4, v3}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 216
    :cond_2a
    return-void
.end method

.method tick()V
    .registers 21

    .prologue
    .line 227
    .local p0, "this":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lrx/internal/operators/OperatorZip$Zip;->subscribers:[Ljava/lang/Object;

    .line 228
    .local v14, "subscribers":[Ljava/lang/Object;
    if-nez v14, :cond_7

    .line 298
    :cond_6
    :goto_6
    return-void

    .line 232
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorZip$Zip;->getAndIncrement()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_6

    .line 233
    array-length v10, v14

    .line 234
    .local v10, "length":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lrx/internal/operators/OperatorZip$Zip;->child:Lrx/Observer;

    .line 235
    .local v5, "child":Lrx/Observer;, "Lrx/Observer<-TR;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lrx/internal/operators/OperatorZip$Zip;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 239
    .local v13, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    :cond_1a
    :goto_1a
    new-array v15, v10, [Ljava/lang/Object;

    .line 240
    .local v15, "vs":[Ljava/lang/Object;
    const/4 v2, 0x1

    .line 241
    .local v2, "allHaveValues":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1e
    if-ge v7, v10, :cond_4c

    .line 242
    aget-object v16, v14, v7

    check-cast v16, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    move-object/from16 v0, v16

    iget-object v4, v0, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    .line 243
    .local v4, "buffer":Lrx/internal/util/RxRingBuffer;
    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v11

    .line 245
    .local v11, "n":Ljava/lang/Object;
    if-nez v11, :cond_32

    .line 246
    const/4 v2, 0x0

    .line 241
    :goto_2f
    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 250
    :cond_32
    invoke-virtual {v4, v11}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_45

    .line 251
    invoke-interface {v5}, Lrx/Observer;->onCompleted()V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    goto :goto_6

    .line 257
    :cond_45
    invoke-virtual {v4, v11}, Lrx/internal/util/RxRingBuffer;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    aput-object v16, v15, v7

    goto :goto_2f

    .line 261
    .end local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    .end local v11    # "n":Ljava/lang/Object;
    :cond_4c
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_df

    if-eqz v2, :cond_df

    .line 264
    :try_start_58
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->zipFunction:Lrx/functions/FuncN;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lrx/internal/operators/OperatorZip$Zip;->emitted:I
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_7a} :catch_a2

    .line 273
    move-object v3, v14

    .local v3, "arr$":[Ljava/lang/Object;
    array-length v9, v3

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_7d
    if-ge v8, v9, :cond_ab

    aget-object v12, v3, v8

    .line 274
    .local v12, "obj":Ljava/lang/Object;
    check-cast v12, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    .end local v12    # "obj":Ljava/lang/Object;
    iget-object v4, v12, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->items:Lrx/internal/util/RxRingBuffer;

    .line 275
    .restart local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->poll()Ljava/lang/Object;

    .line 277
    invoke-virtual {v4}, Lrx/internal/util/RxRingBuffer;->peek()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lrx/internal/util/RxRingBuffer;->isCompleted(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a8

    .line 279
    invoke-interface {v5}, Lrx/Observer;->onCompleted()V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->childSubscription:Lrx/subscriptions/CompositeSubscription;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    goto/16 :goto_6

    .line 268
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :catch_a2
    move-exception v6

    .line 269
    .local v6, "e":Ljava/lang/Throwable;
    invoke-static {v6, v5, v15}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 273
    .end local v6    # "e":Ljava/lang/Throwable;
    .restart local v3    # "arr$":[Ljava/lang/Object;
    .restart local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    .restart local v8    # "i$":I
    .restart local v9    # "len$":I
    :cond_a8
    add-int/lit8 v8, v8, 0x1

    goto :goto_7d

    .line 285
    .end local v4    # "buffer":Lrx/internal/util/RxRingBuffer;
    :cond_ab
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    move/from16 v16, v0

    sget v17, Lrx/internal/operators/OperatorZip$Zip;->THRESHOLD:I

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_1a

    .line 286
    move-object v3, v14

    array-length v9, v3

    const/4 v8, 0x0

    :goto_bc
    if-ge v8, v9, :cond_d5

    aget-object v12, v3, v8

    .line 287
    .restart local v12    # "obj":Ljava/lang/Object;
    check-cast v12, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;

    .end local v12    # "obj":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v0, v0, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Lrx/internal/operators/OperatorZip$Zip$InnerSubscriber;->requestMore(J)V

    .line 286
    add-int/lit8 v8, v8, 0x1

    goto :goto_bc

    .line 289
    :cond_d5
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lrx/internal/operators/OperatorZip$Zip;->emitted:I

    goto/16 :goto_1a

    .line 295
    .end local v3    # "arr$":[Ljava/lang/Object;
    .end local v8    # "i$":I
    .end local v9    # "len$":I
    :cond_df
    invoke-virtual/range {p0 .. p0}, Lrx/internal/operators/OperatorZip$Zip;->decrementAndGet()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gtz v16, :cond_1a

    goto/16 :goto_6
.end method
