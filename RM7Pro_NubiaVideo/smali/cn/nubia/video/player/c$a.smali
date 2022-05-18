.class Lcn/nubia/video/player/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/player/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/c;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/c;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/c$a;->a:Lcn/nubia/video/player/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/c$a;->a:Lcn/nubia/video/player/c;

    iget-object v0, v0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/VideoView;->setPauseState(Z)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/c$a;->a:Lcn/nubia/video/player/c;

    iget-object v0, v0, Lcn/nubia/video/player/c;->a:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0}, Lcn/nubia/video/player/VideoView;->M()V

    return-void
.end method
