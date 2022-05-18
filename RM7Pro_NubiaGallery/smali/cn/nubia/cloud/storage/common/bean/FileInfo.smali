.class public Lcn/nubia/cloud/storage/common/bean/FileInfo;
.super Lcn/nubia/cloud/storage/common/bean/BundleObj;
.source "FileInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blockList:Ljava/lang/String;

.field public cTime:J

.field public displayName:Ljava/lang/String;

.field public fsId:Ljava/lang/String;

.field public hasSubFolder:Z

.field public isDir:Z

.field public localPath:Ljava/lang/String;

.field public mTime:J

.field public mediaType:Lcn/nubia/cloud/storage/common/MediaType;

.field public path:Ljava/lang/String;

.field public size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/FileInfo$2;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/FileInfo$2;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BundleObj;-><init>()V

    .line 31
    sget-object v0, Lcn/nubia/cloud/storage/common/MediaType;->UNKNOWN:Lcn/nubia/cloud/storage/common/MediaType;

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mediaType:Lcn/nubia/cloud/storage/common/MediaType;

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mTime:J

    .line 37
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->cTime:J

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->size:J

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->isDir:Z

    .line 51
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->hasSubFolder:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BundleObj;-><init>()V

    .line 31
    sget-object v0, Lcn/nubia/cloud/storage/common/MediaType;->UNKNOWN:Lcn/nubia/cloud/storage/common/MediaType;

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mediaType:Lcn/nubia/cloud/storage/common/MediaType;

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mTime:J

    .line 37
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->cTime:J

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->size:J

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->isDir:Z

    .line 51
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->hasSubFolder:Z

    .line 66
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FileInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/FileInfo$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FileInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BundleObj;-><init>()V

    .line 31
    sget-object v0, Lcn/nubia/cloud/storage/common/MediaType;->UNKNOWN:Lcn/nubia/cloud/storage/common/MediaType;

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mediaType:Lcn/nubia/cloud/storage/common/MediaType;

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mTime:J

    .line 37
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->cTime:J

    const-wide/16 v0, -0x1

    .line 43
    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->size:J

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->isDir:Z

    .line 51
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->hasSubFolder:Z

    .line 60
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->path:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->localPath:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcn/nubia/cloud/storage/common/utils/FileUtil;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected init(Landroid/database/Cursor;)V
    .locals 2

    const-string v0, "cloud_path"

    .line 186
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->path:Ljava/lang/String;

    const-string v0, "local_path"

    .line 187
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->localPath:Ljava/lang/String;

    const-string v0, "display_name"

    .line 188
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->displayName:Ljava/lang/String;

    const-string v0, "media_type"

    .line 189
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/MediaType;->valueOf(I)Lcn/nubia/cloud/storage/common/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mediaType:Lcn/nubia/cloud/storage/common/MediaType;

    const-string v0, "date_added"

    .line 191
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->cTime:J

    const-string v0, "date_modified"

    .line 192
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mTime:J

    const-string v0, "md5"

    .line 193
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->blockList:Ljava/lang/String;

    const-string v0, "size"

    .line 194
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getLong(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->size:J

    const-string v0, "is_dir"

    .line 195
    invoke-static {p1, v0}, Lcn/nubia/cloud/utils/CursorUtil;->getInt(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->isDir:Z

    return-void
.end method

.method public loadLocalThumbnail(II)Landroid/graphics/Bitmap;
    .locals 1

    .line 82
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->localPath:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcn/nubia/cloud/storage/common/utils/ImageLoaderUtil;->loadFromFd(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public loadThumbnail(Lcn/nubia/cloud/storage/common/CloudStorage;IIILcn/nubia/cloud/utils/SimpleListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/cloud/storage/common/CloudStorage;",
            "III",
            "Lcn/nubia/cloud/utils/SimpleListener<",
            "Lcn/nubia/cloud/storage/common/bean/ThumbnailRes;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-static {}, Lcn/nubia/cloud/utils/task/NBExecutor;->getLongPool()Lcn/nubia/cloud/utils/task/NBExecutor;

    move-result-object v0

    new-instance v8, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;

    move-object v1, v8

    move-object v2, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcn/nubia/cloud/storage/common/bean/FileInfo$1;-><init>(Lcn/nubia/cloud/storage/common/bean/FileInfo;IILcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/storage/common/CloudStorage;I)V

    invoke-virtual {v0, v8}, Lcn/nubia/cloud/utils/task/NBExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 123
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/BundleObj;->readFromParcel(Landroid/os/Parcel;)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->path:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->localPath:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->displayName:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcn/nubia/cloud/storage/common/MediaType;->valueOf(I)Lcn/nubia/cloud/storage/common/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mediaType:Lcn/nubia/cloud/storage/common/MediaType;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mTime:J

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->cTime:J

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->blockList:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->size:J

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->isDir:Z

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->hasSubFolder:Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->fsId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 159
    invoke-super {p0}, Lcn/nubia/cloud/storage/common/bean/BundleObj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "path:"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " localPath:"

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->localPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " displayName:"

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mTime:"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " cTime:"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->cTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " blockList:"

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->blockList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size:"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " isDir:"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->isDir:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " fsId:"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->fsId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hasSubFolder:"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->hasSubFolder:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 142
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BundleObj;->writeToParcel(Landroid/os/Parcel;I)V

    .line 143
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->localPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mediaType:Lcn/nubia/cloud/storage/common/MediaType;

    invoke-virtual {p2}, Lcn/nubia/cloud/storage/common/MediaType;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->cTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 149
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->blockList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-wide v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 151
    iget-boolean p2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->isDir:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-boolean p2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->hasSubFolder:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object p2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->fsId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
