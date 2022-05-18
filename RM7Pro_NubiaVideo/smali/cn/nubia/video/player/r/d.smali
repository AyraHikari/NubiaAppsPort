.class public Lcn/nubia/video/player/r/d;
.super Lcn/nubia/video/player/r/a;
.source "SourceFile"


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/r/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/nubia/video/player/r/d;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcn/nubia/video/player/r/d;->a:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/r/d;->b:Landroid/content/Context;

    check-cast v0, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/r/d;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v2, v3}, Lcn/nubia/video/player/VideoView;->W(Landroid/net/Uri;III)V

    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x68

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
