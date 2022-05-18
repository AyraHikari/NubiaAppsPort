.class public abstract Lc/b/a/r/h/k;
.super Lc/b/a/r/h/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/r/h/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Lc/b/a/r/h/a<",
        "TZ;>;"
    }
.end annotation


# static fields
.field private static d:Ljava/lang/Integer;


# instance fields
.field protected final b:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c:Lc/b/a/r/h/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc/b/a/r/h/a;-><init>()V

    const-string v0, "View must not be null!"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lc/b/a/r/h/k;->b:Landroid/view/View;

    .line 4
    new-instance v0, Lc/b/a/r/h/k$a;

    invoke-direct {v0, p1}, Lc/b/a/r/h/k$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc/b/a/r/h/k;->c:Lc/b/a/r/h/k$a;

    return-void
.end method

.method private n()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Lc/b/a/r/h/k;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/r/h/k;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v1, p0, Lc/b/a/r/h/k;->b:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private o(Ljava/lang/Object;)V
    .locals 2

    .line 1
    sget-object v0, Lc/b/a/r/h/k;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/r/h/k;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lc/b/a/r/h/k;->b:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public h()Lc/b/a/r/b;
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/b/a/r/h/k;->n()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lc/b/a/r/b;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lc/b/a/r/b;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not call setTag() on a view Glide is targeting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public j(Lc/b/a/r/h/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/r/h/k;->c:Lc/b/a/r/h/k$a;

    invoke-virtual {v0, p1}, Lc/b/a/r/h/k$a;->d(Lc/b/a/r/h/h;)V

    return-void
.end method

.method public k(Lc/b/a/r/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lc/b/a/r/h/k;->o(Ljava/lang/Object;)V

    return-void
.end method

.method public m()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/r/h/k;->b:Landroid/view/View;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Target for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/b/a/r/h/k;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
