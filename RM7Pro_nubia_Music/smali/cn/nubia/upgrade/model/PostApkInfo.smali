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

.field private mVersionName:Ljava/lang/String;


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
    .line 25
    iget-object v0, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mCheckSum:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptParams(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "version_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&check_sum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mCheckSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&unique_key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mUniqueKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&patch_value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mJsonPatchValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    const-string v1, "PostApkInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "before Encrypt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, ""

    .line 67
    :try_start_0
    invoke-static {}, Lcn/nubia/upgrade/util/CommonUtils;->getInstance()Lcn/nubia/upgrade/util/CommonUtils;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/nubia/upgrade/util/CommonUtils;->initParam(Lcn/nubia/upgrade/model/PostApkInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcn/nubia/upgrade/util/encode/InterceptorClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 69
    :try_start_1
    const-string v1, "PostApkInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "after Encrypt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcn/nubia/upgrade/util/encode/InterceptorClientException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    .line 79
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 72
    :goto_1
    invoke-virtual {v1}, Lcn/nubia/upgrade/util/encode/InterceptorClientException;->printStackTrace()V

    .line 73
    const-string v1, "PostApkInfo"

    const-string v2, "PostApkInfo InterceptorClientException"

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 75
    :goto_2
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 76
    const-string v1, "PostApkInfo"

    const-string v2, "PostApkInfo UnsupportedEncodingException"

    invoke-static {v1, v2}, Lcn/nubia/upgrade/util/NuLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :catch_2
    move-exception v1

    goto :goto_2

    .line 71
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public getJsonPatchValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mJsonPatchValue:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mUniqueKey:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mVersionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public setCheckSum(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mCheckSum:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setEncryptParams(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mEncryptParams:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setPatchValue(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mJsonPatchValue:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setUniqueKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mUniqueKey:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mVersionCode:I

    .line 38
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcn/nubia/upgrade/model/PostApkInfo;->mVersionName:Ljava/lang/String;

    .line 58
    return-void
.end method
