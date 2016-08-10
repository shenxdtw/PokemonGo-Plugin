.class Lrx/internal/operators/CachedObservable$CacheState$1;
.super Lrx/Subscriber;
.source "CachedObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/CachedObservable$CacheState;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/CachedObservable$CacheState;


# direct methods
.method constructor <init>(Lrx/internal/operators/CachedObservable$CacheState;)V
    .registers 2

    .prologue
    .line 168
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState$1;, "Lrx/internal/operators/CachedObservable$CacheState.1;"
    iput-object p1, p0, Lrx/internal/operators/CachedObservable$CacheState$1;->this$0:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .prologue
    .line 179
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState$1;, "Lrx/internal/operators/CachedObservable$CacheState.1;"
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState$1;->this$0:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v0}, Lrx/internal/operators/CachedObservable$CacheState;->onCompleted()V

    .line 180
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 175
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState$1;, "Lrx/internal/operators/CachedObservable$CacheState.1;"
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState$1;->this$0:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v0, p1}, Lrx/internal/operators/CachedObservable$CacheState;->onError(Ljava/lang/Throwable;)V

    .line 176
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lrx/internal/operators/CachedObservable$CacheState$1;, "Lrx/internal/operators/CachedObservable$CacheState.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/CachedObservable$CacheState$1;->this$0:Lrx/internal/operators/CachedObservable$CacheState;

    invoke-virtual {v0, p1}, Lrx/internal/operators/CachedObservable$CacheState;->onNext(Ljava/lang/Object;)V

    .line 172
    return-void
.end method
