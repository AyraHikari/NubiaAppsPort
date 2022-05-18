.class public Lcn/nubia/cloud/storage/common/bean/StreamingURLRes;
.super Lcn/nubia/cloud/storage/common/bean/BaseBean;
.source "StreamingURLRes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/StreamingURLRes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/StreamingURLRes$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/StreamingURLRes$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/StreamingURLRes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/StreamingURLRes;->url:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/StreamingURLRes;->url:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/StreamingURLRes;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/StreamingURLRes$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/StreamingURLRes;-><init>(Landroid/os/Parcel;)V

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

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/StreamingURLRes;->url:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 54
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/StreamingURLRes;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
