.class public Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;
.super Ljava/lang/Object;
.source "NotePadAttachmentIterator.java"

# interfaces
.implements Lcn/nubia/cloud/sync/common/SyncDataIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/sync/common/SyncDataIterator",
        "<",
        "Lcn/nubia/cloud/sync/common/AttachmentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAttachInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/sync/common/AttachmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/sync/common/AttachmentInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/AttachmentInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mAttachInfoList:Ljava/util/List;

    .line 18
    iget-object v0, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mAttachInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mCount:I

    .line 19
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mCount:I

    iput v0, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mIndex:I

    .line 25
    return-void
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 30
    iget v0, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNext(I)Ljava/util/List;
    .locals 4
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/cloud/sync/common/AttachmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget v2, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mIndex:I

    add-int/2addr v2, p1

    iget v3, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mCount:I

    if-le v2, v3, :cond_0

    iget v2, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mCount:I

    iget v3, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mIndex:I

    sub-int p1, v2, v3

    .line 37
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v0, "attachInfo":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/cloud/sync/common/AttachmentInfo;>;"
    iget v2, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mIndex:I

    add-int v1, p1, v2

    .line 39
    .local v1, "toIndex":I
    :goto_0
    iget v2, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mIndex:I

    if-ge v2, v1, :cond_1

    .line 40
    iget-object v2, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mAttachInfoList:Ljava/util/List;

    iget v3, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    iget v2, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mIndex:I

    goto :goto_0

    .line 42
    :cond_1
    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mIndex:I

    iget v1, p0, Lcn/nubia/notepad/cloud/NotePadAttachmentIterator;->mCount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
