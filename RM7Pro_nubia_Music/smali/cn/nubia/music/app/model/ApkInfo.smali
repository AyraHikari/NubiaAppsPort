.class public final Lcn/nubia/music/app/model/ApkInfo;
.super Ljava/lang/Object;
.source "ApkInfo.java"


# instance fields
.field private apkName:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appSize:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private verCode:I

.field private verName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/music/app/model/ApkInfo;->apkName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcn/nubia/music/app/model/ApkInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/music/app/model/ApkInfo;->appSize:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/music/app/model/ApkInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getVerCode()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcn/nubia/music/app/model/ApkInfo;->verCode:I

    return v0
.end method

.method public getVerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/music/app/model/ApkInfo;->verName:Ljava/lang/String;

    return-object v0
.end method

.method public setApkName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcn/nubia/music/app/model/ApkInfo;->apkName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcn/nubia/music/app/model/ApkInfo;->appName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcn/nubia/music/app/model/ApkInfo;->appSize:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcn/nubia/music/app/model/ApkInfo;->content:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setVerCode(I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcn/nubia/music/app/model/ApkInfo;->verCode:I

    .line 43
    return-void
.end method

.method public setVerName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcn/nubia/music/app/model/ApkInfo;->verName:Ljava/lang/String;

    .line 35
    return-void
.end method
