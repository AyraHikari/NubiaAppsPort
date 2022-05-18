.class Lc/b/a/n/i/m/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/i/m/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/n/i/m/a$a;,
        Lc/b/a/n/i/m/a$b;
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/n/i/m/a$b;

.field private final b:Lc/b/a/n/i/m/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/i/m/e<",
            "Lc/b/a/n/i/m/a$a;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/n/i/m/a$b;

    invoke-direct {v0}, Lc/b/a/n/i/m/a$b;-><init>()V

    iput-object v0, p0, Lc/b/a/n/i/m/a;->a:Lc/b/a/n/i/m/a$b;

    .line 3
    new-instance v0, Lc/b/a/n/i/m/e;

    invoke-direct {v0}, Lc/b/a/n/i/m/e;-><init>()V

    iput-object v0, p0, Lc/b/a/n/i/m/a;->b:Lc/b/a/n/i/m/e;

    return-void
.end method

.method static synthetic g(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lc/b/a/n/i/m/a;->h(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static h(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "], "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static i(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lc/b/a/n/i/m/a;->h(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lc/b/a/t/h;->e(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/m/a;->a:Lc/b/a/n/i/m/a$b;

    invoke-virtual {v0, p1, p2, p3}, Lc/b/a/n/i/m/a$b;->e(IILandroid/graphics/Bitmap$Config;)Lc/b/a/n/i/m/a$a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lc/b/a/n/i/m/a;->b:Lc/b/a/n/i/m/e;

    invoke-virtual {p2, p1}, Lc/b/a/n/i/m/e;->a(Lc/b/a/n/i/m/h;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/m/a;->a:Lc/b/a/n/i/m/a$b;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lc/b/a/n/i/m/a$b;->e(IILandroid/graphics/Bitmap$Config;)Lc/b/a/n/i/m/a$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/b/a/n/i/m/a;->b:Lc/b/a/n/i/m/e;

    invoke-virtual {v1, v0, p1}, Lc/b/a/n/i/m/e;->d(Lc/b/a/n/i/m/h;Ljava/lang/Object;)V

    return-void
.end method

.method public d()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/i/m/a;->b:Lc/b/a/n/i/m/e;

    invoke-virtual {v0}, Lc/b/a/n/i/m/e;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public e(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lc/b/a/n/i/m/a;->h(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lc/b/a/n/i/m/a;->i(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/n/i/m/a;->b:Lc/b/a/n/i/m/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
