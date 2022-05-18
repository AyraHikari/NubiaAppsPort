.class Lcn/nubia/video/player/nubiaplayer/c$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/c;->G0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/nubiaplayer/c;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$k;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$k;->a:Lcn/nubia/video/player/nubiaplayer/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/video/player/nubiaplayer/c;->v(Lcn/nubia/video/player/nubiaplayer/c;Z)Z

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$k;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->w(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getDuration()I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$k;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->x(Lcn/nubia/video/player/nubiaplayer/c;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$k;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/nubiaplayer/c;->R0(Z)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$k;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->q(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/nubiaplayer/c$p;

    move-result-object p1

    iget-object p1, p1, Lcn/nubia/video/player/nubiaplayer/c$p;->e:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->cancelClip()V

    return-void
.end method
