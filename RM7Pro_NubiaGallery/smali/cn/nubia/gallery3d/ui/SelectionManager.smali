.class public Lcn/nubia/gallery3d/ui/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;,
        Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;
    }
.end annotation


# static fields
.field public static final CLEAR_SELECTIONALL_MODE:I = 0x4

.field public static final ENTER_SELECTION_ALL_MODE_MANUAL_CLICK:I = 0x9

.field public static final ENTER_SELECTION_MODE:I = 0x1

.field public static final LEAVE_SELECTION_ALL_MODE_MANUAL_CLICK:I = 0xa

.field public static final LEAVE_SELECTION_MODE:I = 0x2

.field private static final MSG_SELECTION_LIMIT:I = 0xb

.field public static final SELECTION_BACK_MODE:I = 0x7

.field public static final SELECTION_CANCEL_MODE:I = 0x6

.field public static final SELECTION_DONE_MODE:I = 0x5

.field public static final SELECTION_FULL_MODE:I = 0x8

.field public static final SELECT_ALL_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SelectionManager"


# instance fields
.field private mAutoLeave:Z

.field protected mClickedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field protected mClickedSlotIndexSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDataManager:Lcn/nubia/gallery3d/data/DataManager;

.field private mHandleAll:Z

.field private mInMultiSelectionMode:Z

.field private mInSelectionMode:Z

.field protected mInverseSelection:Z

.field protected mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

.field private mMaxCount:I

.field private mSelectCount:I

.field protected mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

.field protected mTotal:I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryContext;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInMultiSelectionMode:Z

    const v1, 0x7fffffff

    .line 69
    iput v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mMaxCount:I

    .line 71
    iput v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSelectCount:I

    .line 74
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mHandleAll:Z

    .line 83
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryContext;->getDataManager()Lcn/nubia/gallery3d/data/DataManager;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    .line 84
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    .line 85
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->initTotal()V

    .line 86
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    return-void
.end method

