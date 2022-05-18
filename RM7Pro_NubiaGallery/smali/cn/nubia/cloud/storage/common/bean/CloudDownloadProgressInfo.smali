.class public Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;
.super Lcn/nubia/cloud/storage/common/bean/BaseBean;
.source "CloudDownloadProgressInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public createTime:J

.field public fileSize:J

.field public finishedSize:J

.field public finishedTime:J

.field public queryResult:I

.field public startTime:J

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->queryResult:I

    const-wide/16 v1, -0x1

    .line 17
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->startTime:J

    .line 20
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->finishedSize:J

    .line 23
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->fileSize:J

    .line 26
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->finishedTime:J

    .line 29
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->createTime:J

    .line 34
    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->status:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->queryResult:I

    const-wide/16 v1, -0x1

    .line 17
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->startTime:J

    .line 20
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->finishedSize:J

    .line 23
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->fileSize:J

    .line 26
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->finishedTime:J

    .line 29
    iput-wide v1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->createTime:J

    .line 34
    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->status:I

    .line 54
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;-><init>(Landroid/os/Parcel;)V

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

    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->queryResult:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->startTime:J

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->finishedSize:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->fileSize:J

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->finishedTime:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->createTime:J

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->status:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 90
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 91
    iget p2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->queryResult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->startTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 93
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->finishedSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->fileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->finishedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->createTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget p2, p0, Lcn/nubia/cloud/storage/common/bean/CloudDownloadProgressInfo;->status:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
