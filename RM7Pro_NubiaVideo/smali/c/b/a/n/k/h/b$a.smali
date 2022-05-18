.class Lc/b/a/n/k/h/b$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/k/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lc/b/a/l/c;

.field b:[B

.field c:Landroid/content/Context;

.field d:Lc/b/a/n/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:Lc/b/a/l/a$a;

.field h:Lc/b/a/n/i/m/c;

.field i:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lc/b/a/l/c;[BLandroid/content/Context;Lc/b/a/n/g;IILc/b/a/l/a$a;Lc/b/a/n/i/m/c;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/l/c;",
            "[B",
            "Landroid/content/Context;",
            "Lc/b/a/n/g<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Lc/b/a/l/a$a;",
            "Lc/b/a/n/i/m/c;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const-string v0, "The first frame of the GIF must not be null"

    .line 2
    invoke-static {p9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lc/b/a/n/k/h/b$a;->a:Lc/b/a/l/c;

    .line 4
    iput-object p2, p0, Lc/b/a/n/k/h/b$a;->b:[B

    .line 5
    iput-object p8, p0, Lc/b/a/n/k/h/b$a;->h:Lc/b/a/n/i/m/c;

    .line 6
    iput-object p9, p0, Lc/b/a/n/k/h/b$a;->i:Landroid/graphics/Bitmap;

    .line 7
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/n/k/h/b$a;->c:Landroid/content/Context;

    .line 8
    iput-object p4, p0, Lc/b/a/n/k/h/b$a;->d:Lc/b/a/n/g;

    .line 9
    iput p5, p0, Lc/b/a/n/k/h/b$a;->e:I

    .line 10
    iput p6, p0, Lc/b/a/n/k/h/b$a;->f:I

    .line 11
    iput-object p7, p0, Lc/b/a/n/k/h/b$a;->g:Lc/b/a/l/a$a;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    new-instance v0, Lc/b/a/n/k/h/b;

    invoke-direct {v0, p0}, Lc/b/a/n/k/h/b;-><init>(Lc/b/a/n/k/h/b$a;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/b/a/n/k/h/b$a;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
