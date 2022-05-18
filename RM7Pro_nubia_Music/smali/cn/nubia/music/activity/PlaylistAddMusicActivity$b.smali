.class Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;
.super Landroid/widget/BaseAdapter;
.source "PlaylistAddMusicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/PlaylistAddMusicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/music/activity/PlaylistAddMusicActivity$b$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/music/online/model/MusicModel;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcn/nubia/music/activity/PlaylistAddMusicActivity;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 211
    iput-object p1, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->b:Ljava/util/List;

    .line 213
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->c:Landroid/view/LayoutInflater;

    .line 214
    return-void
.end method

.method static synthetic a(Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;)Ljava/util/List;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 221
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 231
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 237
    if-nez p2, :cond_0

    .line 238
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030078

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 239
    new-instance v1, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b$a;

    invoke-direct {v1, p0, v2}, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b$a;-><init>(Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;Lcn/nubia/music/activity/PlaylistAddMusicActivity$1;)V

    .line 240
    const v0, 0x7f100157

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b$a;->a:Landroid/widget/CheckBox;

    .line 241
    const v0, 0x7f100056

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b$a;->b:Landroid/widget/TextView;

    .line 242
    const v0, 0x7f100156

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b$a;->c:Landroid/widget/TextView;

    .line 243
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 247
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    .line 248
    iget-object v2, v1, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b$a;->b:Landroid/widget/TextView;

    iget-object v3, v0, Lcn/nubia/music/online/model/MusicModel;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v2, v1, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b$a;->c:Landroid/widget/TextView;

    iget-object v3, v0, Lcn/nubia/music/online/model/MusicModel;->mAlbum:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v2, p0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b;->a:Lcn/nubia/music/activity/PlaylistAddMusicActivity;

    invoke-static {v2}, Lcn/nubia/music/activity/PlaylistAddMusicActivity;->access$600(Lcn/nubia/music/activity/PlaylistAddMusicActivity;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, v1, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b$a;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 256
    :goto_1
    return-object p2

    .line 245
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b$a;

    move-object v1, v0

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, v1, Lcn/nubia/music/activity/PlaylistAddMusicActivity$b$a;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method
