.class Lrx/BackpressureOverflow$DropOldest;
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
    name = "DropOldest"
.end annotation


# static fields
.field static final INSTANCE:Lrx/BackpressureOverflow$DropOldest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Lrx/BackpressureOverflow$DropOldest;

    invoke-direct {v0}, Lrx/BackpressureOverflow$DropOldest;-><init>()V

    sput-object v0, Lrx/BackpressureOverflow$DropOldest;->INSTANCE:Lrx/BackpressureOverflow$DropOldest;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mayAttemptDrop()Z
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method
