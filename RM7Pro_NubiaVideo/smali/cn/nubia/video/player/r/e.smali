.class public Lcn/nubia/video/player/r/e;
.super Lcn/nubia/video/player/r/a;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/r/a;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/nubia/video/player/r/e;->a:Landroid/content/Context;

    return-void
.end method

.method private d()Lcn/nubia/video/player/VideoView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/r/e;->a:Landroid/content/Context;

    check-cast v0, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0}, Lcn/nubia/video/player/PlayerActivity;->o()Lcn/nubia/video/player/VideoView;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/r/e;->a:Landroid/content/Context;

    instance-of v0, v0, Lcn/nubia/video/player/PlayerActivity;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/player/r/e;->d()Lcn/nubia/video/player/VideoView;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->K()V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x67

    return v0
.end method
