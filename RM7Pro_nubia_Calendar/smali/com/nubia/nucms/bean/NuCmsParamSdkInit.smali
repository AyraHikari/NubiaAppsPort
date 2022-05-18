.class public Lcom/nubia/nucms/bean/NuCmsParamSdkInit;
.super Ljava/lang/Object;
.source "NuCmsParamSdkInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    }
.end annotation


# instance fields
.field private api:I

.field private apkVersion:Ljava/lang/String;

.field private appid:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private deviceId:Ljava/lang/String;

.field private enableLog:Z

.field private isReleaseEnvir:Z

.field private jsonParser:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

.field private reyunid:Ljava/lang/String;

.field private secretKey:Ljava/lang/String;

.field private sspClientId:Ljava/lang/String;

.field private sspCuid:Ljava/lang/String;

.field private sspDevice:Ljava/lang/String;

.field private sspDeviceId:Ljava/lang/String;

.field private sspVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/nubia/nucms/network/frame/NuCmsJsonParser;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apkVersion"    # Ljava/lang/String;
    .param p3, "appid"    # Ljava/lang/String;
    .param p4, "secretKey"    # Ljava/lang/String;
    .param p5, "reyunid"    # Ljava/lang/String;
    .param p6, "sspVersion"    # Ljava/lang/String;
    .param p7, "sspDevice"    # Ljava/lang/String;
    .param p8, "sspCuid"    # Ljava/lang/String;
    .param p9, "sspClientId"    # Ljava/lang/String;
    .param p10, "sspDeviceId"    # Ljava/lang/String;
    .param p11, "enableLog"    # Z
    .param p12, "isReleaseEnvir"    # Z
    .param p13, "jsonParser"    # Lcom/nubia/nucms/network/frame/NuCmsJsonParser;
    .param p14, "api"    # I
    .param p15, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v1, ""

    iput-object v1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspVersion:Ljava/lang/String;

    .line 16
    const-string v1, ""

    iput-object v1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspDevice:Ljava/lang/String;

    .line 17
    const-string v1, ""

    iput-object v1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspCuid:Ljava/lang/String;

    .line 18
    const-string v1, ""

    iput-object v1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspClientId:Ljava/lang/String;

    .line 19
    const-string v1, ""

    iput-object v1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspDeviceId:Ljava/lang/String;

    .line 20
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->enableLog:Z

    .line 21
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->isReleaseEnvir:Z

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->jsonParser:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    .line 31
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->context:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->apkVersion:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->appid:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->secretKey:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->reyunid:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspVersion:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspDevice:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspCuid:Ljava/lang/String;

    .line 39
    iput-object p9, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspClientId:Ljava/lang/String;

    .line 40
    iput-object p10, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspDeviceId:Ljava/lang/String;

    .line 41
    iput-boolean p11, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->enableLog:Z

    .line 42
    iput-boolean p12, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->isReleaseEnvir:Z

    .line 43
    iput-object p13, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->jsonParser:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    .line 44
    move/from16 v0, p14

    iput v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->api:I

    .line 45
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->deviceId:Ljava/lang/String;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/nubia/nucms/network/frame/NuCmsJsonParser;ILjava/lang/String;Lcom/nubia/nucms/bean/NuCmsParamSdkInit$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Ljava/lang/String;
    .param p9, "x8"    # Ljava/lang/String;
    .param p10, "x9"    # Ljava/lang/String;
    .param p11, "x10"    # Z
    .param p12, "x11"    # Z
    .param p13, "x12"    # Lcom/nubia/nucms/network/frame/NuCmsJsonParser;
    .param p14, "x13"    # I
    .param p15, "x14"    # Ljava/lang/String;
    .param p16, "x15"    # Lcom/nubia/nucms/bean/NuCmsParamSdkInit$1;

    .prologue
    .line 9
    invoke-direct/range {p0 .. p15}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/nubia/nucms/network/frame/NuCmsJsonParser;ILjava/lang/String;)V

    return-void
.end method

.method public static check(Lcom/nubia/nucms/bean/NuCmsParamSdkInit;)Z
    .locals 1
    .param p0, "bean"    # Lcom/nubia/nucms/bean/NuCmsParamSdkInit;

    .prologue
    .line 94
    if-eqz p0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getAppid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->getApkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getApiSwitch()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->api:I

    return v0
.end method

.method public getApkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->apkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonParser()Lcom/nubia/nucms/network/frame/NuCmsJsonParser;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->jsonParser:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    return-object v0
.end method

.method public getReyunid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->reyunid:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSspClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getSspCuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspCuid:Ljava/lang/String;

    return-object v0
.end method

.method public getSspDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspDevice:Ljava/lang/String;

    return-object v0
.end method

.method public getSspDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSspVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->sspVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableLog()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->enableLog:Z

    return v0
.end method

.method public isReleaseEnvir()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;->isReleaseEnvir:Z

    return v0
.end method
