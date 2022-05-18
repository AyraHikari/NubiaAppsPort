.class Lcn/nubia/video/player/nubiaplayer/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/player/r/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/nubiaplayer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/nubiaplayer/a;


# direct methods
.method private constructor <init>(Lcn/nubia/video/player/nubiaplayer/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$c;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/video/player/nubiaplayer/a;Lcn/nubia/video/player/nubiaplayer/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/player/nubiaplayer/a$c;-><init>(Lcn/nubia/video/player/nubiaplayer/a;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/a$c;->a:Lcn/nubia/video/player/nubiaplayer/a;

    invoke-virtual {p1}, Lcn/nubia/video/player/nubiaplayer/a;->onFinish()V

    :goto_0
    return-void
.end method
