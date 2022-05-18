.class public Lcn/nubia/cloud/storage/common/bean/FileInfoRes;
.super Lcn/nubia/cloud/storage/common/bean/BaseBean;
.source "FileInfoRes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/FileInfoRes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/FileInfoRes$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    .line 25
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/FileInfo;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/FileInfo;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>(ILjava/lang/String;)V

    .line 30
    new-instance p1, Lcn/nubia/cloud/storage/common/bean/FileInfo;

    invoke-direct {p1}, Lcn/nubia/cloud/storage/common/bean/FileInfo;-><init>()V

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/FileInfoRes$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;-><init>(Landroid/os/Parcel;)V

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

    .line 44
    invoke-super {p0, p1}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 45
    sget-object v0, Lcn/nubia/cloud/storage/common/bean/FileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/nubia/cloud/storage/common/bean/FileInfo;

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 58
    invoke-super {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " path:"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    iget-object v2, v2, Lcn/nubia/cloud/storage/common/bean/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mTime:"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    iget-wide v2, v2, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " cTime:"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    iget-wide v2, v2, Lcn/nubia/cloud/storage/common/bean/FileInfo;->cTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " blockList:"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    iget-object v2, v2, Lcn/nubia/cloud/storage/common/bean/FileInfo;->blockList:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size:"

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    iget-wide v2, v2, Lcn/nubia/cloud/storage/common/bean/FileInfo;->size:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " isDir:"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    iget-boolean v2, v2, Lcn/nubia/cloud/storage/common/bean/FileInfo;->isDir:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasSubFolder:"

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    iget-boolean v2, v2, Lcn/nubia/cloud/storage/common/bean/FileInfo;->hasSubFolder:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 50
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 51
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/FileInfoRes;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/FileInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    return-void
.end method
