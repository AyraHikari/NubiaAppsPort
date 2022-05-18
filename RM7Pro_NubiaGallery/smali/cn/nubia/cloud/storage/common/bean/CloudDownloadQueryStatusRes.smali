.class public Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;
.super Lcn/nubia/cloud/storage/common/bean/BaseBean;
.source "CloudDownloadQueryStatusRes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public requestId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->requestId:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->list:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->requestId:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->list:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->requestId:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->list:Ljava/util/List;

    .line 38
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .line 58
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->requestId:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->list:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    sget-object v2, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;

    .line 65
    iget-object v3, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 92
    invoke-super {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestId:"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->requestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->list:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string v1, " list size:"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 96
    :goto_0
    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 97
    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;

    const-string v3, " index:"

    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " taskId:"

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " queryResult:"

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->queryResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sourceUrl:"

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->sourceUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " savePath:"

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rateLimit:"

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->rateLimit:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " timeout:"

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->timeout:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " callback:"

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->callback:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " status:"

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " createTime:"

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->createTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 75
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 76
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->requestId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 81
    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadQueryStatusRes;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;

    invoke-virtual {v2, p1, p2}, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
