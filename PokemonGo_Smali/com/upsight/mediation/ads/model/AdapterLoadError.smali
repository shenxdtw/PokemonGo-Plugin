.class public final enum Lcom/upsight/mediation/ads/model/AdapterLoadError;
.super Ljava/lang/Enum;
.source "AdapterLoadError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/upsight/mediation/ads/model/AdapterLoadError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/upsight/mediation/ads/model/AdapterLoadError;

.field public static final enum INVALID_PARAMETERS:Lcom/upsight/mediation/ads/model/AdapterLoadError;

.field public static final enum PROVIDER_ADAPTER_ERROR:Lcom/upsight/mediation/ads/model/AdapterLoadError;

.field public static final enum PROVIDER_IAP_BILLING_FAILURE:Lcom/upsight/mediation/ads/model/AdapterLoadError;

.field public static final enum PROVIDER_LOAD_NOT_STARTED:Lcom/upsight/mediation/ads/model/AdapterLoadError;

.field public static final enum PROVIDER_NO_ACTIVITY:Lcom/upsight/mediation/ads/model/AdapterLoadError;

.field public static final enum PROVIDER_NO_FILL:Lcom/upsight/mediation/ads/model/AdapterLoadError;

.field public static final enum PROVIDER_STILL_LOADING:Lcom/upsight/mediation/ads/model/AdapterLoadError;

.field public static final enum PROVIDER_TIMED_OUT:Lcom/upsight/mediation/ads/model/AdapterLoadError;

.field public static final enum PROVIDER_UNDEFINED:Lcom/upsight/mediation/ads/model/AdapterLoadError;

.field public static final enum PROVIDER_UNRECOGNIZED:Lcom/upsight/mediation/ads/model/AdapterLoadError;

.field public static final enum PROVIER_IAP_BILLING_NOT_FOUND:Lcom/upsight/mediation/ads/model/AdapterLoadError;


# instance fields
.field public final id:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 6
    new-instance v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;

    const-string v1, "PROVIDER_NO_FILL"

    invoke-direct {v0, v1, v5, v5}, Lcom/upsight/mediation/ads/model/AdapterLoadError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_NO_FILL:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    .line 7
    new-instance v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;

    const-string v1, "PROVIDER_TIMED_OUT"

    invoke-direct {v0, v1, v4, v4}, Lcom/upsight/mediation/ads/model/AdapterLoadError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_TIMED_OUT:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    .line 8
    new-instance v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;

    const-string v1, "PROVIDER_ADAPTER_ERROR"

    invoke-direct {v0, v1, v6, v6}, Lcom/upsight/mediation/ads/model/AdapterLoadError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_ADAPTER_ERROR:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    .line 9
    new-instance v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;

    const-string v1, "PROVIDER_UNRECOGNIZED"

    invoke-direct {v0, v1, v7, v7}, Lcom/upsight/mediation/ads/model/AdapterLoadError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_UNRECOGNIZED:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    .line 10
    new-instance v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;

    const-string v1, "PROVIDER_UNDEFINED"

    invoke-direct {v0, v1, v8, v8}, Lcom/upsight/mediation/ads/model/AdapterLoadError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_UNDEFINED:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    .line 11
    new-instance v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;

    const-string v1, "PROVIDER_LOAD_NOT_STARTED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/mediation/ads/model/AdapterLoadError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_LOAD_NOT_STARTED:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    .line 12
    new-instance v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;

    const-string v1, "PROVIDER_STILL_LOADING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/upsight/mediation/ads/model/AdapterLoadError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_STILL_LOADING:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    .line 13
    new-instance v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;

    const-string v1, "PROVIDER_NO_ACTIVITY"

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/mediation/ads/model/AdapterLoadError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_NO_ACTIVITY:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    .line 14
    new-instance v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;

    const-string v1, "INVALID_PARAMETERS"

    const/16 v2, 0x8

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/mediation/ads/model/AdapterLoadError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->INVALID_PARAMETERS:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    .line 15
    new-instance v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;

    const-string v1, "PROVIDER_IAP_BILLING_FAILURE"

    const/16 v2, 0x9

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/mediation/ads/model/AdapterLoadError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_IAP_BILLING_FAILURE:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    .line 16
    new-instance v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;

    const-string v1, "PROVIER_IAP_BILLING_NOT_FOUND"

    const/16 v2, 0xa

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/mediation/ads/model/AdapterLoadError;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIER_IAP_BILLING_NOT_FOUND:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    .line 5
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/upsight/mediation/ads/model/AdapterLoadError;

    sget-object v1, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_NO_FILL:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_TIMED_OUT:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_ADAPTER_ERROR:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_UNRECOGNIZED:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_UNDEFINED:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_LOAD_NOT_STARTED:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_STILL_LOADING:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_NO_ACTIVITY:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/upsight/mediation/ads/model/AdapterLoadError;->INVALID_PARAMETERS:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIDER_IAP_BILLING_FAILURE:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/upsight/mediation/ads/model/AdapterLoadError;->PROVIER_IAP_BILLING_NOT_FOUND:Lcom/upsight/mediation/ads/model/AdapterLoadError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->$VALUES:[Lcom/upsight/mediation/ads/model/AdapterLoadError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->id:I

    .line 22
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/upsight/mediation/ads/model/AdapterLoadError;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;

    return-object v0
.end method

.method public static values()[Lcom/upsight/mediation/ads/model/AdapterLoadError;
    .registers 1

    .prologue
    .line 5
    sget-object v0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->$VALUES:[Lcom/upsight/mediation/ads/model/AdapterLoadError;

    invoke-virtual {v0}, [Lcom/upsight/mediation/ads/model/AdapterLoadError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/upsight/mediation/ads/model/AdapterLoadError;

    return-object v0
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 25
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "{ \"AdapterLoadError\" : { \"%s\" : %d} }"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/upsight/mediation/ads/model/AdapterLoadError;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
