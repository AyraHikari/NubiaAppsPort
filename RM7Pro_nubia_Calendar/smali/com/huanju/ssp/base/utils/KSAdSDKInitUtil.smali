.class public final Lcom/huanju/ssp/base/utils/KSAdSDKInitUtil;
.super Ljava/lang/Object;
.source "KSAdSDKInitUtil.java"


# static fields
.field private static isInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huanju/ssp/base/utils/KSAdSDKInitUtil;->isInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initSDK(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 21
    sget-boolean v0, Lcom/huanju/ssp/base/utils/KSAdSDKInitUtil;->isInit:Z

    if-eqz v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 24
    :cond_0
    new-instance v0, Lcom/kwad/sdk/api/SdkConfig$Builder;

    invoke-direct {v0}, Lcom/kwad/sdk/api/SdkConfig$Builder;-><init>()V

    .line 25
    invoke-virtual {v0, p1}, Lcom/kwad/sdk/api/SdkConfig$Builder;->appId(Ljava/lang/String;)Lcom/kwad/sdk/api/SdkConfig$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/SdkConfig$Builder;->showNotification(Z)Lcom/kwad/sdk/api/SdkConfig$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v1}, Lcom/kwad/sdk/api/SdkConfig$Builder;->debug(Z)Lcom/kwad/sdk/api/SdkConfig$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/kwad/sdk/api/SdkConfig$Builder;->build()Lcom/kwad/sdk/api/SdkConfig;

    move-result-object v0

    .line 24
    invoke-static {p0, v0}, Lcom/kwad/sdk/api/KsAdSDK;->init(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)Z

    .line 32
    sput-boolean v1, Lcom/huanju/ssp/base/utils/KSAdSDKInitUtil;->isInit:Z

    goto :goto_0
.end method
