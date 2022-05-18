.class Lcn/nubia/music/MediaPlaybackService$b$2;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/MediaPlaybackService$b;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcn/nubia/music/MediaPlaybackService$b;


# direct methods
.method constructor <init>(Lcn/nubia/music/MediaPlaybackService$b;J)V
    .locals 0

    .prologue
    .line 3807
    iput-object p1, p0, Lcn/nubia/music/MediaPlaybackService$b$2;->b:Lcn/nubia/music/MediaPlaybackService$b;

    iput-wide p2, p0, Lcn/nubia/music/MediaPlaybackService$b$2;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 3809
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3810
    const-string v0, "history_audio_id"

    iget-wide v4, p0, Lcn/nubia/music/MediaPlaybackService$b$2;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3811
    const-string v0, "palytime"

    .line 3812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3811
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3814
    const-string v0, "content://nubia.music.preset/playhistory"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3815
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "history_audio_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcn/nubia/music/MediaPlaybackService$b$2;->a:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3817
    iget-object v0, p0, Lcn/nubia/music/MediaPlaybackService$b$2;->b:Lcn/nubia/music/MediaPlaybackService$b;

    iget-object v0, v0, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcn/nubia/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3819
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3820
    :cond_0
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b$2;->b:Lcn/nubia/music/MediaPlaybackService$b;

    iget-object v1, v1, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcn/nubia/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://nubia.music.preset/playhistory"

    .line 3821
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3828
    :goto_0
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b$2;->b:Lcn/nubia/music/MediaPlaybackService$b;

    iget-object v1, v1, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-static {v1, v0}, Lcn/nubia/music/MediaPlaybackService;->access$6000(Lcn/nubia/music/MediaPlaybackService;Ljava/io/Closeable;)V

    .line 3830
    return-void

    .line 3823
    :cond_1
    const-string v1, "history_audio_id"

    invoke-virtual {v6, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3824
    iget-object v1, p0, Lcn/nubia/music/MediaPlaybackService$b$2;->b:Lcn/nubia/music/MediaPlaybackService$b;

    iget-object v1, v1, Lcn/nubia/music/MediaPlaybackService$b;->a:Lcn/nubia/music/MediaPlaybackService;

    invoke-virtual {v1}, Lcn/nubia/music/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "content://nubia.music.preset/playhistory"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3825
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3824
    invoke-virtual {v1, v3, v6, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3826
    const-string v1, "updateBegin"

    invoke-static {v1}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    goto :goto_0
.end method
