.class Lcn/nubia/video/player/n$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/n;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Lcn/nubia/video/player/s/e;

.field private b:I

.field private c:I

.field final synthetic d:Lcn/nubia/video/player/n;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/n$d;->d:Lcn/nubia/video/player/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcn/nubia/video/player/s/e;

    invoke-direct {p1}, Lcn/nubia/video/player/s/e;-><init>()V

    iput-object p1, p0, Lcn/nubia/video/player/n$d;->a:Lcn/nubia/video/player/s/e;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcn/nubia/video/player/n$d;->b:I

    .line 4
    iput p1, p0, Lcn/nubia/video/player/n$d;->c:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/n$d;->a:Lcn/nubia/video/player/s/e;

    invoke-virtual {p1}, Lcn/nubia/video/player/s/e;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/n$d;->d:Lcn/nubia/video/player/n;

    iget-object p1, p1, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1, p2}, Lcn/nubia/video/player/VideoView;->S(I)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/player/n$d;->d:Lcn/nubia/video/player/n;

    invoke-virtual {p1}, Lcn/nubia/video/player/n;->o()V

    .line 4
    iput p2, p0, Lcn/nubia/video/player/n$d;->c:I

    .line 5
    :cond_0
    iput p2, p0, Lcn/nubia/video/player/n$d;->b:I

    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput p1, p0, Lcn/nubia/video/player/n$d;->c:I

    .line 2
    iput p1, p0, Lcn/nubia/video/player/n$d;->b:I

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    iget p1, p0, Lcn/nubia/video/player/n$d;->b:I

    iget v0, p0, Lcn/nubia/video/player/n$d;->c:I

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/n$d;->d:Lcn/nubia/video/player/n;

    iget-object v0, v0, Lcn/nubia/video/player/q;->c:Lcn/nubia/video/player/VideoView;

    invoke-virtual {v0, p1}, Lcn/nubia/video/player/VideoView;->S(I)V

    :cond_0
    return-void
.end method
