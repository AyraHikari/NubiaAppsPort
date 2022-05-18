.class public Lcn/nubia/video/player/nubiaplayer/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcn/nubia/video/player/VideoView;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/d;->b:Z

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcn/nubia/video/player/nubiaplayer/d;->c:I

    .line 4
    check-cast p1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p1}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/d;->a:Lcn/nubia/video/player/VideoView;

    .line 5
    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->e0()Z

    move-result p1

    iput-boolean p1, p0, Lcn/nubia/video/player/nubiaplayer/d;->b:Z

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/d;->c:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcn/nubia/video/player/nubiaplayer/d;->c:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/high16 v0, 0x3e800000    # 0.25f

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/d;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1, v0}, Lcn/nubia/video/player/VideoView;->V(F)Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/d;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->getSlomoVideoType()I

    move-result v0

    return v0
.end method

.method public c(III)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/d;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-lt p1, p2, :cond_1

    if-gt p1, p3, :cond_1

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/d;->b(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/d;->b(I)V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/nubiaplayer/d;->b:Z

    return v0
.end method
