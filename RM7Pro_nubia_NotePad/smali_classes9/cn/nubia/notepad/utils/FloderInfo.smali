.class public Lcn/nubia/notepad/utils/FloderInfo;
.super Ljava/lang/Object;
.source "FloderInfo.java"


# instance fields
.field private count:I

.field private dir:Ljava/lang/String;

.field private firstImgPath:Ljava/lang/String;

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
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcn/nubia/notepad/utils/FloderInfo;->count:I

    return v0
.end method

.method public getDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcn/nubia/notepad/utils/FloderInfo;->dir:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/notepad/utils/FloderInfo;->firstImgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/notepad/utils/FloderInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 37
    iput p1, p0, Lcn/nubia/notepad/utils/FloderInfo;->count:I

    .line 38
    return-void
.end method

.method public setDir(Ljava/lang/String;)V
    .locals 3
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcn/nubia/notepad/utils/FloderInfo;->dir:Ljava/lang/String;

    .line 16
    iget-object v1, p0, Lcn/nubia/notepad/utils/FloderInfo;->dir:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 17
    .local v0, "lastIndexOf":I
    iget-object v1, p0, Lcn/nubia/notepad/utils/FloderInfo;->dir:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/notepad/utils/FloderInfo;->name:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setFirstImgPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstImgPath"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcn/nubia/notepad/utils/FloderInfo;->firstImgPath:Ljava/lang/String;

    .line 26
    return-void
.end method
