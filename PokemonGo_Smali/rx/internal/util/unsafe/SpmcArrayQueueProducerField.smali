.class abstract Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;
.super Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final P_INDEX_OFFSET:J


# instance fields
.field private volatile producerIndex:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    const-class v0, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;

    const-string v1, "producerIndex"

    invoke-static {v0, v1}, Lrx/internal/util/unsafe/UnsafeAccess;->addressOf(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->P_INDEX_OFFSET:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "capacity"    # I

    .prologue
    .line 43
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/SpmcArrayQueueProducerField<TE;>;"
    invoke-direct {p0, p1}, Lrx/internal/util/unsafe/SpmcArrayQueueL1Pad;-><init>(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final lvProducerIndex()J
    .registers 3

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/SpmcArrayQueueProducerField<TE;>;"
    iget-wide v0, p0, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->producerIndex:J

    return-wide v0
.end method

.method protected final soTail(J)V
    .registers 10
    .param p1, "v"    # J

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;, "Lrx/internal/util/unsafe/SpmcArrayQueueProducerField<TE;>;"
    sget-object v0, Lrx/internal/util/unsafe/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/internal/util/unsafe/SpmcArrayQueueProducerField;->P_INDEX_OFFSET:J

    move-object v1, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    .line 40
    return-void
.end method
