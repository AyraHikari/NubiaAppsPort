.class public Lcn/nubia/upgrade/model/PostApkInfo;
.super Ljava/lang/Object;
.source "PostApkInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PostApkInfo"


# instance fields
.field private mCheckSum:Ljava/lang/String;

.field private mEncryptParams:Ljava/lang/String;

.field private mJsonPatchValue:Ljava/lang/String;

.field private mUniqueKey:Ljava/lang/String;

.field private mVersionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckSum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mCheckSum:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "authId"    # Ljava/lang/String;
    .param p2, "authKey"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version_code="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mVersionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&check_sum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mCheckSum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&unique_key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mUniqueKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&patch_value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mJsonPatchValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "encryptBefore":Ljava/lang/String;
    const-string v3, "PostApkInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before Encrypt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v2, ""

    .line 58
    .local v2, "params":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v3

    invoke-virtual {v3, p0, p1, p2}, Lcn/nubia/upgrade/util/CommonUtils;->initParam(Lcn/nubia/upgrade/model/PostApkInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    const-string v3, "PostApkInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after Encrypt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcn/nubia/upgrade/util/encode/InterceptorClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :goto_0
    return-object v2

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lcn/nubia/upgrade/util/encode/InterceptorClientException;
    invoke-virtual {v0}, Lcn/nubia/upgrade/util/encode/InterceptorClientException;->printStackTrace()V

    .line 64
    const-string v3, "PostApkInfo"

    const-string v4, "PostApkInfo InterceptorClientException"

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "e":Lcn/nubia/upgrade/util/encode/InterceptorClientException;
    :catch_1
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 67
    const-string v3, "PostApkInfo"

    const-string v4, "PostApkInfo UnsupportedEncodingException"

    invoke-static {v3, v4}, Lcn/nubia/upgrade/util/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getJsonPatchValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mJsonPatchValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mUniqueKey:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mVersionCode:I

    return v0
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkSum"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mCheckSum:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setEncryptParams(Ljava/lang/String;)V
    .locals 0
    .param p1, "encryptParams"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mEncryptParams:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setPatchValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "patchValue"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mJsonPatchValue:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setUniqueKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "uniqueKey"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mUniqueKey:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .prologue
    .line 36
    iput p1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mVersionCode:I

    .line 37
    return-void
.end method
