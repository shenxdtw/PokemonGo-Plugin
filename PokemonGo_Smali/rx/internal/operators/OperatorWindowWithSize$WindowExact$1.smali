.class Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->createProducer()Lrx/Producer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowExact;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithSize$WindowExact;)V
    .registers 2

    .prologue
    .line 149
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowExact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .registers 10
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;, "Lrx/internal/operators/OperatorWindowWithSize$WindowExact.1;"
    const-wide/16 v4, 0x0

    .line 152
    cmp-long v2, p1, v4

    if-gez v2, :cond_1f

    .line 153
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n >= 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    :cond_1f
    cmp-long v2, p1, v4

    if-eqz v2, :cond_31

    .line 156
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowExact;

    iget v2, v2, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->size:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1, p2}, Lrx/internal/operators/BackpressureUtils;->multiplyCap(JJ)J

    move-result-wide v0

    .line 157
    .local v0, "u":J
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$WindowExact$1;->this$0:Lrx/internal/operators/OperatorWindowWithSize$WindowExact;

    # invokes: Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->request(J)V
    invoke-static {v2, v0, v1}, Lrx/internal/operators/OperatorWindowWithSize$WindowExact;->access$000(Lrx/internal/operators/OperatorWindowWithSize$WindowExact;J)V

    .line 159
    .end local v0    # "u":J
    :cond_31
    return-void
.end method