.method private addBucketId(Ljava/util/List;Lcn/nubia/gallery3d/data/MediaSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/gallery3d/data/MediaSet;",
            ")V"
        }
    .end annotation

    .line 820
    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    .line 821
    instance-of p2, p2, Lcn/nubia/gallery3d/data/FaceAlbum;

    if-nez p2, :cond_0

    .line 822
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isMergedAlbum(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 823
    invoke-static {v0}, Lcn/nubia/gallery3d/util/MediaSetUtils;->getSubBucketIds(I)Ljava/util/List;

    move-result-object p2

    .line 824
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 825
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 828
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private addBucketName(Ljava/util/List;Lcn/nubia/gallery3d/data/MediaSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/gallery3d/data/MediaSet;",
            ")V"
        }
    .end annotation

    .line 853
    invoke-virtual {p2}, Lcn/nubia/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object p2

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private calacutCount(Lcn/nubia/gallery3d/data/Path;Z)Z
    .locals 0

    .line 876
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    .line 877
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getCountFromMediaItem(Lcn/nubia/gallery3d/data/MediaObject;)I

    move-result p1

    if-eqz p2, :cond_0

    .line 879
    iget p2, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSelectCount:I

    add-int/2addr p2, p1

    iput p2, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSelectCount:I

    goto :goto_0

    .line 881
    :cond_0
    iget p2, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSelectCount:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSelectCount:I

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private clearSelectionAllMode()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->doClearAll()V

    .line 135
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 136
    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_0
    return-void
.end method

.method protected static expandMediaSet(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;",
            "Lcn/nubia/gallery3d/data/MediaSet;",
            "I)Z"
        }
    .end annotation

    .line 296
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 298
    invoke-virtual {p1, v2}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-static {p0, v3, p2}, Lcn/nubia/gallery3d/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcn/nubia/gallery3d/data/MediaSet;I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    const/16 v2, 0x32

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_6

    add-int/lit8 v4, v3, 0x32

    if-ge v4, v0, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    sub-int v5, v0, v3

    .line 307
    :goto_2
    invoke-virtual {p1, v3, v5}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 308
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/MediaItem;

    .line 309
    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    .line 310
    check-cast v5, Lcn/nubia/gallery3d/data/MultiShootItem;

    .line 311
    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/MultiShootItem;->getTotalPaths()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 313
    :cond_4
    invoke-virtual {v5}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p2, :cond_3

    return v1

    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private getCountFromAlbum(Lcn/nubia/gallery3d/data/MediaSet;)I
    .locals 2

    .line 888
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    const/4 v1, 0x0

    .line 889
    invoke-virtual {p1, v1, v0}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object p1

    .line 890
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/MediaItem;

    .line 891
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getCountFromMediaItem(Lcn/nubia/gallery3d/data/MediaObject;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

.method private getCountFromMediaItem(Lcn/nubia/gallery3d/data/MediaObject;)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 899
    instance-of v1, p1, Lcn/nubia/gallery3d/data/IMultiShoot;

    if-eqz v1, :cond_0

    .line 900
    check-cast p1, Lcn/nubia/gallery3d/data/IMultiShoot;

    invoke-interface {p1}, Lcn/nubia/gallery3d/data/IMultiShoot;->getCount()I

    move-result v0

    goto :goto_0

    .line 901
    :cond_0
    instance-of v1, p1, Lcn/nubia/gallery3d/data/LocalAllAlbum;

    if-eqz v1, :cond_1

    .line 902
    check-cast p1, Lcn/nubia/gallery3d/data/MediaSet;

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getCountFromAlbum(Lcn/nubia/gallery3d/data/MediaSet;)I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method private isFullToSelect(Lcn/nubia/gallery3d/data/Path;)Z
    .locals 3

    .line 861
    iget v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSelectCount:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mMaxCount:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 865
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object p1

    .line 866
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getCountFromMediaItem(Lcn/nubia/gallery3d/data/MediaObject;)I

    move-result p1

    .line 867
    iget v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSelectCount:I

    add-int/2addr v0, p1

    iget p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mMaxCount:I

    if-le v0, p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public calculateMenuOption()Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;
    .locals 16

    move-object/from16 v0, p0

    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 427
    iget-boolean v2, v0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    const-wide/32 v5, -0x20001

    const/16 v7, 0x12c

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x0

    const-wide/16 v11, -0x401

    if-eqz v2, :cond_5

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    move v2, v10

    :goto_0
    if-ge v10, v1, :cond_c

    sub-int v13, v1, v10

    const/16 v14, 0x64

    .line 431
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 432
    iget-object v14, v0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v14, v10, v13}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v14

    .line 433
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v15, :cond_1

    goto :goto_1

    .line 437
    :cond_1
    invoke-virtual {v15}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v3

    .line 438
    iget-object v4, v0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 439
    invoke-virtual {v15}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    if-ne v3, v9, :cond_2

    iget-object v3, v0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    instance-of v3, v3, Lcn/nubia/gallery3d/data/RecycledAlbum;

    if-nez v3, :cond_2

    .line 441
    check-cast v15, Lcn/nubia/gallery3d/data/MultiShootItem;

    .line 443
    invoke-virtual {v15}, Lcn/nubia/gallery3d/data/MultiShootItem;->getSupportedOperations()J

    move-result-wide v3

    and-long/2addr v3, v11

    .line 444
    invoke-virtual {v15}, Lcn/nubia/gallery3d/data/MultiShootItem;->getTotalCount()I

    move-result v11

    add-int/2addr v2, v11

    goto :goto_2

    .line 446
    :cond_2
    invoke-virtual {v15}, Lcn/nubia/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v3

    and-long/2addr v3, v11

    add-int/lit8 v2, v2, 0x1

    :goto_2
    if-le v2, v8, :cond_3

    and-long/2addr v3, v5

    :cond_3
    move-wide v11, v3

    if-le v2, v7, :cond_0

    const-wide/16 v3, -0x5

    and-long/2addr v3, v11

    .line 454
    new-instance v1, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    invoke-direct {v1, v0, v3, v4, v2}, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;-><init>(Lcn/nubia/gallery3d/ui/SelectionManager;JI)V

    return-object v1

    :cond_4
    add-int/2addr v10, v13

    goto :goto_0

    .line 461
    :cond_5
    iget-object v2, v0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/Path;

    .line 462
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 463
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/MediaItem;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v4, :cond_8

    goto :goto_3

    .line 468
    :cond_8
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v13

    if-ne v13, v9, :cond_9

    iget-object v13, v0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    instance-of v13, v13, Lcn/nubia/gallery3d/data/RecycledAlbum;

    if-nez v13, :cond_9

    .line 470
    check-cast v4, Lcn/nubia/gallery3d/data/MultiShootItem;

    .line 472
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MultiShootItem;->getSupportedOperations()J

    move-result-wide v13

    and-long/2addr v11, v13

    .line 473
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MultiShootItem;->getTotalCount()I

    move-result v4

    add-int/2addr v10, v4

    goto :goto_4

    .line 475
    :cond_9
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v13

    and-long/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    :goto_4
    if-le v10, v8, :cond_a

    and-long/2addr v11, v5

    :cond_a
    if-le v10, v7, :cond_7

    const-wide/16 v13, -0x5

    and-long v1, v11, v13

    .line 483
    new-instance v3, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    invoke-direct {v3, v0, v1, v2, v10}, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;-><init>(Lcn/nubia/gallery3d/ui/SelectionManager;JI)V

    return-object v3

    :cond_b
    move v2, v10

    :cond_c
    const/4 v1, 0x2

    if-ge v2, v1, :cond_d

    const-wide/32 v3, -0x10001

    and-long/2addr v11, v3

    .line 491
    :cond_d
    new-instance v1, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;

    invoke-direct {v1, v0, v11, v12, v2}, Lcn/nubia/gallery3d/ui/SelectionManager$OperaEntry;-><init>(Lcn/nubia/gallery3d/ui/SelectionManager;JI)V

    return-object v1
.end method

.method public deSelectAll()V
    .locals 0

    .line 116
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->clearSelectionAllMode()V

    return-void
.end method

.method public deSelectAllButtonClick()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 128
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    .line 129
    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_0
    return-void
.end method

.method public doClearAll()V
    .locals 1

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 358
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 359
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public enterSelectionBackMode()V
    .locals 2

    .line 725
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_0

    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    .line 729
    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_1
    return-void
.end method

.method public enterSelectionCancelMode()V
    .locals 2

    .line 716
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_0

    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    .line 720
    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_1
    return-void
.end method

.method public enterSelectionDoneMode()V
    .locals 2

    .line 707
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_0

    return-void

    .line 710
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    .line 711
    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_1
    return-void
.end method

.method public enterSelectionMode()V
    .locals 2

    .line 149
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    .line 153
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v1, :cond_1

    .line 154
    invoke-interface {v1, v0}, Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_1
    const/4 v0, 0x0

    .line 157
    iput v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSelectCount:I

    return-void
.end method

.method public getClickedPaths()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 515
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    const/4 v2, 0x0

    const/16 v3, 0x12c

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    .line 516
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    move v6, v5

    :goto_0
    if-ge v5, v1, :cond_9

    sub-int v7, v1, v5

    const/16 v8, 0x64

    .line 519
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 521
    iget-object v8, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v8, v5, v7}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v8

    .line 522
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/nubia/gallery3d/data/MediaItem;

    .line 523
    invoke-virtual {v9}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v10

    .line 524
    iget-object v11, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v11, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    if-nez v9, :cond_1

    goto :goto_1

    .line 528
    :cond_1
    invoke-virtual {v9}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v11

    if-ne v11, v4, :cond_2

    .line 529
    check-cast v9, Lcn/nubia/gallery3d/data/MultiShootItem;

    .line 530
    invoke-virtual {v9}, Lcn/nubia/gallery3d/data/MultiShootItem;->getTotalCount()I

    move-result v9

    add-int/2addr v6, v9

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    :goto_2
    if-le v6, v3, :cond_3

    return-object v2

    .line 537
    :cond_3
    invoke-virtual {v10}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    add-int/2addr v5, v7

    goto :goto_0

    .line 544
    :cond_5
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/gallery3d/data/Path;

    .line 545
    invoke-virtual {v6}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v7

    check-cast v7, Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v7, :cond_6

    goto :goto_3

    .line 549
    :cond_6
    invoke-virtual {v7}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v8

    if-ne v8, v4, :cond_7

    .line 550
    check-cast v7, Lcn/nubia/gallery3d/data/MultiShootItem;

    .line 551
    invoke-virtual {v7}, Lcn/nubia/gallery3d/data/MultiShootItem;->getTotalCount()I

    move-result v7

    add-int/2addr v5, v7

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v5, 0x1

    :goto_4
    if-le v5, v3, :cond_8

    return-object v2

    .line 558
    :cond_8
    invoke-virtual {v6}, Lcn/nubia/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    return-object v0
