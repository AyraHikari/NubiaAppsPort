.class public Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;
.super Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;
.source "FileFromToResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse$1;

    invoke-direct {v0}, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse$1;-><init>()V

    sput-object v0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->list:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;-><init>(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->list:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->list:Ljava/util/List;

    .line 36
    invoke-virtual {p0, p1}, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xcloud/pluginAlbum/bean/FileFromToResponse$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;-><init>(Landroid/os/Parcel;)V

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

    .line 46
    invoke-super {p0, p1}, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->list:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 51
    sget-object v2, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;

    .line 52
    iget-object v3, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->list:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 71
    invoke-super {p0}, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    iget-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->list:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " list size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 74
    :goto_0
    iget-object v2, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " source:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;

    iget-object v3, v3, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->source:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->list:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;

    iget-object v3, v3, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->target:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 59
    invoke-super {p0, p1, p2}, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    iget-object v2, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToResponse;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;

    invoke-virtual {v2, p1, p2}, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
