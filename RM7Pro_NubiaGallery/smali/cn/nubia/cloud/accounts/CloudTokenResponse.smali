.class public Lcn/nubia/cloud/accounts/CloudTokenResponse;
.super Lcn/nubia/cloud/utils/NBResponse;
.source "CloudTokenResponse.java"


# static fields
.field private static final KEY_CLOUD_TOKEN:Ljava/lang/String; = "cloud_token"

.field private static final KEY_CLOUD_TOKEN_EXPIRES_IN:Ljava/lang/String; = "expires_in"


# instance fields
.field private mCloudToken:Ljava/lang/String;

.field private mExpiresIn:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/utils/NBResponse;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lcn/nubia/cloud/utils/NBResponse;-><init>(Ljava/lang/String;)V

    const-string p1, "cloud_token"

    .line 20
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/accounts/CloudTokenResponse;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/accounts/CloudTokenResponse;->mCloudToken:Ljava/lang/String;

    const-string p1, "expires_in"

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, v0}, Lcn/nubia/cloud/accounts/CloudTokenResponse;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcn/nubia/cloud/accounts/CloudTokenResponse;->mExpiresIn:I

    return-void
.end method


# virtual methods
.method public getCloudToken()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcn/nubia/cloud/accounts/CloudTokenResponse;->mCloudToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudTokenExpiresIn()I
    .locals 1

    .line 29
    iget v0, p0, Lcn/nubia/cloud/accounts/CloudTokenResponse;->mExpiresIn:I

    return v0
.end method
