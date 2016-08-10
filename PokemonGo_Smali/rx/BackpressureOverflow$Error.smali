.class Lrx/BackpressureOverflow$Error;
.super Ljava/lang/Object;
.source "BackpressureOverflow.java"

# interfaces
.implements Lrx/BackpressureOverflow$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/BackpressureOverflow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Error"
.end annotation


# static fields
.field static final INSTANCE:Lrx/BackpressureOverflow$Error;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    new-instance v0, Lrx/BackpressureOverflow$Error;

    invoke-direct {v0}, Lrx/BackpressureOverflow$Error;-><init>()V

    sput-object v0, Lrx/BackpressureOverflow$Error;->INSTANCE:Lrx/BackpressureOverflow$Error;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mayAttemptDrop()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lrx/exceptions/MissingBackpressureException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    const-string v1, "Overflowed buffer"

    invoke-direct {v0, v1}, Lrx/exceptions/MissingBackpressureException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
