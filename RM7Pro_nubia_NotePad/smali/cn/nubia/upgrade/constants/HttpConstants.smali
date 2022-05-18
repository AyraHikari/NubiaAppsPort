.class public Lcn/nubia/upgrade/constants/HttpConstants;
.super Ljava/lang/Object;
.source "HttpConstants.java"


# static fields
.field public static final FILE_CONTENT_TYPE:Ljava/lang/String; = "application/ausp"

.field public static final GETVERSION:Ljava/lang/String; = "service/get_version.do"

.field public static final HTTP_DOMAIN_TEST:Ljava/lang/String; = "http://ausp-dev.nubia.cn/"

.field public static final HTTP_DOMAI_RELEASE:Ljava/lang/String; = "http://ausp.server.nubia.cn/"

.field public static final HTTP_HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HTTP_READ_TIME_OUT:I = 0x1388

.field public static final HTTP_TIME_OUT:I = 0x3a98

.field private static sDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/upgrade/constants/HttpConstants;->sDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 20
    sput-boolean p0, Lcn/nubia/upgrade/constants/HttpConstants;->sDebug:Z

    .line 21
    return-void
.end method

.method public static getCheckVersionURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcn/nubia/upgrade/constants/HttpConstants;->sDebug:Z

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "http://ausp-dev.nubia.cn/service/get_version.do"

    .line 26
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://ausp.server.nubia.cn/service/get_version.do"

    goto :goto_0
.end method

.method public static getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
