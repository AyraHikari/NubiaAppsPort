.class public Lcn/nubia/notepad/utils/FolderInfo;
.super Ljava/lang/Object;
.source "FolderInfo.java"


# instance fields
.field private count:I

.field private dir:Ljava/lang/String;

.field private firstImgPath:Ljava/lang/String;

.field private mBucketId:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/notepad/utils/FolderInfo;->mBucketId:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcn/nubia/notepad/utils/FolderInfo;->count:I

    return v0
.end method

.method public getDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcn/nubia/notepad/utils/FolderInfo;->dir:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/notepad/utils/FolderInfo;->firstImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/notepad/utils/FolderInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketId(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcn/nubia/notepad/utils/FolderInfo;->mBucketId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 38
    iput p1, p0, Lcn/nubia/notepad/utils/FolderInfo;->count:I

    .line 39
    return-void
.end method

.method public setDir(Ljava/lang/String;)V
    .locals 3
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcn/nubia/notepad/utils/FolderInfo;->dir:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcn/nubia/notepad/utils/FolderInfo;->dir:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 18
    .local v0, "lastIndexOf":I
    iget-object v1, p0, Lcn/nubia/notepad/utils/FolderInfo;->dir:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/utils/FolderInfo;->name:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setFirstImgPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstImgPath"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcn/nubia/notepad/utils/FolderInfo;->firstImgPath:Ljava/lang/String;

    .line 27
    return-void
.end method
