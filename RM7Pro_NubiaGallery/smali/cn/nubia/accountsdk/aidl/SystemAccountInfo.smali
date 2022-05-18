.class public Lcn/nubia/accountsdk/aidl/SystemAccountInfo;
.super Ljava/lang/Object;
.source "SystemAccountInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/accountsdk/aidl/SystemAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_HEAD_IMG:Ljava/lang/String; = "key_nubia_account_head_image"

.field public static final KEY_MY_CLOUD_SPACE:Ljava/lang/String; = "key_my_cloud_space"


# instance fields
.field private mEmail:Ljava/lang/String;

.field private mHeadImage:Landroid/graphics/Bitmap;

.field private mIDCard:Ljava/lang/String;

.field private final mKeyValueBundle:Landroid/os/Bundle;

.field private mMobile:Ljava/lang/String;

.field private mNickName:Ljava/lang/String;

.field private mRealName:Ljava/lang/String;

.field private mTokenId:Ljava/lang/String;

.field private mTokenKey:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mVipStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo$1;

    invoke-direct {v0}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo$1;-><init>()V

    sput-object v0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenId:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mUserName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenKey:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mNickName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mMobile:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mEmail:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mVipStatus:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mRealName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mIDCard:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenId:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mUserName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenKey:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mNickName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mMobile:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mEmail:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mVipStatus:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mRealName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mIDCard:Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenId:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mUserName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenKey:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mNickName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mMobile:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mEmail:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mVipStatus:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mRealName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mIDCard:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenId:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mUserName:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenKey:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mNickName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mMobile:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mEmail:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mVipStatus:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mRealName:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mIDCard:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mUserName:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenKey:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mNickName:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mMobile:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mEmail:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mVipStatus:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mRealName:Ljava/lang/String;

    .line 39
    iput-object p9, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mIDCard:Ljava/lang/String;

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenId:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mUserName:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenKey:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mNickName:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mMobile:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mEmail:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mVipStatus:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mRealName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mIDCard:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getHeadImage()Landroid/graphics/Bitmap;
    .locals 2

    .line 59
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mHeadImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    const-string v1, "key_nubia_account_head_image"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mHeadImage:Landroid/graphics/Bitmap;

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mHeadImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIDCard()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mIDCard:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mMobile:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getRealName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mRealName:Ljava/lang/String;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenId:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenKey()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getVipStatus()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mVipStatus:Ljava/lang/String;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public setIDCard(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mIDCard:Ljava/lang/String;

    return-void
.end method

.method public setRealName(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mRealName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SystemAccountInfo [mKeyValueBundle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTokenId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserName="

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTokenKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mNickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMobile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mMobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVipStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mVipStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRealName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mRealName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIDCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mIDCard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeadImage="

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mHeadImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 145
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mTokenKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mNickName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mMobile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mVipStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mRealName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object p2, p0, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->mIDCard:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
