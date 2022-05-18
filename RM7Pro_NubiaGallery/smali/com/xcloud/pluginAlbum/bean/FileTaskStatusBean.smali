.class public Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;
.super Lcom/xcloud/pluginAlbum/bean/BundleObject;
.source "FileTaskStatusBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$TaskType;,
        Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$ProcessType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROCESS_TYPE_PAUSE:Ljava/lang/String; = "PAUSE"

.field public static final PROCESS_TYPE_REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final PROCESS_TYPE_RESTART:Ljava/lang/String; = "RESTART"

.field public static final PROCESS_TYPE_RESUME:Ljava/lang/String; = "RESUME"

.field public static final STATE_TASK_CANCELLED:I = 0x6e

.field public static final STATE_TASK_CREATE:I = 0x68

.field public static final STATE_TASK_CREATE_FAILED:I = 0x69

.field public static final STATE_TASK_DONE:I = 0x6a

.field public static final STATE_TASK_FAILED:I = 0x67

.field public static final STATE_TASK_PAUSE:I = 0x66

.field public static final STATE_TASK_PENDING:I = 0x64

.field public static final STATE_TASK_RUNNING:I = 0x65

.field public static final STATUS_BEGIN:I = 0x1

.field public static final STATUS_CANCELD:I = 0x4

.field public static final STATUS_END:I = 0x2

.field public static final STATUS_ERROR:I = 0x0

.field public static final STATUS_PROGRESS:I = 0x3

.field public static final TASK_TYPE_ALL:Ljava/lang/String; = "ALL"

.field public static final TASK_TYPE_DOWNLOAD:Ljava/lang/String; = "DOWNLOAD"

.field public static final TASK_TYPE_UPLOAD:Ljava/lang/String; = "UPLOAD"

.field public static final TYPE_TASK_DOWNLOAD:I = 0x2

.field public static final TYPE_TASK_UPLOAD:I = 0x1


# instance fields
.field private currentSize:J

.field private errorCode:I

.field private fileName:Ljava/lang/String;

.field private fileTaskId:J

.field private message:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private statusTaskCode:I

.field protected statusType:I

.field private target:Ljava/lang/String;

.field private totalSize:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 322
    new-instance v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$1;

    invoke-direct {v0}, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$1;-><init>()V

    sput-object v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 334
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/BundleObject;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->errorCode:I

    const-string v1, ""

    .line 142
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->message:Ljava/lang/String;

    const/4 v2, 0x1

    .line 151
    iput v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    .line 155
    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusTaskCode:I

    .line 160
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->source:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->target:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 174
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    .line 178
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->totalSize:J

    .line 182
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->currentSize:J

    return-void
.end method

