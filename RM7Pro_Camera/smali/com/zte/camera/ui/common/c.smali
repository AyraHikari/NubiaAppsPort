.class public Lcom/zte/camera/ui/common/c;
.super Lcom/zte/camera/ui/common/RotateImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/ui/common/c$b;,
        Lcom/zte/camera/ui/common/c$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "c"


# instance fields
.field a:Lcom/zte/camera/ui/common/c$b;

.field private c:I

.field private d:Lcom/zte/camera/ui/common/c$a;

.field private e:Z

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/zte/camera/ui/common/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance p1, Lcom/zte/camera/ui/common/c$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/zte/camera/ui/common/c$a;-><init>(Lcom/zte/camera/ui/common/c;Lcom/zte/camera/ui/common/c$1;)V

    iput-object p1, p0, Lcom/zte/camera/ui/common/c;->d:Lcom/zte/camera/ui/common/c$a;

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lcom/zte/camera/ui/common/c;->f:Z

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/zte/camera/ui/common/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Z)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/zte/camera/ui/common/c;->a:Lcom/zte/camera/ui/common/c$b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/camera/ui/common/c;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/zte/camera/ui/common/c;->a:Lcom/zte/camera/ui/common/c$b;

    invoke-virtual {p0}, Lcom/zte/camera/ui/common/c;->getId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/zte/camera/ui/common/c$b;->a(ZI)V

    :cond_0
    return-void
.end method

.method private synthetic b(Z)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/c;->a(Z)V

    return-void
.end method

.method public static synthetic lambda$FtcmJ74-WcFB-9ONulYXt5Ohf6s(Lcom/zte/camera/ui/common/c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/ui/common/c;->b(Z)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 8

    .line 36
    invoke-super {p0, p1, p2}, Lcom/zte/camera/ui/common/RotateImageView;->a(IZ)V

    if-nez p2, :cond_0

    .line 38
    iput p1, p0, Lcom/zte/camera/ui/common/c;->c:I

    .line 40
    :cond_0
    iget p2, p0, Lcom/zte/camera/ui/common/c;->c:I

    sub-int v0, p1, p2

    .line 42
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x10e

    const-wide/16 v2, 0x190

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "rotation"

    if-ge v0, v1, :cond_1

    new-array v0, v6, [F

    rsub-int p2, p2, 0x168

    int-to-float p2, p2

    aput p2, v0, v5

    rsub-int p2, p1, 0x168

    int-to-float p2, p2

    aput p2, v0, v4

    .line 43
    invoke-static {p0, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    new-array v0, v6, [F

    rsub-int p2, p2, 0x168

    .line 45
    rem-int/lit16 p2, p2, 0x168

    int-to-float p2, p2

    aput p2, v0, v5

    rsub-int p2, p1, 0x168

    rem-int/lit16 p2, p2, 0x168

    int-to-float p2, p2

    aput p2, v0, v4

    invoke-static {p0, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    .line 47
    :goto_0
    iput p1, p0, Lcom/zte/camera/ui/common/c;->c:I

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/zte/camera/ui/common/RotateImageView;->drawableStateChanged()V

    .line 85
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/c;->isPressed()Z

    move-result v0

    .line 86
    iget-boolean v1, p0, Lcom/zte/camera/ui/common/c;->e:Z

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    .line 109
    new-instance v1, Lcom/zte/camera/ui/common/-$$Lambda$c$FtcmJ74-WcFB-9ONulYXt5Ohf6s;

    invoke-direct {v1, p0, v0}, Lcom/zte/camera/ui/common/-$$Lambda$c$FtcmJ74-WcFB-9ONulYXt5Ohf6s;-><init>(Lcom/zte/camera/ui/common/c;Z)V

    invoke-virtual {p0, v1}, Lcom/zte/camera/ui/common/c;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0, v0}, Lcom/zte/camera/ui/common/c;->a(Z)V

    .line 113
    :goto_0
    iput-boolean v0, p0, Lcom/zte/camera/ui/common/c;->e:Z

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/c;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public performClick()Z
    .locals 3

    .line 128
    invoke-virtual {p0}, Lcom/zte/camera/ui/common/c;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Lcom/zte/camera/ui/common/c;->b:Ljava/lang/String;

    const-string v1, "can not click, performClick"

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 132
    :cond_0
    sget-object v0, Lcom/zte/camera/ui/common/c;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performClick, mListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/camera/ui/common/c;->a:Lcom/zte/camera/ui/common/c$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-super {p0}, Lcom/zte/camera/ui/common/RotateImageView;->performClick()Z

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/zte/camera/ui/common/c;->a:Lcom/zte/camera/ui/common/c$b;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/zte/camera/ui/common/c;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/zte/camera/ui/common/c;->a:Lcom/zte/camera/ui/common/c$b;

    invoke-virtual {p0}, Lcom/zte/camera/ui/common/c;->getId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/zte/camera/ui/common/c$b;->a(I)V

    :cond_1
    return v0
.end method

.method public setAnim(Z)V
    .locals 0

    return-void
.end method
