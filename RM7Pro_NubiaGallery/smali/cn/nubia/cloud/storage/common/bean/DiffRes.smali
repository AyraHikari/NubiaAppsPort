.class public Lcn/nubia/cloud/storage/common/bean/DiffRes;
.super Lcn/nubia/cloud/storage/common/bean/BaseBean;
.source "DiffRes.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/nubia/cloud/storage/common/bean/DiffRes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cursor:Ljava/lang/String;

.field public entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/cloud/storage/common/bean/DifferEntry;",
            ">;"
        }
    .end annotation
.end field

.field public hasMore:Z

.field public isReseted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcn/nubia/cloud/storage/common/bean/DiffRes$1;

    invoke-direct {v0}, Lcn/nubia/cloud/storage/common/bean/DiffRes$1;-><init>()V

    sput-object v0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->hasMore:Z

    .line 21
    iput-boolean v1, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->isReseted:Z

    .line 24
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->cursor:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    const/4 p2, 0x0

    .line 18
    iput-boolean p2, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->hasMore:Z

    .line 21
    iput-boolean p2, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->isReseted:Z

    .line 24
    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->cursor:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->hasMore:Z

    .line 21
    iput-boolean v1, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->isReseted:Z

    .line 24
    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->cursor:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1}, Lcn/nubia/cloud/storage/common/bean/DiffRes;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/nubia/cloud/storage/common/bean/DiffRes$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcn/nubia/cloud/storage/common/bean/DiffRes;-><init>(Landroid/os/Parcel;)V

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
    iput-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->hasMore:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->isReseted:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->cursor:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    :goto_2
    if-ge v1, v0, :cond_3

    .line 66
    new-instance v2, Lcn/nubia/cloud/storage/common/bean/DifferEntry;

    invoke-direct {v2, p1}, Lcn/nubia/cloud/storage/common/bean/DifferEntry;-><init>(Landroid/os/Parcel;)V

    .line 67
    iget-object v3, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 70
    :cond_2
    iget-object p1, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    if-nez p1, :cond_3

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 94
    invoke-super {p0}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " hasMore:"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->hasMore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isReseted:"

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->isReseted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cursor:"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->cursor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    if-eqz v1, :cond_0

    const-string v1, " list size:"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 100
    :goto_0
    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 101
    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/storage/common/bean/DifferEntry;

    iget-object v2, v2, Lcn/nubia/cloud/storage/common/bean/DifferEntry;->commonFileInfo:Lcn/nubia/cloud/storage/common/bean/FileInfo;

    const-string v3, " index:"

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isDeleted:"

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/cloud/storage/common/bean/DifferEntry;

    iget-boolean v4, v4, Lcn/nubia/cloud/storage/common/bean/DifferEntry;->isDeleted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " path:"

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcn/nubia/cloud/storage/common/bean/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mTime:"

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcn/nubia/cloud/storage/common/bean/FileInfo;->mTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " cTime:"

    .line 106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcn/nubia/cloud/storage/common/bean/FileInfo;->cTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " blockList:"

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcn/nubia/cloud/storage/common/bean/FileInfo;->blockList:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " size:"

    .line 108
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcn/nubia/cloud/storage/common/bean/FileInfo;->size:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " isDir:"

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v2, Lcn/nubia/cloud/storage/common/bean/FileInfo;->isDir:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " hasSubFolder:"

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, v2, Lcn/nubia/cloud/storage/common/bean/FileInfo;->hasSubFolder:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 78
    invoke-super {p0, p1, p2}, Lcn/nubia/cloud/storage/common/bean/BaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 79
    iget-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->hasMore:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-boolean v0, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->isReseted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->cursor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 86
    iget-object v2, p0, Lcn/nubia/cloud/storage/common/bean/DiffRes;->entries:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/cloud/storage/common/bean/DifferEntry;

    invoke-virtual {v2, p1, p2}, Lcn/nubia/cloud/storage/common/bean/DifferEntry;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
