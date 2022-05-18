.class public Lcn/nubia/cloud/storage/common/bean/LoginUrlRes;
.super Lcn/nubia/cloud/storage/common/bean/BaseBean;
.source "LoginUrlRes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/LoginUrlRes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public loginUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/LoginUrlRes$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/LoginUrlRes$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/LoginUrlRes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/LoginUrlRes;->loginUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>(ILjava/lang/String;)V

    const-string p1, ""

    .line 14
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/LoginUrlRes;->loginUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const-string v0, ""

    .line 14
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/LoginUrlRes;->loginUrl:Ljava/lang/String;

    .line 36
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/LoginUrlRes;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/LoginUrlRes$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/LoginUrlRes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/LoginUrlRes;->loginUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    invoke-super {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " loginUrl:"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/LoginUrlRes;->loginUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/LoginUrlRes;->loginUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
