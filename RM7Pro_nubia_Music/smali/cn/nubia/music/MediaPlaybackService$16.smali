.class Lcn/nubia/music/MediaPlaybackService$16;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService;->reloadQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/music/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcn/nubia/music/MediaPlaybackService;I)V
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$16;->b:Lcn/nubia/music/MediaPlaybackService;

    iput p2, p0, Lcn/nubia/music/MediaPlaybackService$16;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1150
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$16;->b:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v0}, Lcn/nubia/music/MediaPlaybackService;->access$3900(Lcn/nubia/music/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$16;->b:Lcn/nubia/music/MediaPlaybackService;

    iget v1, p0, Lcn/nubia/music/MediaPlaybackService$16;->a:I

    invoke-static {v0, v1}, Lcn/nubia/music/MediaPlaybackService;->access$3602(Lcn/nubia/music/MediaPlaybackService;I)I

    .line 1153
    :cond_0
    return-void
.end method
