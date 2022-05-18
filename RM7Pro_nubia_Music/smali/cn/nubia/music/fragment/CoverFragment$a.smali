.class Lcn/nubia/music/fragment/CoverFragment$a;
.super Landroid/os/AsyncTask;
.source "CoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/CoverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/CoverFragment;


# direct methods
.method private constructor <init>(Lcn/nubia/music/fragment/CoverFragment;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcn/nubia/music/fragment/CoverFragment$a;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/fragment/CoverFragment;Lcn/nubia/music/fragment/CoverFragment$1;)V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcn/nubia/music/fragment/CoverFragment$a;-><init>(Lcn/nubia/music/fragment/CoverFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAlbumImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 262
    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 268
    sget-object v0, Lcn/nubia/music/utils/imageloader/ImageLoader;->INSTANCE:Lcn/nubia/music/utils/imageloader/ImageLoader;

    iget-object v1, p0, Lcn/nubia/music/fragment/CoverFragment$a;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/CoverFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/fragment/CoverFragment$a;->a:Lcn/nubia/music/fragment/CoverFragment;

    invoke-static {v2}, Lcn/nubia/music/fragment/CoverFragment;->access$500(Lcn/nubia/music/fragment/CoverFragment;)Lcn/nubia/music/ui/RoundImageView;

    move-result-object v2

    invoke-static {}, Lcn/nubia/music/utils/imageloader/DisplayOptionsCreator;->getPlaybackAlbumCoverOptions()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/ImageLoader;->displayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V

    .line 269
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 257
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/CoverFragment$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 257
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/music/fragment/CoverFragment$a;->a(Ljava/lang/String;)V

    return-void
.end method
