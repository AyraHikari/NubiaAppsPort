.class public Lcn/nubia/collage/o/a/l;
.super Lcn/nubia/collage/o/a/d;
.source ""


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/text/Layout$Alignment;

.field private k:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcn/nubia/collage/o/a/c;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcn/nubia/collage/o/a/d;-><init>(Lcn/nubia/collage/o/a/c;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/nubia/collage/o/a/l;->c:Ljava/lang/String;

    iput-object p1, p0, Lcn/nubia/collage/o/a/l;->d:Ljava/lang/String;

    const/4 p2, 0x0

    iput p2, p0, Lcn/nubia/collage/o/a/l;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/collage/o/a/l;->f:F

    iput p2, p0, Lcn/nubia/collage/o/a/l;->h:I

    iput p2, p0, Lcn/nubia/collage/o/a/l;->i:I

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object p2, p0, Lcn/nubia/collage/o/a/l;->j:Landroid/text/Layout$Alignment;

    iput-object p1, p0, Lcn/nubia/collage/o/a/l;->k:Landroid/graphics/Typeface;

    iput-object p4, p0, Lcn/nubia/collage/o/a/l;->c:Ljava/lang/String;

    iput-object p5, p0, Lcn/nubia/collage/o/a/l;->d:Ljava/lang/String;

    int-to-float p1, p6

    iput p1, p0, Lcn/nubia/collage/o/a/l;->f:F

    iput p3, p0, Lcn/nubia/collage/o/a/l;->e:I

    iput p7, p0, Lcn/nubia/collage/o/a/l;->g:I

    invoke-direct {p0, p8}, Lcn/nubia/collage/o/a/l;->m(Ljava/lang/String;)V

    invoke-static {}, Lcn/nubia/collage/o/a/k;->b()Lcn/nubia/collage/o/a/k;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/collage/o/a/l;->d:Ljava/lang/String;

    iget p3, p0, Lcn/nubia/collage/o/a/l;->i:I

    invoke-virtual {p1, p2, p3}, Lcn/nubia/collage/o/a/k;->c(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/collage/o/a/l;->k:Landroid/graphics/Typeface;

    return-void
.end method

.method private m(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_4
    :goto_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_1
    iput-object v2, p0, Lcn/nubia/collage/o/a/l;->j:Landroid/text/Layout$Alignment;

    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_8

    if-eq v2, v4, :cond_7

    if-eq v2, v3, :cond_6

    if-eq v2, v1, :cond_5

    goto :goto_2

    :cond_5
    iput v1, p0, Lcn/nubia/collage/o/a/l;->i:I

    goto :goto_3

    :cond_6
    iput v3, p0, Lcn/nubia/collage/o/a/l;->i:I

    goto :goto_3

    :cond_7
    iput v4, p0, Lcn/nubia/collage/o/a/l;->i:I

    goto :goto_3

    :cond_8
    :goto_2
    iput v0, p0, Lcn/nubia/collage/o/a/l;->i:I

    :goto_3
    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcn/nubia/collage/o/a/l;->h:I

    return-void
.end method


# virtual methods
.method public f()Landroid/text/Layout$Alignment;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/l;->j:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/a/l;->h:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/a/l;->g:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/a/l;->f:F

    float-to-int v0, v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/a/l;->e:I

    return v0
.end method

.method public l()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/o/a/l;->k:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public n(F)V
    .locals 1

    iget v0, p0, Lcn/nubia/collage/o/a/l;->f:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/collage/o/a/l;->f:F

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/nubia/collage/o/a/l;->c:Ljava/lang/String;

    return-void
.end method
