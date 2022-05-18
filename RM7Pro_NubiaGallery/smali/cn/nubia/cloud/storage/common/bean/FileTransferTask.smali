.class public Lcn/nubia/cloud/storage/common/bean/FileTransferTask;
.super Lcn/nubia/cloud/storage/common/bean/FromToInfo;
.source "FileTransferTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/FileTransferTask;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_TASK_CANCELLED:I = 0x6e

.field public static final STATE_TASK_CREATE:I = 0x68

.field public static final STATE_TASK_CREATE_FAILED:I = 0x69

.field public static final STATE_TASK_DONE:I = 0x6a

.field public static final STATE_TASK_DOWN_REMOVE:I = 0x71

.field public static final STATE_TASK_FAILED:I = 0x67

.field public static final STATE_TASK_PAUSE:I = 0x66

.field public static final STATE_TASK_PENDING:I = 0x64

.field public static final STATE_TASK_REMOVE:I = 0x70

.field public static final STATE_TASK_RUNNING:I = 0x65

.field public static final TYPE_TASK_DOWNLOAD:I = 0x2

.field public static final TYPE_TASK_DOWNLOAD_NO_SHOW_Notification:I = 0x4

.field public static final TYPE_TASK_UPLOAD:I = 0x1

.field public static final TYPE_TASK_UPLOAD_NO_SHOW_Notification:I = 0x3


# instance fields
.field private bytesPerSecond:J

.field private currentSize:J

.field public fileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

.field private fileName:Ljava/lang/String;

.field public isDir:Z

.field private statusTaskCode:I

.field private taskTimeSecond:J

.field private totalSize:J

.field private type:I

.field public uPolicy:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 204
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 216
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->statusTaskCode:I

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->totalSize:J

    .line 50
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->currentSize:J

    .line 53
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->bytesPerSecond:J

    .line 65
    sget-object v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->OTHER:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->uPolicy:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    .line 217
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/FileTransferTask$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->statusTaskCode:I

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->totalSize:J

    .line 50
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->currentSize:J

    .line 53
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->bytesPerSecond:J

    .line 65
    sget-object v0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->OTHER:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->uPolicy:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    .line 95
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->init(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;)Lcn/nubia/cloud/storage/common/bean/FileTransferTask;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p5, p6}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->statusTaskCode:I

    const-wide/16 p1, 0x0

    .line 47
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->totalSize:J

    .line 50
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->currentSize:J

    .line 53
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->bytesPerSecond:J

    .line 65
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->OTHER:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->uPolicy:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    .line 71
    iput p4, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->type:I

    .line 72
    iput-boolean p3, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->isDir:Z

    .line 73
    new-instance p1, Lcn/nubia/cloud/storage/common/bean/FileInfo;

    invoke-virtual {p0}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getCloudPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getLocalPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcn/nubia/cloud/storage/common/bean/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->fileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->statusTaskCode:I

    const-wide/16 p1, 0x0

    .line 47
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->totalSize:J

    .line 50
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->currentSize:J

    .line 53
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->bytesPerSecond:J

    .line 65
    sget-object p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->OTHER:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->uPolicy:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    .line 88
    iput-boolean p3, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->isDir:Z

    .line 89
    iput-object p4, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->uPolicy:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    .line 90
    iput p5, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->type:I

    .line 91
    new-instance p1, Lcn/nubia/cloud/storage/common/bean/FileInfo;

    invoke-virtual {p0}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getCloudPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getLocalPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcn/nubia/cloud/storage/common/bean/FileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->fileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBytesPerSecond()J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->bytesPerSecond:J

    return-wide v0
.end method

.method public getCloudPath()Ljava/lang/String;
    .locals 2

    .line 186
    iget v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSize()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->currentSize:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->fileName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/utils/FileUtil;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->fileName:Ljava/lang/String;

    .line 118
    :cond_0
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 2

    .line 177
    iget v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getTarget()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->getSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusTaskCode()I
    .locals 1

    .line 168
    iget v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->statusTaskCode:I

    return v0
.end method

.method public getTaskTimeSecond()J
    .locals 2

    .line 148
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskTimeSecond:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .line 123
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->totalSize:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 163
    iget v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->type:I

    return v0
.end method

.method public init(Lcn/nubia/cloud/storage/common/bean/FileTransferTask;)Lcn/nubia/cloud/storage/common/bean/FileTransferTask;
    .locals 2

    .line 99
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->init(Lcn/nubia/cloud/storage/common/bean/FromToInfo;)V

    .line 100
    iget v0, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->type:I

    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->type:I

    .line 101
    iget-boolean v0, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->isDir:Z

    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->isDir:Z

    .line 102
    iget-object v0, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->fileName:Ljava/lang/String;

    .line 103
    iget v0, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->statusTaskCode:I

    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->statusTaskCode:I

    .line 104
    iget-wide v0, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->totalSize:J

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->totalSize:J

    .line 105
    iget-wide v0, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->currentSize:J

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->currentSize:J

    .line 106
    iget-wide v0, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->bytesPerSecond:J

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->bytesPerSecond:J

    .line 107
    iget-object v0, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->uPolicy:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->uPolicy:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    .line 108
    iget-wide v0, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskTimeSecond:J

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskTimeSecond:J

    .line 109
    iget-object p1, p1, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->fileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->fileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    return-object p0
.end method

.method public isDownload()Z
    .locals 2

    .line 195
    iget v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isUpload()Z
    .locals 3

    .line 200
    iget v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 227
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 228
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/FileInfo;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/FileInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->fileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    .line 229
    invoke-virtual {v0, p1}, Lcn/nubia/cloud/storage/common/bean/FileInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->fileName:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->totalSize:J

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->currentSize:J

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->bytesPerSecond:J

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->type:I

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->statusTaskCode:I

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskTimeSecond:J

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->valueOf(I)Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->uPolicy:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->isDir:Z

    return-void
.end method

.method public setBytesPerSecond(J)V
    .locals 0

    .line 158
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->bytesPerSecond:J

    return-void
.end method

.method public setCurrentSize(J)V
    .locals 0

    .line 138
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->currentSize:J

    return-void
.end method

.method public setStatusTaskCode(I)V
    .locals 0

    .line 173
    iput p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->statusTaskCode:I

    return-void
.end method

.method public setTaskTimeSecond(J)V
    .locals 0

    .line 143
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskTimeSecond:J

    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 128
    iput-wide p1, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->totalSize:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "fileName:"

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " totalSize:"

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->totalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " currentSize:"

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->currentSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytesPerSecond:"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->bytesPerSecond:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " type:"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " statusTaskCode:"

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->statusTaskCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " uploadSameFilePolicy:"

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->uPolicy:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " taskTimeSecond:"

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskTimeSecond:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 243
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/FromToInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 244
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->fileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/FileInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 245
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->totalSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 247
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->currentSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 248
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->bytesPerSecond:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 249
    iget p2, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget p2, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->statusTaskCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->taskTimeSecond:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->uPolicy:Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;

    invoke-virtual {p2}, Lcn/nubia/cloud/storage/common/bean/FileTransferTask$UpDownloadPolicy;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget-boolean p2, p0, Lcn/nubia/cloud/storage/common/bean/FileTransferTask;->isDir:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
