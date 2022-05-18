.class public Lcn/nubia/cloud/storage/common/bean/FileLinkRes;
.super Lcn/nubia/cloud/storage/common/bean/BaseBean;
.source "FileLinkRes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/FileLinkRes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/FileLinkRes$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/FileLinkRes$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;->links:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;->links:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;->links:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;->links:Ljava/util/List;

    .line 38
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/FileLinkRes$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 50
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;->links:Ljava/util/List;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;->links:Ljava/util/List;

    .line 53
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;->links:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    invoke-super {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v1, p0, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;->links:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string v1, " list size:"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;->links:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 69
    :goto_0
    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;->links:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, " link:"

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;->links:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 59
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/FileLinkRes;->links:Ljava/util/List;

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
