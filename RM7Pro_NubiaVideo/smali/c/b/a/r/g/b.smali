.class public Lc/b/a/r/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/r/g/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/r/g/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lc/b/a/r/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/r/g/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Lc/b/a/r/g/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/r/g/c<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/r/g/b;->a:Lc/b/a/r/g/c;

    .line 3
    iput p2, p0, Lc/b/a/r/g/b;->b:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lc/b/a/r/g/c$a;)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lc/b/a/r/g/b;->b(Landroid/graphics/drawable/Drawable;Lc/b/a/r/g/c$a;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/graphics/drawable/Drawable;Lc/b/a/r/g/c$a;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc/b/a/r/g/c$a;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lc/b/a/r/g/c$a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v3, v1

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 4
    iget p1, p0, Lc/b/a/r/g/b;->b:I

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 5
    invoke-interface {p2, v2}, Lc/b/a/r/g/c$a;->c(Landroid/graphics/drawable/Drawable;)V

    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lc/b/a/r/g/b;->a:Lc/b/a/r/g/c;

    invoke-interface {v0, p1, p2}, Lc/b/a/r/g/c;->a(Ljava/lang/Object;Lc/b/a/r/g/c$a;)Z

    return v1
.end method
