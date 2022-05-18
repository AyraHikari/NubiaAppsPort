.class Lcn/nubia/music/fragment/BasePlayListFragment$2;
.super Landroid/os/AsyncTask;
.source "BasePlayListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/BasePlayListFragment;->setFavoriteButton(Landroid/view/MenuItem;[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:Landroid/view/MenuItem;

.field final synthetic c:Lcn/nubia/music/fragment/BasePlayListFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/BasePlayListFragment;[JLandroid/view/MenuItem;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcn/nubia/music/fragment/BasePlayListFragment$2;->c:Lcn/nubia/music/fragment/BasePlayListFragment;

    iput-object p2, p0, Lcn/nubia/music/fragment/BasePlayListFragment$2;->a:[J

    iput-object p3, p0, Lcn/nubia/music/fragment/BasePlayListFragment$2;->b:Landroid/view/MenuItem;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$2;->a:[J

    array-length v0, v0

    new-array v3, v0, [J

    move v1, v2

    .line 266
    :goto_0
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$2;->a:[J

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 267
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$2;->c:Lcn/nubia/music/fragment/BasePlayListFragment;

    iget-object v0, v0, Lcn/nubia/music/fragment/BasePlayListFragment;->mAdapter:Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;

    iget-object v4, p0, Lcn/nubia/music/fragment/BasePlayListFragment$2;->a:[J

    aget-wide v4, v4, v1

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcn/nubia/music/fragment/BasePlayListFragment$PlayManagerTrackAdpter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/music/online/model/MusicModel;

    iget-wide v4, v0, Lcn/nubia/music/online/model/MusicModel;->mMediaId:J

    aput-wide v4, v3, v1

    .line 266
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 273
    :cond_0
    array-length v1, v3

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_3

    aget-wide v4, v3, v0

    .line 274
    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 275
    const/4 v0, 0x1

    .line 280
    :goto_2
    if-nez v0, :cond_1

    .line 281
    invoke-static {v3}, Lcn/nubia/music/utils/MusicUtils;->isListInFavoList([J)Z

    move-result v2

    .line 284
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 273
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$2;->b:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$2;->b:Landroid/view/MenuItem;

    const v1, 0x7f02006a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 292
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$2;->b:Landroid/view/MenuItem;

    const v1, 0x7f0b0041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$2;->b:Landroid/view/MenuItem;

    const v1, 0x7f020073

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 295
    iget-object v0, p0, Lcn/nubia/music/fragment/BasePlayListFragment$2;->b:Landroid/view/MenuItem;

    const v1, 0x7f0b000d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/BasePlayListFragment$2;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 262
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/BasePlayListFragment$2;->a(Ljava/lang/Boolean;)V

    return-void
.end method
