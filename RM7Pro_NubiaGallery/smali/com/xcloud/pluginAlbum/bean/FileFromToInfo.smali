.class public Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;
.super Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;
.source "FileFromToInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected source:Ljava/lang/String;

.field protected target:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo$1;

    invoke-direct {v0}, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo$1;-><init>()V

    sput-object v0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->source:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->target:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->source:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->target:Ljava/lang/String;

    .line 55
    invoke-virtual {p0, p1}, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xcloud/pluginAlbum/bean/FileFromToInfo$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->source:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->target:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->source:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->target:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->target:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->readFromParcel(Landroid/os/Parcel;)V

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->source:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->target:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->source:Ljava/lang/String;

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->target:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, " source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " target:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Lcom/xcloud/pluginAlbum/bean/AsyncTaskBaseBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    iget-object p2, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/xcloud/pluginAlbum/bean/FileFromToInfo;->target:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
