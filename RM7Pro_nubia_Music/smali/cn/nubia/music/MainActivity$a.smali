.class Lcn/nubia/music/MainActivity$a;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/MainActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/music/MainActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcn/nubia/music/MainActivity$a;->a:Lcn/nubia/music/MainActivity;

    .line 371
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 372
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x4

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyFragmentPagerAdapter getItem index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    .line 377
    packed-switch p1, :pswitch_data_0

    .line 391
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 379
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/music/MainActivity$a;->a:Lcn/nubia/music/MainActivity;

    invoke-static {}, Lcn/nubia/music/fragment/MyPlaylistFragment;->newInstance()Lcn/nubia/music/fragment/MyPlaylistFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/MainActivity;->access$702(Lcn/nubia/music/MainActivity;Lcn/nubia/music/fragment/MyPlaylistFragment;)Lcn/nubia/music/fragment/MyPlaylistFragment;

    .line 380
    iget-object v0, p0, Lcn/nubia/music/MainActivity$a;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$700(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/fragment/MyPlaylistFragment;

    move-result-object v0

    goto :goto_0

    .line 382
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/music/MainActivity$a;->a:Lcn/nubia/music/MainActivity;

    invoke-static {}, Lcn/nubia/music/fragment/MyMusicFragment;->newInstance()Lcn/nubia/music/fragment/MyMusicFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/MainActivity;->access$802(Lcn/nubia/music/MainActivity;Lcn/nubia/music/fragment/MyMusicFragment;)Lcn/nubia/music/fragment/MyMusicFragment;

    .line 383
    iget-object v0, p0, Lcn/nubia/music/MainActivity$a;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$800(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/fragment/MyMusicFragment;

    move-result-object v0

    goto :goto_0

    .line 385
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/music/MainActivity$a;->a:Lcn/nubia/music/MainActivity;

    invoke-static {}, Lcn/nubia/music/fragment/MyArtistsFragment;->newInstance()Lcn/nubia/music/fragment/MyArtistsFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/MainActivity;->access$902(Lcn/nubia/music/MainActivity;Lcn/nubia/music/fragment/MyArtistsFragment;)Lcn/nubia/music/fragment/MyArtistsFragment;

    .line 386
    iget-object v0, p0, Lcn/nubia/music/MainActivity$a;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$900(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/fragment/MyArtistsFragment;

    move-result-object v0

    goto :goto_0

    .line 388
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/music/MainActivity$a;->a:Lcn/nubia/music/MainActivity;

    invoke-static {}, Lcn/nubia/music/fragment/MyAlbumFragment;->newInstance()Lcn/nubia/music/fragment/MyAlbumFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/music/MainActivity;->access$1002(Lcn/nubia/music/MainActivity;Lcn/nubia/music/fragment/MyAlbumFragment;)Lcn/nubia/music/fragment/MyAlbumFragment;

    .line 389
    iget-object v0, p0, Lcn/nubia/music/MainActivity$a;->a:Lcn/nubia/music/MainActivity;

    invoke-static {v0}, Lcn/nubia/music/MainActivity;->access$1000(Lcn/nubia/music/MainActivity;)Lcn/nubia/music/fragment/MyAlbumFragment;

    move-result-object v0

    goto :goto_0

    .line 377
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
