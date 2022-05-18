.class Lcn/nubia/music/MainActivity$6;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MainActivity;->playAll()V
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
.field final synthetic a:Lcn/nubia/music/MainActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/MainActivity;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcn/nubia/music/MainActivity$6;->a:Lcn/nubia/music/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a([J)V
    .locals 1

    .prologue
    .line 270
    invoke-static {}, Lcn/nubia/music/app/MusicPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcn/nubia/music/utils/EmptyChecker;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/music/app/MusicPlayer;->playAll([JI)V

    .line 273
    :cond_0
    return-void
.end method

.method protected varargs a([Ljava/lang/Void;)[J
    .locals 1

    .prologue
    .line 264
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->getLocalIdlist()[J

    move-result-object v0

    .line 265
    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 261
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/music/MainActivity$6;->a([Ljava/lang/Void;)[J

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 261
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcn/nubia/music/MainActivity$6;->a([J)V

    return-void
.end method
