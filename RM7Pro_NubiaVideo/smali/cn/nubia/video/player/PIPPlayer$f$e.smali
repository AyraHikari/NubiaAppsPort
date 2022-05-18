.class Lcn/nubia/video/player/PIPPlayer$f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/PIPPlayer$f;-><init>(Lcn/nubia/video/player/PIPPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/PIPPlayer$f;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/PIPPlayer$f;Lcn/nubia/video/player/PIPPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/PIPPlayer$f$e;->a:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$f$e;->a:Lcn/nubia/video/player/PIPPlayer$f;

    iget-object p1, p1, Lcn/nubia/video/player/PIPPlayer$f;->m:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->start()V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$f$e;->a:Lcn/nubia/video/player/PIPPlayer$f;

    iget-object p1, p1, Lcn/nubia/video/player/PIPPlayer$f;->m:Lcn/nubia/video/player/PIPPlayer;

    invoke-virtual {p1}, Lcn/nubia/video/player/PIPPlayer;->y()V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$f$e;->a:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer$f;->i(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$f$e;->a:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer$f;->e(Lcn/nubia/video/player/PIPPlayer$f;)V

    return-void
.end method
