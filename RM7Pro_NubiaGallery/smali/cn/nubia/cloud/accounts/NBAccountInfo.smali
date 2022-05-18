.class public Lcn/nubia/cloud/accounts/NBAccountInfo;
.super Ljava/lang/Object;
.source "NBAccountInfo.java"


# instance fields
.field public baiduToken:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public headImage:Landroid/graphics/Bitmap;

.field private mVipStatus:Ljava/lang/String;

.field public mobile:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public final tokenId:Ljava/lang/String;

.field public final tokenKey:Ljava/lang/String;

.field public userId:J

.field public final userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->tokenId:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->userName:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->tokenKey:Ljava/lang/String;

    .line 24
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->userId:J

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->email:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/cloud/accounts/utils/AccountUtils;->hideMiddleEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->mobile:Ljava/lang/String;

    invoke-static {v0}, Lcn/nubia/cloud/accounts/utils/AccountUtils;->hideMiddleMobile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHeadImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->headImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLoginName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->mobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->email:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->userName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->email:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->mobile:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->nickName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->userName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->nickName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public isVipUser()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->mVipStatus:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setVipStatus(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/nubia/cloud/accounts/NBAccountInfo;->mVipStatus:Ljava/lang/String;

    return-void
.end method
