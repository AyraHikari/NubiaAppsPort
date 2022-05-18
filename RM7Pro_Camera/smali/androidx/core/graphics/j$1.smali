.class Landroidx/core/graphics/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/graphics/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/graphics/j;->a([Landroidx/core/c/b$b;I)Landroidx/core/c/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/graphics/j$a<",
        "Landroidx/core/c/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/graphics/j;


# direct methods
.method constructor <init>(Landroidx/core/graphics/j;)V
    .locals 0

    .line 99
    iput-object p1, p0, Landroidx/core/graphics/j$1;->a:Landroidx/core/graphics/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/c/b$b;)I
    .locals 0

    .line 102
    invoke-virtual {p1}, Landroidx/core/c/b$b;->c()I

    move-result p1

    return p1
.end method

.method public synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 99
    check-cast p1, Landroidx/core/c/b$b;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/j$1;->b(Landroidx/core/c/b$b;)Z

    move-result p1

    return p1
.end method

.method public synthetic b(Ljava/lang/Object;)I
    .locals 0

    .line 99
    check-cast p1, Landroidx/core/c/b$b;

    invoke-virtual {p0, p1}, Landroidx/core/graphics/j$1;->a(Landroidx/core/c/b$b;)I

    move-result p1

    return p1
.end method

.method public b(Landroidx/core/c/b$b;)Z
    .locals 0

    .line 107
    invoke-virtual {p1}, Landroidx/core/c/b$b;->d()Z

    move-result p1

    return p1
.end method
