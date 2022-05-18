.class final Lcn/nubia/music/utils/MusicUtils$1;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/MusicUtils;->addToPlaylistWithCallback(Landroid/content/Context;[JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:J

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>([JJLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 714
    iput-object p1, p0, Lcn/nubia/music/utils/MusicUtils$1;->a:[J

    iput-wide p2, p0, Lcn/nubia/music/utils/MusicUtils$1;->b:J

    iput-object p4, p0, Lcn/nubia/music/utils/MusicUtils$1;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 716
    iget-object v0, p0, Lcn/nubia/music/utils/MusicUtils$1;->a:[J

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcn/nubia/music/utils/MusicUtils$1;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 719
    :cond_0
    const-string v0, "ListSelection null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 737
    :cond_1
    :goto_0
    return-void

    .line 721
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/utils/MusicUtils$1;->a:[J

    iget-wide v2, p0, Lcn/nubia/music/utils/MusicUtils$1;->b:J

    invoke-static {v0, v2, v3}, Lcn/nubia/music/utils/MusicUtils;->access$000([JJ)[J

    move-result-object v1

    .line 722
    iget-object v0, p0, Lcn/nubia/music/utils/MusicUtils$1;->a:[J

    array-length v2, v0

    .line 723
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 726
    const-string v0, "content://nubia.music.preset/playlistDatas"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 727
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_3

    .line 728
    const/16 v5, 0x3e8

    iget-wide v6, p0, Lcn/nubia/music/utils/MusicUtils$1;->b:J

    invoke-static {v1, v0, v5, v6, v7}, Lcn/nubia/music/utils/MusicUtils;->access$100([JIIJ)V

    .line 729
    invoke-static {}, Lcn/nubia/music/utils/MusicUtils;->access$200()[Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 727
    add-int/lit16 v0, v0, 0x3e8

    goto :goto_1

    .line 731
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/utils/MusicUtils$1;->c:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcn/nubia/music/utils/MusicUtils$1;->c:Landroid/content/Context;

    instance-of v0, v0, Lcn/nubia/music/app/listener/IAddMusicToPlaylistCallback;

    if-eqz v0, :cond_1

    .line 733
    const-string v0, "2"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcn/nubia/music/utils/MusicUtils$1;->c:Landroid/content/Context;

    check-cast v0, Lcn/nubia/music/app/listener/IAddMusicToPlaylistCallback;

    invoke-interface {v0}, Lcn/nubia/music/app/listener/IAddMusicToPlaylistCallback;->onAddComplete()V

    goto :goto_0
.end method
