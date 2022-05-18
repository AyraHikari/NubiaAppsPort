.class Lcn/nubia/video/player/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/p;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/p$b;->a:Lcn/nubia/video/player/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/p$b;->a:Lcn/nubia/video/player/p;

    invoke-static {v0}, Lcn/nubia/video/player/p;->a(Lcn/nubia/video/player/p;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/p$b;->a:Lcn/nubia/video/player/p;

    invoke-static {v0}, Lcn/nubia/video/player/p;->a(Lcn/nubia/video/player/p;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method
