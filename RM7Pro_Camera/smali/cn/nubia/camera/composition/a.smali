.class public Lcn/nubia/camera/composition/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/composition/a$b;,
        Lcn/nubia/camera/composition/a$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Lcn/nubia/camera/composition/CompositionView;

.field private c:Lcn/nubia/camera/v/b;

.field private d:Lcn/nubia/camera/composition/a$a;

.field private final e:Ljava/lang/Object;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/composition/CompositionView;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcn/nubia/camera/composition/a;->a:Lcn/nubia/camera/ad/a;

    .line 22
    iput-object v0, p0, Lcn/nubia/camera/composition/a;->b:Lcn/nubia/camera/composition/CompositionView;

    .line 23
    iput-object v0, p0, Lcn/nubia/camera/composition/a;->c:Lcn/nubia/camera/v/b;

    .line 24
    iput-object v0, p0, Lcn/nubia/camera/composition/a;->d:Lcn/nubia/camera/composition/a$a;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/composition/a;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcn/nubia/camera/composition/a;->f:Z

    .line 27
    iput-boolean v0, p0, Lcn/nubia/camera/composition/a;->g:Z

    .line 30
    iput-object p1, p0, Lcn/nubia/camera/composition/a;->a:Lcn/nubia/camera/ad/a;

    .line 31
    iput-object p2, p0, Lcn/nubia/camera/composition/a;->b:Lcn/nubia/camera/composition/CompositionView;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/composition/a;)Ljava/lang/Object;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/camera/composition/a;->e:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Landroid/graphics/Rect;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/composition/a;->b:Lcn/nubia/camera/composition/CompositionView;

    invoke-virtual {v0}, Lcn/nubia/camera/composition/CompositionView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 85
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 87
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 88
    iget-object p1, p0, Lcn/nubia/camera/composition/a;->b:Lcn/nubia/camera/composition/CompositionView;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/composition/CompositionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/composition/a;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcn/nubia/camera/composition/a;->f:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/composition/a;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcn/nubia/camera/composition/a;->f:Z

    return p0
.end method

.method static synthetic c(Lcn/nubia/camera/composition/a;)Lcn/nubia/camera/v/b;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/camera/composition/a;->c:Lcn/nubia/camera/v/b;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/composition/a;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/camera/composition/a;->a:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/composition/a;)Lcn/nubia/camera/composition/CompositionView;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/nubia/camera/composition/a;->b:Lcn/nubia/camera/composition/CompositionView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 35
    iget-boolean v0, p0, Lcn/nubia/camera/composition/a;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CompositionController"

    const-string v1, "start"

    .line 38
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcn/nubia/camera/composition/a;->g:Z

    .line 41
    new-instance v0, Lcn/nubia/camera/v/b;

    const v1, 0x3f638e39

    sget-object v2, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    sget-object v3, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/v/b;-><init>(FLcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    iput-object v0, p0, Lcn/nubia/camera/composition/a;->c:Lcn/nubia/camera/v/b;

    .line 42
    new-instance v1, Lcn/nubia/camera/composition/a$b;

    invoke-direct {v1, p0}, Lcn/nubia/camera/composition/a$b;-><init>(Lcn/nubia/camera/composition/a;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/v/b;->a(Lcn/nubia/camera/v/b$c;)V

    .line 43
    iget-object v0, p0, Lcn/nubia/camera/composition/a;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/composition/a;->c:Lcn/nubia/camera/v/b;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 45
    iget-object v0, p0, Lcn/nubia/camera/composition/a;->b:Lcn/nubia/camera/composition/CompositionView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/composition/CompositionView;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcn/nubia/camera/composition/a;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->f()Landroid/graphics/Rect;

    move-result-object v0

    .line 47
    invoke-direct {p0, v0}, Lcn/nubia/camera/composition/a;->a(Landroid/graphics/Rect;)V

    .line 49
    new-instance v0, Lcn/nubia/camera/composition/a$a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/composition/a$a;-><init>(Lcn/nubia/camera/composition/a;)V

    iput-object v0, p0, Lcn/nubia/camera/composition/a;->d:Lcn/nubia/camera/composition/a$a;

    .line 50
    invoke-virtual {v0}, Lcn/nubia/camera/composition/a$a;->a()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lcn/nubia/camera/composition/a;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CompositionController"

    const-string v1, "stop"

    .line 57
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcn/nubia/camera/composition/a;->g:Z

    .line 60
    iget-object v0, p0, Lcn/nubia/camera/composition/a;->c:Lcn/nubia/camera/v/b;

    invoke-virtual {v0}, Lcn/nubia/camera/v/b;->a()V

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/composition/a;->b:Lcn/nubia/camera/composition/CompositionView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/camera/composition/CompositionView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcn/nubia/camera/composition/a;->d:Lcn/nubia/camera/composition/a$a;

    invoke-virtual {v0}, Lcn/nubia/camera/composition/a$a;->b()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 68
    iget-boolean v0, p0, Lcn/nubia/camera/composition/a;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CompositionController"

    const-string v1, "restart"

    .line 71
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcn/nubia/camera/composition/a;->b()V

    :try_start_0
    const-string v1, "wait CompositionThread stop: start"

    .line 74
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcn/nubia/camera/composition/a;->d:Lcn/nubia/camera/composition/a$a;

    invoke-virtual {v1}, Lcn/nubia/camera/composition/a$a;->join()V

    const-string v1, "wait CompositionThread stop: end"

    .line 76
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/camera/composition/a;->a()V

    return-void
.end method
