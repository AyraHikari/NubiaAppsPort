.class public Lcn/nubia/leagueshare/NBShareDevice;
.super Ljava/lang/Object;
.source "NBShareDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/leagueshare/NBShareDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_STATUS_CANCELED:I = 0x7

.field public static final DEVICE_STATUS_CONNECTING:I = 0x2

.field public static final DEVICE_STATUS_DEFAULT:I = 0x0

.field public static final DEVICE_STATUS_SENDING:I = 0x3

.field public static final DEVICE_STATUS_SEND_FAILED:I = 0x6

.field public static final DEVICE_STATUS_SENT:I = 0x4

.field public static final DEVICE_STATUS_STOPPED:I = 0x5

.field public static final DEVICE_STATUS_TIMEOUT:I = 0x8

.field public static final DEVICE_STATUS_WAITING:I = 0x1

.field public static final DEVICE_TYPE_ASUS:I = 0xe

.field public static final DEVICE_TYPE_BLACKSHARK:I = 0xb

.field public static final DEVICE_TYPE_BYTEDANCE:I = 0xa

.field public static final DEVICE_TYPE_DEFAULT:I = 0x0

.field public static final DEVICE_TYPE_HISENSE:I = 0x7

.field public static final DEVICE_TYPE_LENOVO:I = 0xf

.field public static final DEVICE_TYPE_MEIZU:I = 0x8

.field public static final DEVICE_TYPE_MIUI:I = 0x4

.field public static final DEVICE_TYPE_MOTOROLA:I = 0x10

.field public static final DEVICE_TYPE_NUBIA:I = 0x6

.field public static final DEVICE_TYPE_ONEPLUS:I = 0x9

.field public static final DEVICE_TYPE_OPPO:I = 0x3

.field public static final DEVICE_TYPE_REALME:I = 0x5

.field public static final DEVICE_TYPE_ROG:I = 0xd

.field public static final DEVICE_TYPE_SAMSUNG:I = 0xc

.field public static final DEVICE_TYPE_VIVO:I = 0x2

.field public static final DEVICE_TYPE_ZTE:I = 0x1


# instance fields
.field private mDeviceType:I

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mSendProgress:I

.field private mSendStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lcn/nubia/leagueshare/NBShareDevice$1;

    invoke-direct {v0}, Lcn/nubia/leagueshare/NBShareDevice$1;-><init>()V

    sput-object v0, Lcn/nubia/leagueshare/NBShareDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lcn/nubia/leagueshare/NBShareDevice;->mId:I

    .line 46
    iput-object p2, p0, Lcn/nubia/leagueshare/NBShareDevice;->mName:Ljava/lang/String;

    .line 47
    iput p3, p0, Lcn/nubia/leagueshare/NBShareDevice;->mDeviceType:I

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcn/nubia/leagueshare/NBShareDevice;->mSendProgress:I

    .line 49
    iput p1, p0, Lcn/nubia/leagueshare/NBShareDevice;->mSendStatus:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/leagueshare/NBShareDevice;->mId:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/leagueshare/NBShareDevice;->mName:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/leagueshare/NBShareDevice;->mDeviceType:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/leagueshare/NBShareDevice;->mSendProgress:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcn/nubia/leagueshare/NBShareDevice;->mSendStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 91
    :cond_0
    instance-of v1, p1, Lcn/nubia/leagueshare/NBShareDevice;

    if-nez v1, :cond_1

    return v0

    .line 95
    :cond_1
    iget v1, p0, Lcn/nubia/leagueshare/NBShareDevice;->mId:I

    check-cast p1, Lcn/nubia/leagueshare/NBShareDevice;

    invoke-virtual {p1}, Lcn/nubia/leagueshare/NBShareDevice;->getId()I

    move-result p1

    if-ne v1, p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 61
    iget v0, p0, Lcn/nubia/leagueshare/NBShareDevice;->mDeviceType:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 53
    iget v0, p0, Lcn/nubia/leagueshare/NBShareDevice;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcn/nubia/leagueshare/NBShareDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSendProgress()I
    .locals 1

    .line 65
    iget v0, p0, Lcn/nubia/leagueshare/NBShareDevice;->mSendProgress:I

    return v0
.end method

.method public getSendStatus()I
    .locals 1

    .line 78
    iget v0, p0, Lcn/nubia/leagueshare/NBShareDevice;->mSendStatus:I

    return v0
.end method

.method public setSendProgress(I)V
    .locals 1

    .line 69
    iput p1, p0, Lcn/nubia/leagueshare/NBShareDevice;->mSendProgress:I

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    .line 71
    iput v0, p0, Lcn/nubia/leagueshare/NBShareDevice;->mSendProgress:I

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lcn/nubia/leagueshare/NBShareDevice;->mSendProgress:I

    :cond_1
    :goto_0
    return-void
.end method

.method public setSendStatus(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcn/nubia/leagueshare/NBShareDevice;->mSendStatus:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 108
    iget p2, p0, Lcn/nubia/leagueshare/NBShareDevice;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object p2, p0, Lcn/nubia/leagueshare/NBShareDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget p2, p0, Lcn/nubia/leagueshare/NBShareDevice;->mDeviceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget p2, p0, Lcn/nubia/leagueshare/NBShareDevice;->mSendProgress:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget p2, p0, Lcn/nubia/leagueshare/NBShareDevice;->mSendStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
