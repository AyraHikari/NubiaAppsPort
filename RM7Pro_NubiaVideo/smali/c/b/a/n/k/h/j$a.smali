.class Lc/b/a/n/k/h/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/k/h/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/l/a$a;)Lc/b/a/l/a;
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/l/a;

    invoke-direct {v0, p1}, Lc/b/a/l/a;-><init>(Lc/b/a/l/a$a;)V

    return-object v0
.end method

.method public b()Lc/b/a/m/a;
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/m/a;

    invoke-direct {v0}, Lc/b/a/m/a;-><init>()V

    return-object v0
.end method

.method public c(Landroid/graphics/Bitmap;Lc/b/a/n/i/m/c;)Lc/b/a/n/i/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lc/b/a/n/i/m/c;",
            ")",
            "Lc/b/a/n/i/k<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/n/k/e/c;

    invoke-direct {v0, p1, p2}, Lc/b/a/n/k/e/c;-><init>(Landroid/graphics/Bitmap;Lc/b/a/n/i/m/c;)V

    return-object v0
.end method

.method public d()Lc/b/a/l/d;
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/l/d;

    invoke-direct {v0}, Lc/b/a/l/d;-><init>()V

    return-object v0
.end method
