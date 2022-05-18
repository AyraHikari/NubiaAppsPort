.class public Lcom/nubia/nucms/bean/NuCmsChannelData;
.super Ljava/lang/Object;
.source "NuCmsChannelData.java"


# instance fields
.field private channels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsChannelItem;",
            ">;"
        }
    .end annotation
.end field

.field private group_id:Ljava/lang/String;

.field private new_user:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nubia/nucms/bean/NuCmsChannelItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsChannelData;->channels:Ljava/util/List;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsChannelData;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUserFlag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsChannelData;->new_user:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/nubia/nucms/bean/NuCmsChannelData;->version:Ljava/lang/String;

    return-object v0
.end method
