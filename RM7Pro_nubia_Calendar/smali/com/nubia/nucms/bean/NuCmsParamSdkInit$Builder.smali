.class public Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
.super Ljava/lang/Object;
.source "NuCmsParamSdkInit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nubia/nucms/bean/NuCmsParamSdkInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private api:I

.field apkVersion:Ljava/lang/String;

.field appid:Ljava/lang/String;

.field context:Landroid/content/Context;

.field deviceId:Ljava/lang/String;

.field enableLog:Z

.field isReleaseEnvir:Z

.field jsonParser:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

.field reyunid:Ljava/lang/String;

.field secretKey:Ljava/lang/String;

.field sspClientId:Ljava/lang/String;

.field sspCuid:Ljava/lang/String;

.field sspDevice:Ljava/lang/String;

.field sspDeviceId:Ljava/lang/String;

.field sspVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->api:I

    .line 120
    return-void
.end method

.method public static build()Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;

    invoke-direct {v0}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public create()Lcom/nubia/nucms/bean/NuCmsParamSdkInit;
    .locals 18

    .prologue
    .line 185
    new-instance v1, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->apkVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->appid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->secretKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->reyunid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->sspVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->sspDevice:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->sspCuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->sspClientId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->sspDeviceId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->enableLog:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->isReleaseEnvir:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->jsonParser:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->api:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->deviceId:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/nubia/nucms/bean/NuCmsParamSdkInit;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/nubia/nucms/network/frame/NuCmsJsonParser;ILjava/lang/String;Lcom/nubia/nucms/bean/NuCmsParamSdkInit$1;)V

    return-object v1
.end method

.method public setApiSwitch(I)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "api"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->api:I

    .line 178
    return-object p0
.end method

.method public setApkVersion(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "apkVersion"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->apkVersion:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public setAppid(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "appid"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->appid:Ljava/lang/String;

    .line 134
    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->context:Landroid/content/Context;

    .line 126
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->deviceId:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public setEnableLog(Z)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "enableLog"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->enableLog:Z

    .line 166
    return-object p0
.end method

.method public setJsonParser(Lcom/nubia/nucms/network/frame/NuCmsJsonParser;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "jsonParser"    # Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->jsonParser:Lcom/nubia/nucms/network/frame/NuCmsJsonParser;

    .line 174
    return-object p0
.end method

.method public setReleaseEnvir(Z)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "isReleaseEnvir"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->isReleaseEnvir:Z

    .line 170
    return-object p0
.end method

.method public setReyunid(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "reyunid"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->reyunid:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public setSecretKey(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "secretKey"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->secretKey:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public setSspClientId(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "sspClientId"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->sspClientId:Ljava/lang/String;

    .line 158
    return-object p0
.end method

.method public setSspCuid(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "sspCuid"    # Ljava/lang/String;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->sspCuid:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public setSspDevice(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "sspDevice"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->sspDevice:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public setSspDeviceId(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "sspDeviceId"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->sspDeviceId:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public setSspVersion(Ljava/lang/String;)Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;
    .locals 0
    .param p1, "sspVersion"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/nubia/nucms/bean/NuCmsParamSdkInit$Builder;->sspVersion:Ljava/lang/String;

    .line 146
    return-object p0
.end method
