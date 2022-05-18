.class public Lcom/zte/camera/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field private static final b:Ljava/lang/String; = "e"

.field private static c:I = 0x0

.field private static d:I = 0x0

.field private static e:F = 0.0f

.field private static f:F = 0.0f

.field private static g:I = 0x0

.field private static h:I = 0x0

.field private static i:I = 0x0

.field private static j:I = 0x0

.field private static k:I = 0x0

.field private static l:Z = true

.field private static m:Z = true

.field private static n:I = 0x0

.field private static o:I = 0x0

.field private static p:I = 0x0

.field private static q:I = 0x0

.field private static r:I = 0x0

.field private static s:I = 0x0

.field private static t:I = 0x0

.field private static u:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .line 143
    sget v0, Lcom/zte/camera/d/e;->p:I

    return v0
.end method

.method public static a(F)I
    .locals 1

    .line 322
    sget v0, Lcom/zte/camera/d/e;->e:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .locals 0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 388
    instance-of p2, p0, Landroid/graphics/drawable/Animatable;

    if-eqz p2, :cond_1

    .line 389
    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 390
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 391
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    .line 393
    :cond_1
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static b()I
    .locals 1

    .line 155
    sget v0, Lcom/zte/camera/d/e;->s:I

    return v0
.end method

.method public static c()I
    .locals 2

    .line 160
    sget v0, Lcom/zte/camera/d/e;->d:I

    const/16 v1, 0x924

    if-ne v0, v1, :cond_0

    .line 163
    sget v0, Lcom/zte/camera/d/e;->o:I

    sget v1, Lcom/zte/camera/d/e;->n:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3c

    return v0

    .line 165
    :cond_0
    sget v0, Lcom/zte/camera/d/e;->o:I

    sget v1, Lcom/zte/camera/d/e;->n:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static d()I
    .locals 2

    .line 170
    sget v0, Lcom/zte/camera/d/e;->q:I

    sget v1, Lcom/zte/camera/d/e;->r:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static e()I
    .locals 1

    .line 274
    sget v0, Lcom/zte/camera/d/e;->i:I

    return v0
.end method

.method public static f()I
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    .line 278
    invoke-static {v0}, Lcom/zte/camera/d/e;->a(F)I

    move-result v0

    return v0
.end method
