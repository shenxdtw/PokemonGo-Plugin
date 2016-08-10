.class public Lcom/upsight/mediation/ads/adapters/FuseMRAIDAdAdapter;
.super Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;
.source "FuseMRAIDAdAdapter.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "FuseMRAID"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 2

    .prologue
    .line 13
    invoke-super {p0}, Lcom/upsight/mediation/ads/adapters/MRaidAdAdapter;->init()V

    .line 14
    const-string v0, "http://www.fuseboxx.com"

    iput-object v0, p0, Lcom/upsight/mediation/ads/adapters/FuseMRAIDAdAdapter;->baseUrl:Ljava/lang/String;

    .line 15
    return-void
.end method
