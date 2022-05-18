.class public Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;
.super Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;
.source "FileUpDownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final OTHER:Ljava/lang/String; = "other"

.field public static final OVER_WRITE:Ljava/lang/String; = "overWrite"

.field public static final RENAME:Ljava/lang/String; = "rename"

.field public static final TYPE_DOWNLOAD:I = 0x1

.field public static final TYPE_UPLOAD:I


# instance fields
.field private hasPFD:Z

.field private targetFD:Landroid/os/ParcelFileDescriptor;

.field private type:I

.field public uploadSameFilePolicy:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 191
    new-instance v0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo$1;

    invoke-direct {v0}, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo$1;-><init>()V

    sput-object v0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 201
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->targetFD:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->hasPFD:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 205
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->targetFD:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->hasPFD:Z

    .line 206
    invoke-virtual {p0, p1}, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    iput-object p4, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->uploadSameFilePolicy:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->targetFD:Landroid/os/ParcelFileDescriptor;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->hasPFD:Z

    .line 69
    iput p3, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->type:I

    if-eqz p4, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->initFd()V

    :cond_0
    return-void
.end method

.method private initFd()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget v0, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->type:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->source:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 109
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->targetFD:Landroid/os/ParcelFileDescriptor;

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_2

    .line 112
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->target:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_1
    const/high16 v2, 0x30000000

    .line 117
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->targetFD:Landroid/os/ParcelFileDescriptor;

    .line 119
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->targetFD:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_3

    .line 120
    iput-boolean v1, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->hasPFD:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public getTargetFD()Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->targetFD:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->type:I

    return v0
.end method

.method public getUploadSameFilePolicy()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->uploadSameFilePolicy:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 125
    invoke-super {p0, p1}, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->type:I

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->uploadSameFilePolicy:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->targetFD:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method

.method public setTargetFD(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->targetFD:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 174
    iput p1, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->type:I

    return-void
.end method

.method public setUploadSameFilePolicy(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->uploadSameFilePolicy:Ljava/lang/String;

    return-void
.end method

.method public setupFileDescriptor()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->targetFD:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->initFd()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->target:Ljava/lang/String;

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " uploadSameFilePolicy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->uploadSameFilePolicy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " targetFD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->targetFD:Landroid/os/ParcelFileDescriptor;

    .line 212
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 137
    invoke-super {p0, p1, p2}, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 138
    iget p2, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object p2, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->uploadSameFilePolicy:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-boolean p2, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->hasPFD:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-boolean p2, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->hasPFD:Z

    if-eqz p2, :cond_0

    .line 144
    iget-object p2, p0, Lcom/xcloud/pluginAlbum/bean/FileUpDownloadInfo;->targetFD:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFileDescriptor(Ljava/io/FileDescriptor;)V

    :cond_0
    return-void
.end method
