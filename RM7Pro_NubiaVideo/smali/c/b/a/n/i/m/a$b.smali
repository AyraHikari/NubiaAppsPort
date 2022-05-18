.class Lc/b/a/n/i/m/a$b;
.super Lc/b/a/n/i/m/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/i/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/n/i/m/b<",
        "Lc/b/a/n/i/m/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/b/a/n/i/m/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Lc/b/a/n/i/m/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/n/i/m/a$b;->d()Lc/b/a/n/i/m/a$a;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lc/b/a/n/i/m/a$a;
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/n/i/m/a$a;

    invoke-direct {v0, p0}, Lc/b/a/n/i/m/a$a;-><init>(Lc/b/a/n/i/m/a$b;)V

    return-object v0
.end method

.method public e(IILandroid/graphics/Bitmap$Config;)Lc/b/a/n/i/m/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/n/i/m/b;->b()Lc/b/a/n/i/m/h;

    move-result-object v0

    check-cast v0, Lc/b/a/n/i/m/a$a;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lc/b/a/n/i/m/a$a;->b(IILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