.method public constructor <init>(JIILjava/lang/String;)V
    .locals 3

    .line 229
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/BundleObject;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->errorCode:I

    const-string v1, ""

    .line 142
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->message:Ljava/lang/String;

    const/4 v2, 0x1

    .line 151
    iput v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    .line 155
    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusTaskCode:I

    .line 160
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->source:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->target:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 174
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    .line 178
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->totalSize:J

    .line 182
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->currentSize:J

    .line 230
    iput-wide p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    .line 231
    iput p3, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    .line 232
    iput p4, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->errorCode:I

    .line 233
    iput-object p5, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->message:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 337
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/BundleObject;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->errorCode:I

    const-string v1, ""

    .line 142
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->message:Ljava/lang/String;

    const/4 v2, 0x1

    .line 151
    iput v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    .line 155
    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusTaskCode:I

    .line 160
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->source:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->target:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 174
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    .line 178
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->totalSize:J

    .line 182
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->currentSize:J

    .line 338
    invoke-virtual {p0, p1}, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;IIILjava/lang/String;)V
    .locals 3

    .line 216
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/BundleObject;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->errorCode:I

    const-string v1, ""

    .line 142
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->message:Ljava/lang/String;

    const/4 v2, 0x1

    .line 151
    iput v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    .line 155
    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusTaskCode:I

    .line 160
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->source:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->target:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 174
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    .line 178
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->totalSize:J

    .line 182
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->currentSize:J

    .line 217
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->source:Ljava/lang/String;

    .line 218
    iput-object p2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->target:Ljava/lang/String;

    .line 219
    iput p3, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->type:I

    .line 220
    iput-wide p4, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    .line 221
    iput-object p6, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileName:Ljava/lang/String;

    .line 222
    iput p7, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    .line 223
    iput p8, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusTaskCode:I

    .line 224
    iput p9, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->errorCode:I

    .line 225
    iput-object p10, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;JJII)V
    .locals 3

    .line 202
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/BundleObject;-><init>()V

    const/4 v0, -0x1

    .line 139
    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->errorCode:I

    const-string v1, ""

    .line 142
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->message:Ljava/lang/String;

    const/4 v2, 0x1

    .line 151
    iput v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    .line 155
    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusTaskCode:I

    .line 160
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->source:Ljava/lang/String;

    .line 165
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->target:Ljava/lang/String;

    .line 170
    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileName:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 174
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    .line 178
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->totalSize:J

    .line 182
    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->currentSize:J

    .line 203
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->source:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->target:Ljava/lang/String;

    .line 205
    iput p3, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->type:I

    .line 206
    iput-wide p4, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    .line 207
    iput-object p6, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileName:Ljava/lang/String;

    .line 208
    iput-wide p7, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->totalSize:J

    .line 209
    iput-wide p9, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->currentSize:J

    .line 210
    iput p11, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    .line 211
    iput p12, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusTaskCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;JJIIILjava/lang/String;)V
    .locals 4

    move-object v0, p0

    .line 186
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/BundleObject;-><init>()V

    const/4 v1, -0x1

    .line 139
    iput v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->errorCode:I

    const-string v2, ""

    .line 142
    iput-object v2, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->message:Ljava/lang/String;

    const/4 v3, 0x1

    .line 151
    iput v3, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    .line 155
    iput v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusTaskCode:I

    .line 160
    iput-object v2, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->source:Ljava/lang/String;

    .line 165
    iput-object v2, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->target:Ljava/lang/String;

    .line 170
    iput-object v2, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileName:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 174
    iput-wide v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    .line 178
    iput-wide v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->totalSize:J

    .line 182
    iput-wide v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->currentSize:J

    move-object v1, p1

    .line 187
    iput-object v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->source:Ljava/lang/String;

    move-object v1, p2

    .line 188
    iput-object v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->target:Ljava/lang/String;

    move v1, p3

    .line 189
    iput v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->type:I

    move-wide v1, p4

    .line 190
    iput-wide v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    move-object v1, p6

    .line 191
    iput-object v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileName:Ljava/lang/String;

    move-wide v1, p7

    .line 192
    iput-wide v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->totalSize:J

    move-wide v1, p9

    .line 193
    iput-wide v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->currentSize:J

    move v1, p11

    .line 194
    iput v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    move/from16 v1, p12

    .line 195
    iput v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusTaskCode:I

    move/from16 v1, p13

    .line 196
    iput v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->errorCode:I

    move-object/from16 v1, p14

    .line 197
    iput-object v1, v0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentSize()J
    .locals 2

    .line 284
    iget-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->currentSize:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 382
    iget v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->errorCode:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileTaskId()J
    .locals 2

    .line 240
    iget-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusTaskCode()I
    .locals 1

    .line 438
    iget v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusTaskCode:I

    return v0
.end method

.method public getStatusType()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    return v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->target:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()J
    .locals 2

    .line 270
    iget-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->totalSize:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->type:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 348
    invoke-super {p0, p1}, Lcom/xcloud/pluginAlbum/bean/BundleObject;->readFromParcel(Landroid/os/Parcel;)V

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->message:Ljava/lang/String;

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->source:Ljava/lang/String;

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->target:Ljava/lang/String;

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileName:Ljava/lang/String;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->totalSize:J

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->currentSize:J

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->type:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->errorCode:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusTaskCode:I

    return-void
.end method

.method public setCurrentSize(J)V
    .locals 0

    .line 291
    iput-wide p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->currentSize:J

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 389
    iput p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->errorCode:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileTaskId(J)V
    .locals 0

    .line 249
    iput-wide p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 403
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->message:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->source:Ljava/lang/String;

    return-void
.end method

.method public setStatusTaskCode(I)V
    .locals 0

    .line 445
    iput p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusTaskCode:I

    return-void
.end method

.method public setStatusType(I)V
    .locals 0

    .line 319
    iput p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->target:Ljava/lang/String;

    return-void
.end method

.method public setTotalSize(J)V
    .locals 0

    .line 277
    iput-wide p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->totalSize:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 305
    iput p1, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 450
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 451
    invoke-super {p0}, Lcom/xcloud/pluginAlbum/bean/BundleObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " target:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->target:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " fileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " fileTaskId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " totalSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->totalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " currentSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->currentSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " errorCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " statusType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " statusTaskCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusTaskCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 364
    invoke-super {p0, p1, p2}, Lcom/xcloud/pluginAlbum/bean/BundleObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 365
    iget-object p2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    iget-object p2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    iget-object p2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->target:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    iget-object p2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    iget-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->fileTaskId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 370
    iget-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->totalSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 371
    iget-wide v0, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->currentSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 372
    iget p2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget p2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget p2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget p2, p0, Lcom/xcloud/pluginAlbum/bean/FileTaskStatusBean;->statusTaskCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
