.class Lc/b/a/n/i/m/i$c;
.super Lc/b/a/n/i/m/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/i/m/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/b/a/n/i/m/b<",
        "Lc/b/a/n/i/m/i$b;",
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
    invoke-virtual {p0}, Lc/b/a/n/i/m/i$c;->d()Lc/b/a/n/i/m/i$b;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lc/b/a/n/i/m/i$b;
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/n/i/m/i$b;

    invoke-direct {v0, p0}, Lc/b/a/n/i/m/i$b;-><init>(Lc/b/a/n/i/m/i$c;)V

    return-object v0
.end method

.method public e(ILandroid/graphics/Bitmap$Config;)Lc/b/a/n/i/m/i$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/n/i/m/b;->b()Lc/b/a/n/i/m/h;

    move-result-object v0

    check-cast v0, Lc/b/a/n/i/m/i$b;

    .line 2
    invoke-virtual {v0, p1, p2}, Lc/b/a/n/i/m/i$b;->c(ILandroid/graphics/Bitmap$Config;)V

    return-object v0
.end method
