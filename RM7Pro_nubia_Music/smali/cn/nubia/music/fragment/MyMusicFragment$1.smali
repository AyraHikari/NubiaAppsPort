.class Lcn/nubia/music/fragment/MyMusicFragment$1;
.super Ljava/lang/Object;
.source "MyMusicFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/fragment/MyMusicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/fragment/MyMusicFragment;


# direct methods
.method constructor <init>(Lcn/nubia/music/fragment/MyMusicFragment;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/music/fragment/MyMusicFragment$1;->a:Lcn/nubia/music/fragment/MyMusicFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment$1;->a:Lcn/nubia/music/fragment/MyMusicFragment;

    iget-object v1, p0, Lcn/nubia/music/fragment/MyMusicFragment$1;->a:Lcn/nubia/music/fragment/MyMusicFragment;

    invoke-virtual {v1}, Lcn/nubia/music/fragment/MyMusicFragment;->getUmengEventId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/music/fragment/MyMusicFragment$1;->a:Lcn/nubia/music/fragment/MyMusicFragment;

    invoke-virtual {v2}, Lcn/nubia/music/fragment/MyMusicFragment;->getUmengEventKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "play_all"

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/music/fragment/MyMusicFragment;->doUmengEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcn/nubia/music/fragment/MyMusicFragment$1;->a:Lcn/nubia/music/fragment/MyMusicFragment;

    invoke-static {v0}, Lcn/nubia/music/fragment/MyMusicFragment;->access$000(Lcn/nubia/music/fragment/MyMusicFragment;)[J

    move-result-object v0

    .line 42
    new-instance v1, Lcn/nubia/music/fragment/MyMusicFragment$1$1;

    invoke-direct {v1, p0, v0}, Lcn/nubia/music/fragment/MyMusicFragment$1$1;-><init>(Lcn/nubia/music/fragment/MyMusicFragment$1;[J)V

    invoke-static {v1}, Lcn/nubia/music/utils/ThreadHelper;->postInNewThread(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method
