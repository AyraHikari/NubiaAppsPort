.class final Lcn/nubia/music/utils/MusicUtils$9;
.super Ljava/lang/Object;
.source "MusicUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/utils/MusicUtils;->removeListFromFavoList([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[J


# direct methods
.method constructor <init>([J)V
    .locals 0

    .prologue
    .line 1660
    iput-object p1, p0, Lcn/nubia/music/utils/MusicUtils$9;->a:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1662
    iget-object v0, p0, Lcn/nubia/music/utils/MusicUtils$9;->a:[J

    if-nez v0, :cond_0

    .line 1665
    const-string v0, "ListSelection null"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->w(Ljava/lang/String;)V

    .line 1680
    :goto_0
    return-void

    .line 1667
    :cond_0
    const-string v0, "content://nubia.music.preset/favorites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1669
    const-string v0, "audio_id IN ( "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcn/nubia/music/utils/MusicUtils$9;->a:[J

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1671
    if-nez v0, :cond_1

    .line 1672
    iget-object v3, p0, Lcn/nubia/music/utils/MusicUtils$9;->a:[J

    aget-wide v4, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1670
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1674
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/music/utils/MusicUtils$9;->a:[J

    aget-wide v4, v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1677
    :cond_2
    const-string v0, " )"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1678
    sget-object v0, Lcn/nubia/music/MusicApp;->instance:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
