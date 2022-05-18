.class public Lcn/nubia/music/utils/HttpConstants;
.super Ljava/lang/Object;
.source "HttpConstants.java"


# static fields
.field public static final RELEASE_APP_KEY:Ljava/lang/String; = "OaKc04K4e81abe33"

.field public static final RELEASE_APP_SECRET_KEY:Ljava/lang/String; = "5a4eaa32b0088eb3"

.field public static final TEST_APP_KEY:Ljava/lang/String; = "OecUd1pb20ba27df"

.field public static final TEST_APP_SECRET_KEY:Ljava/lang/String; = "6de1c654ec9a0b57"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string v0, "OaKc04K4e81abe33"

    return-object v0
.end method

.method public static getAppSecretKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "5a4eaa32b0088eb3"

    return-object v0
.end method
