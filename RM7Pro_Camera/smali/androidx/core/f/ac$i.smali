.class Landroidx/core/f/ac$i;
.super Landroidx/core/f/ac$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/f/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private c:Landroidx/core/graphics/b;

.field private d:Landroidx/core/graphics/b;

.field private e:Landroidx/core/graphics/b;


# direct methods
.method constructor <init>(Landroidx/core/f/ac;Landroid/view/WindowInsets;)V
    .locals 0

    .line 794
    invoke-direct {p0, p1, p2}, Landroidx/core/f/ac$h;-><init>(Landroidx/core/f/ac;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 789
    iput-object p1, p0, Landroidx/core/f/ac$i;->c:Landroidx/core/graphics/b;

    .line 790
    iput-object p1, p0, Landroidx/core/f/ac$i;->d:Landroidx/core/graphics/b;

    .line 791
    iput-object p1, p0, Landroidx/core/f/ac$i;->e:Landroidx/core/graphics/b;

    return-void
.end method

.method constructor <init>(Landroidx/core/f/ac;Landroidx/core/f/ac$i;)V
    .locals 0

    .line 798
    invoke-direct {p0, p1, p2}, Landroidx/core/f/ac$h;-><init>(Landroidx/core/f/ac;Landroidx/core/f/ac$h;)V

    const/4 p1, 0x0

    .line 789
    iput-object p1, p0, Landroidx/core/f/ac$i;->c:Landroidx/core/graphics/b;

    .line 790
    iput-object p1, p0, Landroidx/core/f/ac$i;->d:Landroidx/core/graphics/b;

    .line 791
    iput-object p1, p0, Landroidx/core/f/ac$i;->e:Landroidx/core/graphics/b;

    return-void
.end method


# virtual methods
.method a(IIII)Landroidx/core/f/ac;
    .locals 1

    .line 832
    iget-object v0, p0, Landroidx/core/f/ac$i;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/f/ac;->a(Landroid/view/WindowInsets;)Landroidx/core/f/ac;

    move-result-object p1

    return-object p1
.end method
