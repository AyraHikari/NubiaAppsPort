.class public Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdUtil;
.super Ljava/lang/Object;
.source "CommonAdUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static query(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;
    .locals 1
    .param p0, "adid"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-static {}, Lcom/huanju/ssp/base/utils/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->getInstance(Landroid/content/Context;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAdDBManager;->query(Ljava/lang/String;)Lcom/huanju/ssp/base/core/sdk/CommonAd/CommonAd;

    move-result-object v0

    return-object v0
.end method
