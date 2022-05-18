.class Lcn/nubia/music/activity/AddToPlaylistActivity$a;
.super Landroid/widget/BaseAdapter;
.source "AddToPlaylistActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/AddToPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/AddToPlaylistActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/PlaylistModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/AddToPlaylistActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 183
    iput-object p1, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->b:Ljava/util/List;

    .line 185
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->c:Landroid/view/LayoutInflater;

    .line 186
    return-void
.end method

.method static synthetic a(Lcn/nubia/music/activity/AddToPlaylistActivity$a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 203
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    const v3, 0x7f100056

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 222
    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 260
    :goto_0
    return-object p2

    .line 224
    :pswitch_0
    if-nez p2, :cond_0

    .line 225
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030078

    invoke-virtual {v0, v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 227
    new-instance v1, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;

    invoke-direct {v1, p0, v2}, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;-><init>(Lcn/nubia/music/activity/AddToPlaylistActivity$a;Lcn/nubia/music/activity/AddToPlaylistActivity$1;)V

    .line 228
    const v0, 0x7f100157

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;->a:Landroid/widget/CheckBox;

    .line 229
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;->b:Landroid/widget/TextView;

    .line 230
    const v0, 0x7f100156

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;->c:Landroid/widget/TextView;

    .line 231
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    :goto_1
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/PlaylistModel;

    .line 236
    iget-object v2, v1, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcn/nubia/music/online/model/PlaylistModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v2, v1, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;->c:Landroid/widget/TextView;

    const v3, 0x7f0b00b7

    invoke-static {v3}, Lcn/nubia/music/utils/ResHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, v0, Lcn/nubia/music/online/model/PlaylistModel;->numMusic:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->a:Lcn/nubia/music/activity/AddToPlaylistActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/AddToPlaylistActivity;->access$600(Lcn/nubia/music/activity/AddToPlaylistActivity;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, v1, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;

    move-object v1, v0

    goto :goto_1

    .line 241
    :cond_1
    iget-object v0, v1, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 245
    :pswitch_1
    if-nez p2, :cond_2

    .line 246
    iget-object v0, p0, Lcn/nubia/music/activity/AddToPlaylistActivity$a;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030018

    .line 247
    invoke-virtual {v0, v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 248
    new-instance v1, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;

    invoke-direct {v1, p0, v2}, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;-><init>(Lcn/nubia/music/activity/AddToPlaylistActivity$a;Lcn/nubia/music/activity/AddToPlaylistActivity$1;)V

    .line 249
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;->b:Landroid/widget/TextView;

    .line 250
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 254
    :goto_2
    iget-object v0, v0, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0b00a7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 252
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/AddToPlaylistActivity$a$a;

    goto :goto_2

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x2

    return v0
.end method
