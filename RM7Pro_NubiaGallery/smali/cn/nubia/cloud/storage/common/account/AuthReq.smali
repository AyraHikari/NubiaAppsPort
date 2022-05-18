.class public Lcn/nubia/cloud/storage/common/account/AuthReq;
.super Ljava/lang/Object;
.source "AuthReq.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final AUTHTYPE_BASE:I = 0x0

.field public static final AUTHTYPE_OTHORIZED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/account/AuthReq;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authType:I

.field private devId:Ljava/lang/String;

.field private thirdAccessToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcn/nubia/cloud/storage/common/account/AuthReq$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/account/AuthReq$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/account/AuthReq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 25
    iput v0, p0, Lcn/nubia/cloud/storage/common/account/AuthReq;->authType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/account/AuthReq;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/account/AuthReq$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/account/AuthReq;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/account/AuthReq;->authType:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/account/AuthReq;->thirdAccessToken:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/account/AuthReq;->devId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthType()I
    .locals 1

    .line 42
    iget v0, p0, Lcn/nubia/cloud/storage/common/account/AuthReq;->authType:I

    return v0
.end method

.method public getDevId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/account/AuthReq;->devId:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdAccessToken()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/account/AuthReq;->thirdAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthType(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcn/nubia/cloud/storage/common/account/AuthReq;->authType:I

    return-void
.end method

.method public setDevId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/account/AuthReq;->devId:Ljava/lang/String;

    return-void
.end method

.method public setThirdAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/account/AuthReq;->thirdAccessToken:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 80
    iget p2, p0, Lcn/nubia/cloud/storage/common/account/AuthReq;->authType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/account/AuthReq;->thirdAccessToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/account/AuthReq;->devId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
