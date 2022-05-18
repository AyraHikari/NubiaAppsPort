.class public Lcom/xcloud/pluginAlbum/bean/BundleObject;
.super Ljava/lang/Object;
.source "BundleObject.java"


# instance fields
.field private mKeyValueBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/BundleObject;->mKeyValueBundle:Landroid/os/Bundle;

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xcloud/pluginAlbum/bean/BundleObject;->mKeyValueBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/BundleObject;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/BundleObject;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/BundleObject;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/BundleObject;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xcloud/pluginAlbum/bean/BundleObject;->mKeyValueBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
