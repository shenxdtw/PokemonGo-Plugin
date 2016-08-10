.class public Lcom/upsight/android/unity/UnitySessionCallbacks;
.super Ljava/lang/Object;
.source "UnitySessionCallbacks.java"

# interfaces
.implements Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;


# static fields
.field protected static final TAG:Ljava/lang/String; = "UnitySessionCallbacks"

.field private static mShouldSynchronizeManagedVariables:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/upsight/android/unity/UnitySessionCallbacks;->mShouldSynchronizeManagedVariables:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/upsight/android/unity/UnitySessionCallbacks;->mShouldSynchronizeManagedVariables:Z

    return v0
.end method

.method public static setShouldSynchronizeManagedVariables(Z)V
    .registers 1
    .param p0, "shouldSynchronizeManagedVariables"    # Z

    .prologue
    .line 27
    sput-boolean p0, Lcom/upsight/android/unity/UnitySessionCallbacks;->mShouldSynchronizeManagedVariables:Z

    .line 28
    return-void
.end method


# virtual methods
.method public onStart(Lcom/upsight/android/UpsightContext;)V
    .registers 3
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 33
    new-instance v0, Lcom/upsight/android/unity/UnitySessionCallbacks$1;

    invoke-direct {v0, p0}, Lcom/upsight/android/unity/UnitySessionCallbacks$1;-><init>(Lcom/upsight/android/unity/UnitySessionCallbacks;)V

    invoke-static {p1, v0}, Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;->registerHandler(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;)V

    .line 51
    return-void
.end method
