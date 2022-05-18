.class Lcn/nubia/camera/q/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/an/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/q/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/q/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/q/a;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcn/nubia/camera/q/a$1;->a:Lcn/nubia/camera/q/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/nubia/camera/an/a;IIII)V
    .locals 6

    sub-int/2addr p4, p2

    if-nez p4, :cond_0

    return-void

    :cond_0
    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    .line 159
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->g()D

    move-result-wide v0

    div-double/2addr p4, v0

    double-to-float p2, p4

    .line 160
    iget-object p4, p0, Lcn/nubia/camera/q/a$1;->a:Lcn/nubia/camera/q/a;

    invoke-static {p4}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/q/a;)F

    move-result p4

    sub-float p4, p2, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-double p4, p4

    const-wide v0, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double p4, p4, v0

    if-gez p4, :cond_1

    iget-object p4, p0, Lcn/nubia/camera/q/a$1;->a:Lcn/nubia/camera/q/a;

    invoke-static {p4}, Lcn/nubia/camera/q/a;->b(Lcn/nubia/camera/q/a;)I

    move-result p4

    if-ne p3, p4, :cond_1

    return-void

    .line 163
    :cond_1
    iget-object p3, p0, Lcn/nubia/camera/q/a$1;->a:Lcn/nubia/camera/q/a;

    invoke-static {p3, p2}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/q/a;F)F

    .line 164
    iget-object p2, p0, Lcn/nubia/camera/q/a$1;->a:Lcn/nubia/camera/q/a;

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-static {p2, p3}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/q/a;I)I

    .line 165
    iget-object v0, p0, Lcn/nubia/camera/q/a$1;->a:Lcn/nubia/camera/q/a;

    .line 166
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object p2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object p2

    iget v3, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object p2

    iget v4, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object p2

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    move-object v1, p1

    .line 165
    invoke-virtual/range {v0 .. v5}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/an/a;IIII)V

    return-void
.end method

.method public a(Lcn/nubia/camera/an/a;IIIIIIII)V
    .locals 0

    .line 173
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->g()D

    move-result-wide p4

    const-wide/high16 p8, 0x3ff0000000000000L    # 1.0

    div-double/2addr p8, p4

    double-to-float p2, p8

    .line 174
    iget-object p4, p0, Lcn/nubia/camera/q/a$1;->a:Lcn/nubia/camera/q/a;

    invoke-static {p4}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/q/a;)F

    move-result p4

    sub-float p4, p2, p4

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    float-to-double p4, p4

    const-wide p8, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double p4, p4, p8

    if-gez p4, :cond_0

    if-ne p3, p7, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object p3, p0, Lcn/nubia/camera/q/a$1;->a:Lcn/nubia/camera/q/a;

    invoke-static {p3, p2}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/q/a;F)F

    .line 179
    iget-object p2, p0, Lcn/nubia/camera/q/a$1;->a:Lcn/nubia/camera/q/a;

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    invoke-static {p2, p3}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/q/a;I)I

    .line 181
    iget-object p4, p0, Lcn/nubia/camera/q/a$1;->a:Lcn/nubia/camera/q/a;

    .line 182
    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object p2

    iget p6, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object p2

    iget p7, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object p2

    iget p8, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcn/nubia/camera/an/a;->e()Landroid/graphics/Rect;

    move-result-object p2

    iget p9, p2, Landroid/graphics/Rect;->bottom:I

    move-object p5, p1

    .line 181
    invoke-virtual/range {p4 .. p9}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/an/a;IIII)V

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
