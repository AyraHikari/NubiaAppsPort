.class Lcn/nubia/video/player/nubiaplayer/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/f;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcn/nubia/video/player/nubiaplayer/f;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/f;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/f$b;->b:Lcn/nubia/video/player/nubiaplayer/f;

    iput p2, p0, Lcn/nubia/video/player/nubiaplayer/f$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget v0, p0, Lcn/nubia/video/player/nubiaplayer/f$b;->a:I

    const/16 v1, 0x3e9

    const v2, 0x7f0f005f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3ec

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f$b;->b:Lcn/nubia/video/player/nubiaplayer/f;

    const v1, 0x7f0f00b5

    invoke-static {v0, v1}, Lcn/nubia/video/player/nubiaplayer/f;->h(Lcn/nubia/video/player/nubiaplayer/f;I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f$b;->b:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {v0, v2}, Lcn/nubia/video/player/nubiaplayer/f;->h(Lcn/nubia/video/player/nubiaplayer/f;I)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f$b;->b:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {v0, v2}, Lcn/nubia/video/player/nubiaplayer/f;->h(Lcn/nubia/video/player/nubiaplayer/f;I)V

    :goto_0
    return-void
.end method
