.class Lcn/nubia/music/fragment/QuickSearchFragment$c;
.super Landroid/widget/BaseAdapter;
.source "QuickSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/QuickSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/QuickSearchFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/music/fragment/QuickSearchFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcn/nubia/music/fragment/QuickSearchFragment$c;->a:Lcn/nubia/music/fragment/QuickSearchFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/fragment/QuickSearchFragment;Lcn/nubia/music/fragment/QuickSearchFragment$1;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/QuickSearchFragment$c;-><init>(Lcn/nubia/music/fragment/QuickSearchFragment;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment$c;->a:Lcn/nubia/music/fragment/QuickSearchFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/QuickSearchFragment;->access$100(Lcn/nubia/music/fragment/QuickSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment$c;->a:Lcn/nubia/music/fragment/QuickSearchFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/QuickSearchFragment;->access$100(Lcn/nubia/music/fragment/QuickSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 229
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 235
    iget-object v0, p0, Lcn/nubia/music/fragment/QuickSearchFragment$c;->a:Lcn/nubia/music/fragment/QuickSearchFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/QuickSearchFragment;->access$100(Lcn/nubia/music/fragment/QuickSearchFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MediaModel;

    .line 236
    if-nez p2, :cond_1

    .line 237
    new-instance v2, Lcn/nubia/music/fragment/QuickSearchFragment$a;

    iget-object v1, p0, Lcn/nubia/music/fragment/QuickSearchFragment$c;->a:Lcn/nubia/music/fragment/QuickSearchFragment;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcn/nubia/music/fragment/QuickSearchFragment$a;-><init>(Lcn/nubia/music/fragment/QuickSearchFragment;Lcn/nubia/music/fragment/QuickSearchFragment$1;)V

    .line 238
    iget-object v1, p0, Lcn/nubia/music/fragment/QuickSearchFragment$c;->a:Lcn/nubia/music/fragment/QuickSearchFragment;

    invoke-static {v1}, Lcn/nubia/music/fragment/QuickSearchFragment;->access$500(Lcn/nubia/music/fragment/QuickSearchFragment;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "layout_inflater"

    .line 239
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 240
    const v3, 0x7f03007f

    invoke-virtual {v1, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 241
    const v1, 0x7f100038

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 242
    iput-object v1, v2, Lcn/nubia/music/fragment/QuickSearchFragment$a;->a:Landroid/widget/TextView;

    .line 244
    const v1, 0x7f100163

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcn/nubia/music/fragment/QuickSearchFragment$a;->b:Landroid/widget/TextView;

    .line 246
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 251
    :goto_0
    iget-object v2, v1, Lcn/nubia/music/fragment/QuickSearchFragment$a;->b:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    iget-object v2, v1, Lcn/nubia/music/fragment/QuickSearchFragment$a;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/music/fragment/QuickSearchFragment$c;->a:Lcn/nubia/music/fragment/QuickSearchFragment;

    new-instance v4, Landroid/text/SpannableStringBuilder;

    iget-object v5, v0, Lcn/nubia/music/online/model/MediaModel;->mTitle:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcn/nubia/music/fragment/QuickSearchFragment$c;->a:Lcn/nubia/music/fragment/QuickSearchFragment;

    invoke-static {v5}, Lcn/nubia/music/fragment/QuickSearchFragment;->access$600(Lcn/nubia/music/fragment/QuickSearchFragment;)Lcn/nubia/music/app/listener/IGetSearchKeyWordListener;

    move-result-object v5

    invoke-interface {v5}, Lcn/nubia/music/app/listener/IGetSearchKeyWordListener;->getKeyWord()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcn/nubia/music/fragment/QuickSearchFragment;->access$700(Lcn/nubia/music/fragment/QuickSearchFragment;Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    instance-of v2, v0, Lcn/nubia/music/online/model/MusicModel;

    if-eqz v2, :cond_2

    .line 255
    iget-object v2, v1, Lcn/nubia/music/fragment/QuickSearchFragment$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v1, v1, Lcn/nubia/music/fragment/QuickSearchFragment$a;->b:Landroid/widget/TextView;

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    iget-object v0, v0, Lcn/nubia/music/online/model/MusicModel;->mArtist:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    :goto_1
    return-object p2

    .line 248
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/music/fragment/QuickSearchFragment$a;

    goto :goto_0

    .line 257
    :cond_2
    instance-of v2, v0, Lcn/nubia/music/online/model/ArtistModel;

    if-nez v2, :cond_0

    .line 258
    instance-of v2, v0, Lcn/nubia/music/online/model/AlbumModel;

    if-eqz v2, :cond_3

    .line 259
    iget-object v2, v1, Lcn/nubia/music/fragment/QuickSearchFragment$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v1, v1, Lcn/nubia/music/fragment/QuickSearchFragment$a;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcn/nubia/music/online/model/MediaModel;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 262
    :cond_3
    iget-object v2, v1, Lcn/nubia/music/fragment/QuickSearchFragment$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v1, v1, Lcn/nubia/music/fragment/QuickSearchFragment$a;->b:Landroid/widget/TextView;

    iget-object v0, v0, Lcn/nubia/music/online/model/MediaModel;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
