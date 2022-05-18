.class Landroidx/appcompat/app/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/f/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/f;->y()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/f;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/f;)V
    .locals 0

    .line 938
    iput-object p1, p0, Landroidx/appcompat/app/f$3;->a:Landroidx/appcompat/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/f/ac;)Landroidx/core/f/ac;
    .locals 4

    .line 942
    invoke-virtual {p2}, Landroidx/core/f/ac;->b()I

    move-result v0

    .line 943
    iget-object v1, p0, Landroidx/appcompat/app/f$3;->a:Landroidx/appcompat/app/f;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroidx/appcompat/app/f;->a(Landroidx/core/f/ac;Landroid/graphics/Rect;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 947
    invoke-virtual {p2}, Landroidx/core/f/ac;->a()I

    move-result v0

    .line 949
    invoke-virtual {p2}, Landroidx/core/f/ac;->c()I

    move-result v2

    .line 950
    invoke-virtual {p2}, Landroidx/core/f/ac;->d()I

    move-result v3

    .line 946
    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/core/f/ac;->a(IIII)Landroidx/core/f/ac;

    move-result-object p2

    .line 954
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/f/u;->a(Landroid/view/View;Landroidx/core/f/ac;)Landroidx/core/f/ac;

    move-result-object p1

    return-object p1
.end method
