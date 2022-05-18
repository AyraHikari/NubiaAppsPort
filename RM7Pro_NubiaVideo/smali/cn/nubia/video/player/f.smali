.class public Lcn/nubia/video/player/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/player/f$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/media/AudioManager;

.field private c:Landroid/app/Activity;

.field private d:I

.field private e:Lcn/nubia/video/player/f$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcn/nubia/video/player/f$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/nubia/video/player/f;->d:I

    .line 3
    iput-object p1, p0, Lcn/nubia/video/player/f;->c:Landroid/app/Activity;

    const-string v0, "audio"

    .line 4
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcn/nubia/video/player/f;->b:Landroid/media/AudioManager;

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/f;->a:I

    .line 6
    iput-object p2, p0, Lcn/nubia/video/player/f;->e:Lcn/nubia/video/player/f$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/f;->b:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/video/player/f;->d:I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/f;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    return-void
.end method

.method public b(F)V
    .locals 3

    .line 1
    iget v0, p0, Lcn/nubia/video/player/f;->d:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2
    iput v1, p0, Lcn/nubia/video/player/f;->d:I

    .line 3
    :cond_0
    iget v0, p0, Lcn/nubia/video/player/f;->d:I

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr p1, v2

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 4
    iget p1, p0, Lcn/nubia/video/player/f;->a:I

    if-le v0, p1, :cond_1

    move v0, p1

    goto :goto_0

    :cond_1
    if-gez v0, :cond_2

    move v0, v1

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/f;->b:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/f;->e:Lcn/nubia/video/player/f$a;

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcn/nubia/video/player/f;->b:Landroid/media/AudioManager;

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0xf

    .line 8
    iget v0, p0, Lcn/nubia/video/player/f;->a:I

    div-int/2addr p1, v0

    .line 9
    iget-object v0, p0, Lcn/nubia/video/player/f;->e:Lcn/nubia/video/player/f$a;

    invoke-interface {v0, p1}, Lcn/nubia/video/player/f$a;->a(I)V

    :cond_3
    return-void
.end method
