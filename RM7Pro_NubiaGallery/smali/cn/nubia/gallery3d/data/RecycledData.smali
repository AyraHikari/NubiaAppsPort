.class public Lcn/nubia/gallery3d/data/RecycledData;
.super Ljava/lang/Object;
.source "RecycledData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecycledData"


# instance fields
.field public datetaken:J

.field public destPath:Ljava/lang/String;

.field public duration:I

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public id:Ljava/lang/String;

.field public isImage:Z

.field public mimeType:Ljava/lang/String;

.field public ms_bucketId:I

.field public rotation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcn/nubia/gallery3d/data/RecycledData;->rotation:I

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lcn/nubia/gallery3d/data/RecycledData;->isImage:Z

    .line 20
    iput v0, p0, Lcn/nubia/gallery3d/data/RecycledData;->ms_bucketId:I

    return-void
.end method

.method public static initRecoverData(Landroid/database/Cursor;Lcn/nubia/gallery3d/data/RecycledData;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 71
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    const/4 v2, 0x7

    .line 72
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcn/nubia/gallery3d/data/RecycledData;->destPath:Ljava/lang/String;

    .line 73
    iget-object v3, p1, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    if-eqz v3, :cond_4

    if-nez v2, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    const/4 v2, 0x3

    .line 78
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p1, Lcn/nubia/gallery3d/data/RecycledData;->isImage:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    .line 80
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcn/nubia/gallery3d/data/RecycledData;->rotation:I

    :cond_3
    const/4 v0, 0x6

    .line 82
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcn/nubia/gallery3d/data/RecycledData;->datetaken:J

    const/4 v0, 0x4

    .line 83
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/nubia/gallery3d/data/RecycledData;->mimeType:Ljava/lang/String;

    const/16 v0, 0x9

    .line 84
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    iput p0, p1, Lcn/nubia/gallery3d/data/RecycledData;->duration:I

    return v1

    :cond_4
    :goto_0
    const-string p0, "RecycledData"

    const-string p1, "Filepath is null."

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static initRecycledData(Landroid/database/Cursor;Lcn/nubia/gallery3d/data/RecycledData;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 49
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "RecycledData"

    const-string p1, "Filepath is null."

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 54
    :cond_1
    iput-object v1, p1, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    const/4 v1, 0x2

    .line 55
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p1, Lcn/nubia/gallery3d/data/RecycledData;->isImage:Z

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p1, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getImageRotation(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcn/nubia/gallery3d/data/RecycledData;->rotation:I

    :cond_3
    const/4 v0, 0x6

    .line 59
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/nubia/gallery3d/data/RecycledData;->mimeType:Ljava/lang/String;

    const/4 v0, 0x3

    .line 60
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    const/4 v0, 0x4

    .line 61
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcn/nubia/gallery3d/data/RecycledData;->datetaken:J

    const/4 v0, 0x5

    .line 62
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcn/nubia/gallery3d/data/RecycledData;->fileSize:J

    const/16 v0, 0x8

    .line 63
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    iput p0, p1, Lcn/nubia/gallery3d/data/RecycledData;->duration:I

    return v2
.end method


# virtual methods
.method public dumpData()V
    .locals 4

    const-string v0, "RecycledData"

    const-string v1, "------------------"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/gallery3d/data/RecycledData;->rotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/gallery3d/data/RecycledData;->isImage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/data/RecycledData;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "datetaken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/gallery3d/data/RecycledData;->datetaken:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileSize= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/gallery3d/data/RecycledData;->fileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/data/RecycledData;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/gallery3d/data/RecycledData;->destPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ms_bucketId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/gallery3d/data/RecycledData;->ms_bucketId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcn/nubia/gallery3d/data/RecycledData;->duration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 24
    instance-of v0, p1, Lcn/nubia/gallery3d/data/RecycledData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    check-cast p1, Lcn/nubia/gallery3d/data/RecycledData;

    iget-object p1, p1, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    iget-object v0, p0, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    return-void
.end method
