.class Lrx/BackpressureOverflow$DropLatest;
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
    name = "DropLatest"
.end annotation


# static fields
.field static final INSTANCE:Lrx/BackpressureOverflow$DropLatest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Lrx/BackpressureOverflow$DropLatest;

    invoke-direct {v0}, Lrx/BackpressureOverflow$DropLatest;-><init>()V

    sput-object v0, Lrx/BackpressureOverflow$DropLatest;->INSTANCE:Lrx/BackpressureOverflow$DropLatest;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mayAttemptDrop()Z
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method
