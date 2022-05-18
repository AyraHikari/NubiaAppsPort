.class public Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotePadImageFolderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final VIRTUAL_CAMERA_NAME:Ljava/lang/String;

.field private final VIRTUAL_DOWNLOAD_NAME:Ljava/lang/String;

.field private final VIRTUAL_FRONT_CAMERA_NAME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mFloderInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/notepad/utils/FolderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/notepad/utils/FolderInfo;",
            ">;",
            "Lcom/nostra13/universalimageloader/core/DisplayImageOptions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "floderInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/notepad/utils/FolderInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    const-string v0, "Camera"

    iput-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->VIRTUAL_CAMERA_NAME:Ljava/lang/String;

    .line 28
    const-string v0, "FrontCamera"

    iput-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->VIRTUAL_FRONT_CAMERA_NAME:Ljava/lang/String;

    .line 29
    const-string v0, "Download"

    iput-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->VIRTUAL_DOWNLOAD_NAME:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->mFloderInfos:Ljava/util/List;

    .line 39
    iput-object p3, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 40
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->mFloderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->mFloderInfos:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 54
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ViewHolder"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/16 v4, 0x96

    const/16 v9, 0x8

    const/4 v5, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    .local v7, "holder":Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 62
    new-instance v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;

    .end local v7    # "holder":Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;
    invoke-direct {v7, p0, v10}, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;-><init>(Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$1;)V

    .line 63
    .restart local v7    # "holder":Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030026

    invoke-virtual {v0, v2, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 65
    const v0, 0x7f0f00a7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    .line 66
    iget-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 68
    const v0, 0x7f0f00a8

    .line 69
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mImageCount:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0f00a9

    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mFolderName:Landroid/widget/TextView;

    .line 72
    const v0, 0x7f0f00aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mCamera:Landroid/widget/TextView;

    .line 73
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :goto_0
    instance-of v0, p3, Lcn/nubia/notepad/view/NotePadGridView;

    if-eqz v0, :cond_1

    check-cast p3, Lcn/nubia/notepad/view/NotePadGridView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    iget-boolean v0, p3, Lcn/nubia/notepad/view/NotePadGridView;->mIsOnMeasure:Z

    if-eqz v0, :cond_1

    .line 110
    :goto_1
    return-object p2

    .line 75
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "holder":Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;
    check-cast v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;

    .restart local v7    # "holder":Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;
    goto :goto_0

    .line 81
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    const-string v1, ""

    .line 82
    .local v1, "uri":Ljava/lang/String;
    iget-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->mFloderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 84
    :cond_2
    iget-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mCamera:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mFolderName:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mImageCount:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    const-string v1, "drawable://2130837973"

    .line 108
    :cond_3
    :goto_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v2, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;II)V

    goto :goto_1

    .line 88
    :cond_4
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->mFloderInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, p1, -0x1

    if-le v0, v2, :cond_3

    .line 89
    iget-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mCamera:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mFolderName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    iget-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mImageCount:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->mFloderInfos:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/notepad/utils/FolderInfo;

    .line 93
    .local v8, "info":Lcn/nubia/notepad/utils/FolderInfo;
    if-eqz v8, :cond_3

    .line 94
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v8}, Lcn/nubia/notepad/utils/FolderInfo;->getFirstImgPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mImageCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcn/nubia/notepad/utils/FolderInfo;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mFolderName:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcn/nubia/notepad/utils/FolderInfo;->getBucketId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v8}, Lcn/nubia/notepad/utils/FolderInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, "folderName":Ljava/lang/String;
    const-string v0, "Camera"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 99
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a005c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 105
    :cond_5
    :goto_3
    iget-object v0, v7, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter$ViewHolder;->mFolderName:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 100
    :cond_6
    const-string v0, "FrontCamera"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 101
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a005e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 102
    :cond_7
    const-string v0, "Download"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 103
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageFolderListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a005d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method
