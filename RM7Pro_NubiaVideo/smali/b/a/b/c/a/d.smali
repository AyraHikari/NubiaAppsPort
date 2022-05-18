.class public Lb/a/b/c/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:[Landroid/graphics/Point;

.field private static d:Lb/a/b/c/a/d;


# instance fields
.field private a:[Lb/a/b/c/a/j;

.field private b:Lb/a/b/c/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/a/b/c/a/g<",
            "Lb/a/b/c/a/j$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Point;

    .line 1
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x1

    aput-object v2, v1, v0

    new-instance v0, Landroid/graphics/Point;

    const/16 v2, 0x10

    const/16 v4, 0x9

    invoke-direct {v0, v2, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, v1, v3

    sput-object v1, Lb/a/b/c/a/d;->c:[Landroid/graphics/Point;

    .line 2
    new-instance v0, Lb/a/b/c/a/d;

    const/high16 v1, 0x1400000

    invoke-direct {v0, v1}, Lb/a/b/c/a/d;-><init>(I)V

    sput-object v0, Lb/a/b/c/a/d;->d:Lb/a/b/c/a/d;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/a/b/c/a/i;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lb/a/b/c/a/i;-><init>(I)V

    iput-object v0, p0, Lb/a/b/c/a/d;->b:Lb/a/b/c/a/g;

    const/4 v1, 0x3

    new-array v2, v1, [Lb/a/b/c/a/j;

    .line 3
    iput-object v2, p0, Lb/a/b/c/a/d;->a:[Lb/a/b/c/a/j;

    .line 4
    new-instance v3, Lb/a/b/c/a/j;

    div-int/2addr p1, v1

    invoke-direct {v3, p1, v0}, Lb/a/b/c/a/j;-><init>(ILb/a/b/c/a/g;)V

    const/4 v0, 0x0

    aput-object v3, v2, v0

    .line 5
    iget-object v0, p0, Lb/a/b/c/a/d;->a:[Lb/a/b/c/a/j;

    new-instance v1, Lb/a/b/c/a/j;

    iget-object v2, p0, Lb/a/b/c/a/d;->b:Lb/a/b/c/a/g;

    invoke-direct {v1, p1, v2}, Lb/a/b/c/a/j;-><init>(ILb/a/b/c/a/g;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 6
    iget-object v0, p0, Lb/a/b/c/a/d;->a:[Lb/a/b/c/a/j;

    new-instance v1, Lb/a/b/c/a/j;

    iget-object v2, p0, Lb/a/b/c/a/d;->b:Lb/a/b/c/a/g;

    invoke-direct {v1, p1, v2}, Lb/a/b/c/a/j;-><init>(ILb/a/b/c/a/g;)V

    const/4 p1, 0x2

    aput-object v1, v0, p1

    return-void
.end method

.method public static c()Lb/a/b/c/a/d;
    .locals 1

    .line 1
    sget-object v0, Lb/a/b/c/a/d;->d:Lb/a/b/c/a/d;

    return-object v0
.end method

.method private d(II)Lb/a/b/c/a/j;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb/a/b/c/a/d;->e(II)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object p2, p0, Lb/a/b/c/a/d;->a:[Lb/a/b/c/a/j;

    aget-object p1, p2, p1

    return-object p1
.end method

.method private e(II)I
    .locals 6

    if-lez p1, :cond_5

    if-gtz p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    return v0

    :cond_1
    if-le p1, p2, :cond_2

    move v5, p2

    move p2, p1

    move p1, v5

    .line 1
    :cond_2
    sget-object v1, Lb/a/b/c/a/d;->c:[Landroid/graphics/Point;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 2
    iget v4, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, p1

    iget v3, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, p2

    if-ne v4, v3, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x2

    return p1

    :cond_5
    :goto_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb/a/b/c/a/d;->a:[Lb/a/b/c/a/j;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lb/a/b/c/a/j;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(II)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lb/a/b/c/a/d;->d(II)Lb/a/b/c/a/j;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2}, Lb/a/b/c/a/j;->c(II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lb/a/b/c/a/d;->d(II)Lb/a/b/c/a/j;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return v0

    .line 4
    :cond_1
    invoke-virtual {v1, p1}, Lb/a/b/c/a/j;->d(Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method
