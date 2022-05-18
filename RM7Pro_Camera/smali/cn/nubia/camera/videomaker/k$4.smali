.class Lcn/nubia/camera/videomaker/k$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/videomaker/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/videomaker/k;


# direct methods
.method constructor <init>(Lcn/nubia/camera/videomaker/k;)V
    .locals 0

    .line 1323
    iput-object p1, p0, Lcn/nubia/camera/videomaker/k$4;->a:Lcn/nubia/camera/videomaker/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1333
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$4;->a:Lcn/nubia/camera/videomaker/k;

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/k;->k()V

    goto :goto_0

    .line 1330
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k$4;->a:Lcn/nubia/camera/videomaker/k;

    invoke-virtual {p1}, Lcn/nubia/camera/videomaker/k;->k()V

    :goto_0
    return-void
.end method
