.class Lcn/nubia/video/player/PIPPlayer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/PIPPlayer;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:I

.field private f:I

.field private g:I

.field final synthetic h:Lcn/nubia/video/player/PIPPlayer;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/PIPPlayer;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->h:Lcn/nubia/video/player/PIPPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->a:F

    .line 3
    iput p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->b:F

    .line 4
    iput p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->c:F

    .line 5
    iput p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->d:F

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->e:I

    const/16 v0, 0xa

    .line 7
    iput v0, p0, Lcn/nubia/video/player/PIPPlayer$b;->f:I

    .line 8
    iput p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->g:I

    return-void
.end method

.method private a()I
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer$b;->h:Lcn/nubia/video/player/PIPPlayer;

    invoke-virtual {v1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$b;->h:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->h(Lcn/nubia/video/player/PIPPlayer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/nubia/video/player/PIPPlayer$b;->a:F

    iget v2, p0, Lcn/nubia/video/player/PIPPlayer$b;->c:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$b;->h:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->h(Lcn/nubia/video/player/PIPPlayer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcn/nubia/video/player/PIPPlayer$b;->b:F

    iget v2, p0, Lcn/nubia/video/player/PIPPlayer$b;->d:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcn/nubia/video/player/PIPPlayer$b;->g:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$b;->h:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->o(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/player/PIPPlayer$f;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer$f;->b(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/PIPPlayer$b;->h:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v0}, Lcn/nubia/video/player/PIPPlayer;->i(Lcn/nubia/video/player/PIPPlayer;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/PIPPlayer$b;->h:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer;->o(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/player/PIPPlayer$f;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/video/player/PIPPlayer$f;->b(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/player/PIPPlayer$b;->h:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {v2}, Lcn/nubia/video/player/PIPPlayer;->h(Lcn/nubia/video/player/PIPPlayer;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->a:F

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->b:F

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return v0

    .line 4
    :cond_0
    iget p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->e:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->e:I

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer$b;->b()V

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->d:F

    iput p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->c:F

    .line 7
    iget p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->e:I

    iget p2, p0, Lcn/nubia/video/player/PIPPlayer$b;->f:I

    if-gt p1, p2, :cond_2

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->h:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->o(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/player/PIPPlayer$f;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/video/player/PIPPlayer$f;->m()V

    :cond_2
    return v1

    .line 9
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->c:F

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->d:F

    .line 11
    iget p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->g:I

    if-nez p1, :cond_4

    .line 12
    invoke-direct {p0}, Lcn/nubia/video/player/PIPPlayer$b;->a()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->g:I

    .line 13
    :cond_4
    iput v0, p0, Lcn/nubia/video/player/PIPPlayer$b;->e:I

    .line 14
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->h:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->c(Lcn/nubia/video/player/PIPPlayer;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->h:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->h:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/video/mediajni/IMediaPlayer;->pause()V

    .line 16
    :cond_5
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$b;->h:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->o(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/player/PIPPlayer$f;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer$f;->i(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    return v1
.end method
