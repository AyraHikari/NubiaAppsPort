.class public Lcn/nubia/cloud/storage/common/bean/DifferEntry;
.super Lcn/nubia/cloud/storage/common/bean/BaseBean;
.source "DifferEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/DifferEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

.field public isDeleted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/DifferEntry$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/DifferEntry$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/DifferEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/DifferEntry;->isDeleted:Z

    .line 18
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/FileInfo;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/FileInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/DifferEntry;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/DifferEntry;->isDeleted:Z

    .line 22
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/DifferEntry;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcn/nubia/cloud/storage/common/bean/DifferEntry;->isDeleted:Z

    .line 34
    sget-object v0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/storage/common/bean/FileInfo;

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/DifferEntry;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 39
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    iget-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/DifferEntry;->isDeleted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/DifferEntry;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/FileInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    return-void
.end method
