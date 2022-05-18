.class public Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;
.super Ljava/lang/Object;
.source "XiamiNubiaLocalPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NubiaXiamiLocalPlayerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;


# direct methods
.method public constructor <init>(Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;->this$0:Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;->this$0:Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;

    invoke-static {v0}, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->access$000(Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;)Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;->this$0:Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;

    invoke-static {v0}, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->access$000(Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;)Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;->onCompletion()V

    .line 41
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;->this$0:Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;

    invoke-static {v0}, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->access$000(Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;)Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;->this$0:Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;

    invoke-static {v0}, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->access$000(Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;)Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;->onError(II)Z

    .line 26
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;->this$0:Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;

    invoke-static {v0}, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->access$000(Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;)Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer$NubiaXiamiLocalPlayerCallback;->this$0:Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;

    invoke-static {v0}, Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;->access$000(Lcn/nubia/music/online/api/XiamiNubiaLocalPlayer;)Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/music/online/api/NubiaLocalPlayer$INubiaLocalPlayerCallback;->onPrepared()V

    .line 34
    :cond_0
    return-void
.end method
