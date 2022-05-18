.class Lcn/nubia/video/player/nubiaplayer/c$l;
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
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$l;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$l;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->y(Lcn/nubia/video/player/nubiaplayer/c;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$l;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->A(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/c$l;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/c;->y(Lcn/nubia/video/player/nubiaplayer/c;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/VideoView;->S(I)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$l;->a:Lcn/nubia/video/player/nubiaplayer/c;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcn/nubia/video/player/nubiaplayer/c;->z(Lcn/nubia/video/player/nubiaplayer/c;I)I

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/c$l;->a:Lcn/nubia/video/player/nubiaplayer/c;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/c;->p(Lcn/nubia/video/player/nubiaplayer/c;)Lcn/nubia/video/player/c$c;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/player/c$c;->a()V

    return-void
.end method
