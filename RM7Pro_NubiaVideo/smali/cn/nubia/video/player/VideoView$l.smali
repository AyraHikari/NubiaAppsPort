.class Lcn/nubia/video/player/VideoView$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/VideoView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/VideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$l;->a:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/VideoView$l;->a:Lcn/nubia/video/player/VideoView;

    invoke-static {v0}, Lcn/nubia/video/player/VideoView;->o(Lcn/nubia/video/player/VideoView;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    return-void
.end method
