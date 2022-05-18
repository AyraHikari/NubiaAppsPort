.class Lcn/nubia/video/player/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/e/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/i;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/i;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/i$a;->a:Lcn/nubia/video/player/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/i$a;->a:Lcn/nubia/video/player/i;

    invoke-virtual {p1}, Lcn/nubia/video/player/i;->onFinish()V

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/i$a;->a:Lcn/nubia/video/player/i;

    invoke-static {p1}, Lcn/nubia/video/player/i;->t(Lcn/nubia/video/player/i;)Lcn/nubia/video/player/k;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/k;->F()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/i$a;->a:Lcn/nubia/video/player/i;

    invoke-static {p1}, Lcn/nubia/video/player/i;->t(Lcn/nubia/video/player/i;)Lcn/nubia/video/player/k;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/k;->F()V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/i$a;->a:Lcn/nubia/video/player/i;

    invoke-static {p1}, Lcn/nubia/video/player/i;->t(Lcn/nubia/video/player/i;)Lcn/nubia/video/player/k;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/k;->w()V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/i$a;->a:Lcn/nubia/video/player/i;

    iget-object p1, p1, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getPlayerState()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/i$a;->a:Lcn/nubia/video/player/i;

    iget-object p1, p1, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->K()V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcn/nubia/video/player/i$a;->a:Lcn/nubia/video/player/i;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcn/nubia/video/player/c;->d:Z

    .line 8
    invoke-static {p1}, Lcn/nubia/video/player/i;->t(Lcn/nubia/video/player/i;)Lcn/nubia/video/player/k;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/k;->x()V

    .line 9
    iget-object p1, p0, Lcn/nubia/video/player/i$a;->a:Lcn/nubia/video/player/i;

    iget-object p1, p1, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->c0()V

    goto :goto_0

    .line 10
    :cond_4
    iget-object p1, p0, Lcn/nubia/video/player/i$a;->a:Lcn/nubia/video/player/i;

    invoke-static {p1}, Lcn/nubia/video/player/i;->t(Lcn/nubia/video/player/i;)Lcn/nubia/video/player/k;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/k;->F()V

    .line 11
    iget-object p1, p0, Lcn/nubia/video/player/i$a;->a:Lcn/nubia/video/player/i;

    invoke-static {p1}, Lcn/nubia/video/player/i;->t(Lcn/nubia/video/player/i;)Lcn/nubia/video/player/k;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/k;->v()V

    goto :goto_0

    .line 12
    :cond_5
    iget-object p1, p0, Lcn/nubia/video/player/i$a;->a:Lcn/nubia/video/player/i;

    invoke-static {p1}, Lcn/nubia/video/player/i;->t(Lcn/nubia/video/player/i;)Lcn/nubia/video/player/k;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/k;->n()V

    :cond_6
    :goto_0
    return-void
.end method
