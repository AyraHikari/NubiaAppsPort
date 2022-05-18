.class public Lcn/nubia/notepad/adapter/NotePadImageListAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotePadImageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final NOTEPAD_DEFAULT_IMAGE:Ljava/lang/String;

.field private final NOTEPAD_FILTER_COLOR:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "options"    # Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nostra13/universalimageloader/core/DisplayImageOptions;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "selectImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    const-string v0, "#77000000"

    iput-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->NOTEPAD_FILTER_COLOR:Ljava/lang/String;

    .line 25
    const-string v0, "default_image"

    iput-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->NOTEPAD_DEFAULT_IMAGE:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->mImages:Ljava/util/ArrayList;

    .line 37
    iput-object p3, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->mSelectImages:Ljava/util/ArrayList;

    .line 38
    iput-object p4, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 39
    return-void
.end method

.method private setFileIcon(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "imgView"    # Landroid/widget/ImageView;

    .prologue
    const/16 v4, 0x96

    .line 101
    sget-object v0, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "uri":Ljava/lang/String;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->mDisplayImageOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-object v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;II)V

    .line 104
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, "holder":Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 60
    new-instance v0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;

    .end local v0    # "holder":Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;
    invoke-direct {v0, p0, v3}, Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;-><init>(Lcn/nubia/notepad/adapter/NotePadImageListAdapter;Lcn/nubia/notepad/adapter/NotePadImageListAdapter$1;)V

    .line 61
    .restart local v0    # "holder":Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;
    iget-object v1, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030028

    invoke-virtual {v1, v2, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 63
    const v1, 0x7f0f00b0

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;->mImgPic:Landroid/widget/ImageView;

    .line 65
    const v1, 0x7f0f00b1

    .line 66
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    instance-of v1, p3, Lcn/nubia/notepad/view/NotePadGridView;

    if-eqz v1, :cond_2

    check-cast p3, Lcn/nubia/notepad/view/NotePadGridView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    iget-boolean v1, p3, Lcn/nubia/notepad/view/NotePadGridView;->mIsOnMeasure:Z

    if-eqz v1, :cond_2

    .line 92
    :cond_0
    :goto_1
    return-object p2

    .line 69
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;
    check-cast v0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;
    goto :goto_0

    .line 76
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    .line 80
    iget-object v1, v0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;->mImgPic:Landroid/widget/ImageView;

    const v2, -0x333334

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 81
    iget-object v1, v0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;->mImgPic:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object v1, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;->mImgPic:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->setFileIcon(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 84
    iget-object v1, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->mSelectImages:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, v0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 86
    iget-object v1, v0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;->mImgPic:Landroid/widget/ImageView;

    const-string v2, "#77000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 88
    :cond_3
    iget-object v1, v0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 89
    iget-object v1, v0, Lcn/nubia/notepad/adapter/NotePadImageListAdapter$ViewHolder;->mImgPic:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method
