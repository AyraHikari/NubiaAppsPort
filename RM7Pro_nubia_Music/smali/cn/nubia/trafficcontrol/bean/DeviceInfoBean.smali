.class public Lcn/nubia/trafficcontrol/bean/DeviceInfoBean;
.super Ljava/lang/Object;
.source "DeviceInfoBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcn/nubia/trafficcontrol/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mImei:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcn/nubia/trafficcontrol/bean/DeviceInfoBean$1;

    invoke-direct {v0}, Lcn/nubia/trafficcontrol/bean/DeviceInfoBean$1;-><init>()V

    sput-object v0, Lcn/nubia/trafficcontrol/bean/DeviceInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/trafficcontrol/bean/DeviceInfoBean;->mImei:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/trafficcontrol/bean/DeviceInfoBean;->mImei:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/trafficcontrol/bean/DeviceInfoBean;->mImei:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/trafficcontrol/bean/DeviceInfoBean;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcn/nubia/trafficcontrol/bean/DeviceInfoBean;->mImei:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/trafficcontrol/bean/DeviceInfoBean;->mImei:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method