.end method

.method public getExpandedRecycledData()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 679
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_2

    .line 680
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    .line 682
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 683
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getBucketId()I

    move-result v4

    invoke-static {v4}, Lcn/nubia/gallery3d/util/MediaSetUtils;->isBucketCannotBeSelected(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 686
    :cond_0
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 687
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getExpandRecycledData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 691
    :cond_2
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/Path;

    .line 692
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/MediaSet;

    if-eqz v2, :cond_3

    .line 694
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/MediaSet;->getExpandRecycledData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public getFirstSelected()Lcn/nubia/gallery3d/data/Path;
    .locals 7

    .line 751
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 752
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, v2, v3}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/MediaItem;

    goto/16 :goto_2

    .line 756
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 757
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 758
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 760
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 761
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    .line 764
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0, v2, v3}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/MediaItem;

    goto/16 :goto_2

    :cond_2
    move-object v5, v1

    move v4, v3

    .line 766
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 767
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_3

    .line 769
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v5, v4, v3}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/gallery3d/data/MediaItem;

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    .line 772
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget v6, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mTotal:I

    if-ge v4, v6, :cond_5

    .line 774
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    .line 775
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    .line 774
    invoke-virtual {v4, v0, v3}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 775
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/MediaItem;

    goto :goto_2

    :cond_5
    move-object v0, v5

    goto :goto_2

    .line 780
    :cond_6
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-object v1

    .line 782
    :cond_7
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 783
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v4, v0, v3}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/gallery3d/data/MediaItem;

    :goto_2
    if-eqz v0, :cond_8

    .line 786
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v0

    return-object v0

    :cond_8
    return-object v1
