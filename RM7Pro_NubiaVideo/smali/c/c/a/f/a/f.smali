.class public Lc/c/a/f/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lc/c/a/e/i;

.field private b:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Lc/c/a/e/i;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/f/a/f;->a:Lc/c/a/e/i;

    .line 3
    iput-object p2, p0, Lc/c/a/f/a/f;->b:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public static a(IIZILc/c/a/b;)Lc/c/a/f/a/f;
    .locals 1

    .line 1
    new-instance p2, Lc/c/a/e/i;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0, p3}, Lc/c/a/e/i;-><init>(IIZI)V

    .line 2
    invoke-virtual {p2}, Lc/c/a/e/a;->k()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    invoke-interface {p4}, Lc/c/a/b;->g()Lc/c/a/e/c;

    move-result-object p0

    invoke-virtual {p2, p0}, Lc/c/a/e/i;->r(Lc/c/a/e/c;)V

    .line 4
    :cond_0
    new-instance p0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p2}, Lc/c/a/e/a;->d()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 5
    new-instance p1, Lc/c/a/f/a/f;

    invoke-direct {p1, p2, p0}, Lc/c/a/f/a/f;-><init>(Lc/c/a/e/i;Landroid/graphics/SurfaceTexture;)V

    return-object p1
.end method


# virtual methods
.method public b()Lc/c/a/e/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/f;->a:Lc/c/a/e/i;

    return-object v0
.end method

.method public c()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/f/a/f;->b:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method
