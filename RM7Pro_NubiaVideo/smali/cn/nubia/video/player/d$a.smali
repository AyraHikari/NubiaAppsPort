.class Lcn/nubia/video/player/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/d;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/d;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/d$a;->a:Lcn/nubia/video/player/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "index: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FragmentBase"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/d$a;->a:Lcn/nubia/video/player/d;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getPlayerType()I

    move-result p1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcn/nubia/video/player/d$a;->a:Lcn/nubia/video/player/d;

    .line 3
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getVideoWidth()I

    move-result p1

    iget-object v0, p0, Lcn/nubia/video/player/d$a;->a:Lcn/nubia/video/player/d;

    .line 4
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getVideoHeight()I

    move-result v0

    mul-int/2addr p1, v0

    const v0, 0x7e9000

    if-gt p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/d$a;->a:Lcn/nubia/video/player/d;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/VideoView;->setDecoder(I)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/d$a;->a:Lcn/nubia/video/player/d;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/player/d$a;->a:Lcn/nubia/video/player/d;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/VideoView;->setPauseState(Z)V

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/d$a;->a:Lcn/nubia/video/player/d;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/d$a;->a:Lcn/nubia/video/player/d;

    invoke-static {p1}, Lcn/nubia/video/player/d;->u(Lcn/nubia/video/player/d;)V

    return-void
.end method
