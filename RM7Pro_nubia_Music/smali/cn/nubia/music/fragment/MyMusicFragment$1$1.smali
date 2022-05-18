.class Lcn/nubia/music/fragment/MyMusicFragment$1$1;
.super Ljava/lang/Object;
.source "MyMusicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/fragment/MyMusicFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:Lcn/nubia/music/fragment/MyMusicFragment$1;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/MyMusicFragment$1;[J)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcn/nubia/music/fragment/MyMusicFragment$1$1;->b:Lcn/nubia/music/fragment/MyMusicFragment$1;

    iput-object p2, p0, Lcn/nubia/music/fragment/MyMusicFragment$1$1;->a:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment$1$1;->a:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment$1$1;->a:[J

    array-length v0, v0

    if-lez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment$1$1;->a:[J

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/music/app/MusicPlayer;->shufflePlayAll([JI)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v0, "MyMusicFragment null list"

    invoke-static {v0}, Lcn/nubia/music/utils/MLog;->v(Ljava/lang/String;)V

    goto :goto_0
.end method
