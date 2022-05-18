.class public Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;
.super Ljava/lang/Object;
.source "PCSAccountInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final THIRD_BINDTYPE_EXPLICIT:I = 0x66

.field public static final THIRD_BINDTYPE_IMPLICIT:I = 0x67

.field public static final THIRD_BINDTYPE_NOT:I = 0x65


# instance fields
.field private accessToken:Ljava/lang/String;

.field private bindType:I

.field private expiresIn:J

.field private isCouponed:Z

.field private refreshToken:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/account/PCSAccountInfo$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->accessToken:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->userName:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->expiresIn:J

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->refreshToken:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->userId:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->bindType:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->isCouponed:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getBindType()I
    .locals 1

    .line 128
    iget v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->bindType:I

    return v0
.end method

.method public getExpiresIn()J
    .locals 2

    .line 112
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->expiresIn:J

    return-wide v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public final isCouponed()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->isCouponed:Z

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setBindType(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->bindType:I

    return-void
.end method

.method public final setCouponed(Z)V
    .locals 0

    .line 136
    iput-boolean p1, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->isCouponed:Z

    return-void
.end method

.method public setExpiresIn(J)V
    .locals 0

    .line 108
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->expiresIn:J

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->refreshToken:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->userName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthResponse: bindtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->bindType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCouponed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->isCouponed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expiresIn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->expiresIn:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", refreshToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->refreshToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 66
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->accessToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->userName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->expiresIn:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->refreshToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->userId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget p2, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->bindType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-boolean p2, p0, Lcn/nubia/cloud/storage/common/account/PCSAccountInfo;->isCouponed:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
