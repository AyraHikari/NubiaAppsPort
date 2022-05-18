.class Lcn/nubia/music/ui/MiniMusicPlayBar$11;
.super Landroid/os/AsyncTask;
.source "MiniMusicPlayBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/ui/MiniMusicPlayBar;->refreshView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic a:Lcn/nubia/music/ui/MiniMusicPlayBar;


# direct methods
.method constructor <init>(Lcn/nubia/music/ui/MiniMusicPlayBar;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$11;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->getAlbumImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 422
    return-object v0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 427
    sget-object v0, Lcn/nubia/music/utils/imageloader/ImageLoader;->INSTANCE:Lcn/nubia/music/utils/imageloader/ImageLoader;

    iget-object v1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$11;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v1}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$300(Lcn/nubia/music/ui/MiniMusicPlayBar;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$11;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-static {v2}, Lcn/nubia/music/ui/MiniMusicPlayBar;->access$400(Lcn/nubia/music/ui/MiniMusicPlayBar;)Lcn/nubia/music/ui/MiniPlayAlbumView;

    move-result-object v2

    invoke-static {}, Lcn/nubia/music/utils/imageloader/DisplayOptionsCreator;->getMinibarAlbumCoverOptions()Lcn/nubia/music/utils/imageloader/DisplayOptions;

    move-result-object v4

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/music/utils/imageloader/ImageLoader;->displayImage(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Lcn/nubia/music/utils/imageloader/DisplayOptions;Lcn/nubia/music/utils/imageloader/ImageLoaderListener;)V

    .line 434
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 418
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/music/ui/MiniMusicPlayBar$11;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 418
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/nubia/music/ui/MiniMusicPlayBar$11;->a(Ljava/lang/String;)V

    return-void
.end method
