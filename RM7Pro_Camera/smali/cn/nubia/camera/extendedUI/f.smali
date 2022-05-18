.class public Lcn/nubia/camera/extendedUI/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/aj/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/extendedUI/f$b;,
        Lcn/nubia/camera/extendedUI/f$a;
    }
.end annotation


# instance fields
.field private a:Lcn/nubia/camera/ad/a;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private e:Lcn/nubia/camera/extendedUI/f$b;

.field private f:Z

.field private g:Lcn/nubia/camera/extendedUI/f$a;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Landroid/view/View;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcn/nubia/camera/extendedUI/f;->f:Z

    .line 33
    new-instance v0, Lcn/nubia/camera/extendedUI/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/camera/extendedUI/f$a;-><init>(Lcn/nubia/camera/extendedUI/f;Lcn/nubia/camera/extendedUI/f$1;)V

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/f;->g:Lcn/nubia/camera/extendedUI/f$a;

    .line 38
    iput-object p1, p0, Lcn/nubia/camera/extendedUI/f;->a:Lcn/nubia/camera/ad/a;

    .line 39
    invoke-direct {p0, p2}, Lcn/nubia/camera/extendedUI/f;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/extendedUI/f;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/f;->d:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09006c

    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/f;->b:Landroid/widget/ImageView;

    const v0, 0x7f0902f7

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/f;->c:Landroid/widget/RelativeLayout;

    const v0, 0x7f0902f8

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/f;->d:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const v0, 0x7f090079

    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private b(J)V
    .locals 2

    .line 85
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/f;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->d:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->d:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 92
    new-instance v0, Lcn/nubia/camera/extendedUI/f$b;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/camera/extendedUI/f$b;-><init>(Lcn/nubia/camera/extendedUI/f;J)V

    iput-object v0, p0, Lcn/nubia/camera/extendedUI/f;->e:Lcn/nubia/camera/extendedUI/f$b;

    .line 93
    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/f$b;->start()V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/extendedUI/f;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/f;->g()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/extendedUI/f;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcn/nubia/camera/extendedUI/f;->f:Z

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/extendedUI/f;)Lcn/nubia/camera/extendedUI/f$a;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/nubia/camera/extendedUI/f;->g:Lcn/nubia/camera/extendedUI/f$a;

    return-object p0
.end method

.method private f()V
    .locals 2

    .line 97
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/f;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->g:Lcn/nubia/camera/extendedUI/f$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/f$a;->removeMessages(I)V

    .line 101
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->d:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->d:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    return-void
.end method

.method private g()V
    .locals 2

    .line 108
    iget-boolean v0, p0, Lcn/nubia/camera/extendedUI/f;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/f;->h()V

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->b:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->d:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->d:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    return-void
.end method

.method private h()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->e:Lcn/nubia/camera/extendedUI/f$b;

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/f$b;->a()V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->e:Lcn/nubia/camera/extendedUI/f$b;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/f$b;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InterruptedException when mProgressThread.join() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlowShutterProgressBar"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->g:Lcn/nubia/camera/extendedUI/f$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/f$a;->removeMessages(I)V

    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcn/nubia/camera/extendedUI/f;->e:Lcn/nubia/camera/extendedUI/f$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_0

    .line 53
    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/f;->f()V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/j/a;->b(I)V

    .line 46
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/extendedUI/f;->b(J)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->a:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_0

    .line 60
    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/f;->g()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcn/nubia/camera/extendedUI/f;->f:Z

    .line 66
    invoke-direct {p0}, Lcn/nubia/camera/extendedUI/f;->g()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcn/nubia/camera/extendedUI/f;->f:Z

    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 74
    iget-object v0, p0, Lcn/nubia/camera/extendedUI/f;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method
