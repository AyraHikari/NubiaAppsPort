.class public Lcn/nubia/music/adapter/CustomViewHolderHelper;
.super Landroid/support/v7/widget/RecyclerView$u;
.source "CustomViewHolderHelper.java"


# instance fields
.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$u;-><init>(Landroid/view/View;)V

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/adapter/CustomViewHolderHelper;->mViews:Landroid/util/SparseArray;

    .line 23
    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomViewHolderHelper;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 27
    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcn/nubia/music/adapter/CustomViewHolderHelper;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 30
    :cond_0
    iget-object v1, p0, Lcn/nubia/music/adapter/CustomViewHolderHelper;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    return-object v0
.end method


# virtual methods
.method public setBackground(ILandroid/graphics/drawable/Drawable;)Lcn/nubia/music/adapter/CustomViewHolderHelper;
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 62
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    return-object p0
.end method

.method public setImageBitmap(ILjava/lang/String;Landroid/content/Context;J)Lcn/nubia/music/adapter/CustomViewHolderHelper;
    .locals 6

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 37
    sget-object v0, Lcn/nubia/music/utils/imageloader/ImageLoader;->INSTANCE:Lcn/nubia/music/utils/imageloader/ImageLoader;

    invoke-static {p4, p5}, Lcn/nubia/music/utils/imageloader/DisplayOptionsCreator;->getPlaylistItemCoverOptions(J)Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/ImageLoader;->displayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V

    .line 38
    return-object p0
.end method

.method public setIsChecked(IZ)Lcn/nubia/music/adapter/CustomViewHolderHelper;
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 69
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    return-object p0
.end method

.method public setIsVisible(II)Lcn/nubia/music/adapter/CustomViewHolderHelper;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 76
    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 77
    return-object p0
.end method

.method public setText(ILjava/lang/String;)Lcn/nubia/music/adapter/CustomViewHolderHelper;
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    :goto_0
    return-object p0

    .line 47
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTextColor(II)Lcn/nubia/music/adapter/CustomViewHolderHelper;
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcn/nubia/music/adapter/CustomViewHolderHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    return-object p0
.end method
