.class public Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;
.super Ljava/lang/Object;
.source "AttachmentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/cloud/sync/common/AttachmentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemInfo"
.end annotation


# instance fields
.field public mCachePath:Ljava/lang/String;

.field public mKey:Ljava/lang/String;

.field public mLocalPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/lang/String;
    .param p3, "cachePath"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;->mKey:Ljava/lang/String;

    .line 97
    iput-object p2, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;->mLocalPath:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;->mCachePath:Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public getmCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;->mCachePath:Ljava/lang/String;

    return-object v0
.end method

.method public getmKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getmLocalPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcn/nubia/cloud/sync/common/AttachmentInfo$ItemInfo;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method
