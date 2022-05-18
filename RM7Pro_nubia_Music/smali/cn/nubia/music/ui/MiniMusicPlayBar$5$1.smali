.class Lcn/nubia/music/ui/MiniMusicPlayBar$5$1;
.super Landroid/os/AsyncTask;
.source "MiniMusicPlayBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/ui/MiniMusicPlayBar$5;->onClick(Landroid/view/View;)V
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
        "[J>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/ui/MiniMusicPlayBar$5;


# direct methods
.method constructor <init>(Lcn/nubia/music/ui/MiniMusicPlayBar$5;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$5$1;->a:Lcn/nubia/music/ui/MiniMusicPlayBar$5;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([J)V
    .locals 2

    .prologue
    .line 231
    invoke-static {p1}, Lcn/nubia/music/utils/EmptyChecker;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/music/app/MusicPlayer;->playAll([JI)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/ui/MiniMusicPlayBar$5$1;->a:Lcn/nubia/music/ui/MiniMusicPlayBar$5;

    iget-object v0, v0, Lcn/nubia/music/ui/MiniMusicPlayBar$5;->a:Lcn/nubia/music/ui/MiniMusicPlayBar;

    invoke-virtual {v0}, Lcn/nubia/music/ui/MiniMusicPlayBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b00ce

    invoke-static {v0, v1}, Lcn/nubia/music/utils/ToastUtil;->showMessage(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/Void;)[J
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->getLocalIdlist()[J

    move-result-object v0

    .line 226
    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 222
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/music/ui/MiniMusicPlayBar$5$1;->a([Ljava/lang/Void;)[J

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 222
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcn/nubia/music/ui/MiniMusicPlayBar$5$1;->a([J)V

    return-void
.end method