.end method

.method public getFirstSelectedIndex()I
    .locals 9

    .line 566
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v0

    .line 571
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_7

    if-eqz v2, :cond_1

    goto :goto_4

    :cond_1
    sub-int v4, v0, v1

    const/16 v5, 0x14

    .line 579
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 580
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v5, v1, v4}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    .line 582
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/gallery3d/data/MediaItem;

    .line 583
    invoke-virtual {v7}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v7

    .line 584
    iget-object v8, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v2, 0x1

    move v3, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/2addr v1, v4

    goto :goto_0

    .line 594
    :cond_4
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 595
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v0, :cond_5

    .line 596
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    :cond_6
    move v3, v0

    :cond_7
    :goto_4
    return v3
.end method

.method public getHandleAll()Z
    .locals 1

    .line 796
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mHandleAll:Z

    return v0
.end method

.method public getInverseSelection()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    return v0
.end method

.method public getMaxSelectionCount()I
    .locals 1

    .line 746
    iget v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mMaxCount:I

    return v0
.end method

.method public getSelected(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 216
    invoke-virtual {p0, p1, v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelected(ZIZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getSelected(ZIZ)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZ)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_4

    .line 227
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_7

    sub-int v5, v1, v4

    const/16 v6, 0x64

    .line 230
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 231
    iget-object v6, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v6, v4, v5}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    .line 232
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/gallery3d/data/MediaItem;

    .line 233
    invoke-virtual {v7}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v8

    .line 234
    iget-object v9, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 235
    invoke-virtual {v7}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v9

    if-ne v9, v3, :cond_1

    if-eqz p1, :cond_1

    .line 237
    check-cast v7, Lcn/nubia/gallery3d/data/MultiShootItem;

    .line 238
    invoke-virtual {v7}, Lcn/nubia/gallery3d/data/MultiShootItem;->getTotalPaths()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 240
    :cond_1
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, p2, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x32

    if-le v7, v8, :cond_0

    :cond_2
    return-object v2

    :cond_3
    add-int/2addr v4, v5

    goto :goto_0

    .line 250
    :cond_4
    iget-object p3, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/Path;

    .line 251
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    .line 253
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v5

    if-ne v5, v3, :cond_6

    .line 254
    check-cast v4, Lcn/nubia/gallery3d/data/MultiShootItem;

    .line 255
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MultiShootItem;->getTotalPaths()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 257
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_5

    return-object v2

    :cond_7
    return-object v0
.end method

.method public getSelected(ZZ)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 220
    invoke-virtual {p0, p1, v0, p2}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelected(ZIZ)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedBucketIds()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 800
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 801
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_1

    .line 802
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 804
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    .line 805
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    .line 806
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 807
    invoke-direct {p0, v0, v3}, Lcn/nubia/gallery3d/ui/SelectionManager;->addBucketId(Ljava/util/List;Lcn/nubia/gallery3d/data/MediaSet;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 811
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/Path;

    .line 812
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->addBucketId(Ljava/util/List;Lcn/nubia/gallery3d/data/MediaSet;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getSelectedBucketNames()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 834
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_1

    .line 835
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 837
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v3

    .line 838
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/MediaSet;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v4

    .line 839
    iget-object v5, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 840
    invoke-direct {p0, v0, v3}, Lcn/nubia/gallery3d/ui/SelectionManager;->addBucketName(Ljava/util/List;Lcn/nubia/gallery3d/data/MediaSet;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 844
    :cond_1
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/Path;

    .line 845
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    invoke-virtual {v3, v2}, Lcn/nubia/gallery3d/data/DataManager;->getMediaSet(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->addBucketName(Ljava/util/List;Lcn/nubia/gallery3d/data/MediaSet;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public getSelectedCount()I
    .locals 2

    .line 190
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 191
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    sub-int v0, v1, v0

    :cond_0
    return v0
.end method

.method public getSelectedFilePaths(IZ)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 604
    iget-boolean p2, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz p2, :cond_2

    .line 605
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {p2, p1}, Lcn/nubia/gallery3d/data/MediaSet;->getSetData(I)Ljava/util/ArrayList;

    move-result-object p2

    .line 606
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/Path;

    .line 607
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    .line 609
    instance-of v2, v1, Lcn/nubia/gallery3d/data/IMultiShoot;

    if-eqz v2, :cond_1

    .line 610
    check-cast v1, Lcn/nubia/gallery3d/data/IMultiShoot;

    invoke-interface {v1}, Lcn/nubia/gallery3d/data/IMultiShoot;->getFilePathList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 612
    :cond_1
    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/data/MediaItem;->getItemData(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 618
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/Path;

    .line 619
    invoke-virtual {v1}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/MediaItem;

    if-eqz v1, :cond_3

    .line 621
    instance-of v2, v1, Lcn/nubia/gallery3d/data/IMultiShoot;

    if-eqz v2, :cond_4

    .line 622
    check-cast v1, Lcn/nubia/gallery3d/data/IMultiShoot;

    invoke-interface {v1}, Lcn/nubia/gallery3d/data/IMultiShoot;->getFilePathList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 624
    :cond_4
    invoke-virtual {v1, p1}, Lcn/nubia/gallery3d/data/MediaItem;->getItemData(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p2
.end method

.method public getSelectedImagePaths()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 412
    invoke-virtual {p0, v1, v1}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelected(ZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 414
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/Path;

    if-eqz v2, :cond_1

    .line 415
    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v3

    instance-of v3, v3, Lcn/nubia/gallery3d/data/LocalImage;

    if-eqz v3, :cond_1

    .line 416
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getSelectedRecycledData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 633
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedRecycledData(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedRecycledData(Z)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/RecycledData;",
            ">;"
        }
    .end annotation

    .line 638
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    const/16 v1, 0x8

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mHandleAll:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 659
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 660
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/Path;

    .line 661
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v4, :cond_2

    .line 663
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    invoke-virtual {v4, v3}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcn/nubia/gallery3d/data/MediaItem;

    :cond_2
    if-eqz v4, :cond_1

    if-eqz p1, :cond_3

    .line 666
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 667
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaItem;->getExpandRecycledData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 669
    :cond_3
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaItem;->getRecycledData()Lcn/nubia/gallery3d/data/RecycledData;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 639
    :cond_4
    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getExpandRecycledData()Ljava/util/ArrayList;

    move-result-object v0

    .line 640
    iget-boolean v2, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mHandleAll:Z

    if-nez v2, :cond_8

    .line 641
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/gallery3d/data/Path;

    .line 642
    invoke-virtual {v3}, Lcn/nubia/gallery3d/data/Path;->getObject()Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcn/nubia/gallery3d/data/MediaItem;

    if-nez v4, :cond_6

    .line 644
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    invoke-virtual {v4, v3}, Lcn/nubia/gallery3d/data/DataManager;->getMediaObject(Lcn/nubia/gallery3d/data/Path;)Lcn/nubia/gallery3d/data/MediaObject;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcn/nubia/gallery3d/data/MediaItem;

    :cond_6
    if-eqz v4, :cond_5

    if-eqz p1, :cond_7

    .line 648
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    if-ne v3, v1, :cond_7

    .line 649
    invoke-virtual {v4}, Lcn/nubia/gallery3d/data/MediaItem;->getExpandRecycledData()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 651
    :cond_7
    new-instance v3, Lcn/nubia/gallery3d/data/RecycledData;

    invoke-direct {v3}, Lcn/nubia/gallery3d/data/RecycledData;-><init>()V

    const/4 v5, 0x1

    .line 652
    invoke-virtual {v4, v5}, Lcn/nubia/gallery3d/data/MediaItem;->getItemData(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/nubia/gallery3d/data/RecycledData;->filePath:Ljava/lang/String;

    .line 653
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-object v0
.end method

.method public getSelectedSlotIndex()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v1, :cond_2

    .line 332
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    sub-int v3, v1, v2

    const/16 v4, 0x64

    .line 336
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 337
    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v4, v2, v3}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    .line 339
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/gallery3d/data/MediaItem;

    .line 340
    invoke-virtual {v6}, Lcn/nubia/gallery3d/data/MediaItem;->getPath()Lcn/nubia/gallery3d/data/Path;

    move-result-object v6

    .line 341
    iget-object v7, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 342
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v2, v3

    goto :goto_0

    .line 349
    :cond_2
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 350
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object v0
.end method

.method public getTotalCount()I
    .locals 2

    .line 180
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 183
    :cond_0
    iget v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mTotal:I

    if-gez v1, :cond_1

    .line 184
    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mTotal:I

    .line 186
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mTotal:I

    return v0
.end method

.method public getUriByPath(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;
    .locals 1

    .line 407
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mDataManager:Lcn/nubia/gallery3d/data/DataManager;

    invoke-virtual {v0, p1}, Lcn/nubia/gallery3d/data/DataManager;->getContentUri(Lcn/nubia/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public inSelectAllMode()Z
    .locals 2

    .line 141
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public inSelectionMode()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    return v0
.end method

.method public initTotal()V
    .locals 1

    const/4 v0, -0x1

    .line 90
    iput v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mTotal:I

    return-void
.end method

.method public isClusterSelected(Ljava/util/HashSet;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 204
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    if-nez v1, :cond_0

    .line 205
    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    goto :goto_0

    .line 206
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "SelectionManager"

    const-string v0, "isClusterSelected = false, because of mClickedSlotIndexSet == null"

    .line 210
    invoke-static {p1, v0}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInAlbumSet()Z
    .locals 1

    .line 702
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInMultiSelectionMode()Z
    .locals 1

    .line 738
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInMultiSelectionMode:Z

    return v0
.end method

.method public isItemSelected(Lcn/nubia/gallery3d/data/Path;)Z
    .locals 2

    .line 176
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method

.method public leaveSelectionMode()V
    .locals 2

    .line 161
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    if-nez v0, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->initTotal()V

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInSelectionMode:Z

    .line 166
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 167
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 168
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 169
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mHandleAll:Z

    .line 170
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 171
    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_1
    return-void
.end method

.method public select(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 372
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 373
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/gallery3d/data/Path;

    .line 374
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 375
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-direct {p0, v1, v2}, Lcn/nubia/gallery3d/ui/SelectionManager;->calacutCount(Lcn/nubia/gallery3d/data/Path;Z)Z

    .line 377
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    add-int v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 382
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->selectAll()V

    .line 384
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 385
    invoke-interface {p1, p2, v2}, Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionChange(Lcn/nubia/gallery3d/data/Path;Z)V

    :cond_3
    return-void
.end method

.method public selectAll()V
    .locals 2

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInverseSelection:Z

    .line 106
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 107
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 108
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->initTotal()V

    .line 109
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 110
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 111
    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_0
    return-void
.end method

.method public selectAllButtonClick()V
    .locals 2

    .line 120
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->selectAll()V

    .line 121
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    .line 122
    invoke-interface {v0, v1}, Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_0
    return-void
.end method

.method public setAutoLeaveSelectionMode(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    return-void
.end method

.method public setHandleAll(Z)V
    .locals 0

    .line 792
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mHandleAll:Z

    return-void
.end method

.method public setInMultiSelectionMode(Z)V
    .locals 0

    .line 734
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInMultiSelectionMode:Z

    return-void
.end method

.method public setMaxSelectionCount(I)V
    .locals 0

    .line 742
    iput p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mMaxCount:I

    return-void
.end method

.method public setSelectionListener(Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    return-void
.end method

.method public setSourceMediaSet(Lcn/nubia/gallery3d/data/MediaSet;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mSourceMediaSet:Lcn/nubia/gallery3d/data/MediaSet;

    .line 326
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->initTotal()V

    return-void
.end method

.method public toggle(Lcn/nubia/gallery3d/data/Path;)V
    .locals 3

    .line 268
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 270
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->calacutCount(Lcn/nubia/gallery3d/data/Path;Z)Z

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    .line 273
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInMultiSelectionMode:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mMaxCount:I

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->isFullToSelect(Lcn/nubia/gallery3d/data/Path;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 275
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V

    :cond_1
    return-void

    .line 279
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 280
    invoke-direct {p0, p1, v0}, Lcn/nubia/gallery3d/ui/SelectionManager;->calacutCount(Lcn/nubia/gallery3d/data/Path;Z)Z

    .line 283
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 284
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mInMultiSelectionMode:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 285
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->selectAll()V

    .line 287
    :cond_3
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz v1, :cond_4

    .line 288
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->isItemSelected(Lcn/nubia/gallery3d/data/Path;)Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionChange(Lcn/nubia/gallery3d/data/Path;Z)V

    :cond_4
    if-nez v0, :cond_5

    .line 290
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mAutoLeave:Z

    if-eqz p1, :cond_5

    .line 291
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    :cond_5
    return-void
.end method

.method public toggle(Lcn/nubia/gallery3d/data/Path;I)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/SelectionManager;->toggle(Lcn/nubia/gallery3d/data/Path;)V

    return-void
.end method

.method public unSelect(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/gallery3d/data/Path;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 390
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 391
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/gallery3d/data/Path;

    .line 392
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSet:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 394
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mClickedSlotIndexSet:Ljava/util/Set;

    add-int v3, p2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result p1

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->getTotalCount()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 399
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionManager;->selectAll()V

    .line 401
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SelectionManager;->mListener:Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    .line 402
    invoke-interface {p1, p2, v0}, Lcn/nubia/gallery3d/ui/SelectionManager$SelectionListener;->onSelectionChange(Lcn/nubia/gallery3d/data/Path;Z)V

    :cond_3
    return-void
.end method
