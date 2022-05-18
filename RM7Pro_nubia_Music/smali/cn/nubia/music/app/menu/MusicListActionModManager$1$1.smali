.class Lcn/nubia/music/app/menu/MusicListActionModManager$1$1;
.super Ljava/lang/Object;
.source "MusicListActionModManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/app/menu/MusicListActionModManager$1;->onActionItemClicked(Lcn/nubia/commonui/actionbar/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:Lcn/nubia/music/app/menu/MusicListActionModManager$1;


# direct methods
.method constructor <init>(Lcn/nubia/music/app/menu/MusicListActionModManager$1;[J)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1$1;->b:Lcn/nubia/music/app/menu/MusicListActionModManager$1;

    iput-object p2, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1$1;->a:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1$1;->b:Lcn/nubia/music/app/menu/MusicListActionModManager$1;

    iget-object v0, v0, Lcn/nubia/music/app/menu/MusicListActionModManager$1;->a:Lcn/nubia/music/app/menu/MusicListActionModManager;

    invoke-static {v0}, Lcn/nubia/music/app/menu/MusicListActionModManager;->access$300(Lcn/nubia/music/app/menu/MusicListActionModManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/app/menu/MusicListActionModManager$1$1;->a:[J

    invoke-static {v0, v1}, Lcn/nubia/music/utils/MusicUtils;->addToCurrentPlaylist(Landroid/content/Context;[J)V

    .line 233
    return-void
.end method
