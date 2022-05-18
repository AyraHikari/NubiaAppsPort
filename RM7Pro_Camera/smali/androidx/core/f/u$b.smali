.class abstract Landroidx/core/f/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/f/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:I


# direct methods
.method constructor <init>(ILjava/lang/Class;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4085
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/core/f/u$b;-><init>(ILjava/lang/Class;II)V

    return-void
.end method

.method constructor <init>(ILjava/lang/Class;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;II)V"
        }
    .end annotation

    .line 4090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4091
    iput p1, p0, Landroidx/core/f/u$b;->a:I

    .line 4092
    iput-object p2, p0, Landroidx/core/f/u$b;->b:Ljava/lang/Class;

    .line 4093
    iput p4, p0, Landroidx/core/f/u$b;->c:I

    return-void
.end method

.method private a()Z
    .locals 2

    .line 4123
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v1, p0, Landroidx/core/f/u$b;->c:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b()Z
    .locals 2

    .line 4127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method abstract b(Landroid/view/View;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation
.end method

.method c(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .line 4112
    invoke-direct {p0}, Landroidx/core/f/u$b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4113
    invoke-virtual {p0, p1}, Landroidx/core/f/u$b;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4114
    :cond_0
    invoke-direct {p0}, Landroidx/core/f/u$b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4115
    iget v0, p0, Landroidx/core/f/u$b;->a:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 4116
    iget-object v0, p0, Landroidx/core/f/u$b;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
