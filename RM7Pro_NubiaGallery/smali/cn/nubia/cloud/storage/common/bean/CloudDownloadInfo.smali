.class public Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;
.super Lcn/nubia/cloud/storage/common/bean/BaseBean;
.source "CloudDownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callback:Ljava/lang/String;

.field public createTime:J

.field public queryResult:I

.field public rateLimit:J

.field public savePath:Ljava/lang/String;

.field public sourceUrl:Ljava/lang/String;

.field public status:I

.field public timeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 49
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->queryResult:I

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->sourceUrl:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->savePath:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 20
    iput-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->rateLimit:J

    .line 23
    iput-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->timeout:J

    .line 26
    iput-object v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->callback:Ljava/lang/String;

    .line 31
    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->status:I

    .line 34
    iput-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->createTime:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->queryResult:I

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->sourceUrl:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->savePath:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 20
    iput-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->rateLimit:J

    .line 23
    iput-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->timeout:J

    .line 26
    iput-object v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->callback:Ljava/lang/String;

    .line 31
    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->status:I

    .line 34
    iput-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->createTime:J

    .line 54
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;-><init>(Landroid/os/Parcel;)V

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

    .line 75
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->queryResult:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->sourceUrl:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->savePath:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->rateLimit:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->timeout:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->callback:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->status:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->createTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 91
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    iget p2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->queryResult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->sourceUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->rateLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->timeout:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->callback:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget p2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadInfo;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
