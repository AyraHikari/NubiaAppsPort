.class public Lcn/nubia/collage/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:I = 0x96

.field private static b:I = 0x96

.field private static c:I = 0x9f

.field private static d:I = 0xd2

.field private static e:I = 0x12c

.field private static f:I = 0x190

.field private static g:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcn/nubia/collage/d;->e:I

    sget v2, Lcn/nubia/collage/d;->f:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcn/nubia/collage/d;->g:Landroid/graphics/Rect;

    return-void
.end method

.method public static a()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcn/nubia/collage/d;->g:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static b()I
    .locals 1

    sget v0, Lcn/nubia/collage/d;->f:I

    return v0
.end method

.method public static c()I
    .locals 1

    sget v0, Lcn/nubia/collage/d;->e:I

    return v0
.end method

.method public static d()I
    .locals 1

    sget v0, Lcn/nubia/collage/d;->b:I

    return v0
.end method

.method public static e()I
    .locals 1

    sget v0, Lcn/nubia/collage/d;->a:I

    return v0
.end method

.method public static f()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "THUMBNAIL_HEIGHT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/nubia/collage/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lyhd"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcn/nubia/collage/d;->d:I

    return v0
.end method

.method public static g()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "THUMBNAIL_WIDTH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcn/nubia/collage/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lyhd"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcn/nubia/collage/d;->c:I

    return v0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f06011c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcn/nubia/collage/d;->a:I

    sput v0, Lcn/nubia/collage/d;->b:I

    const v0, 0x7f06006b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcn/nubia/collage/d;->c:I

    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcn/nubia/collage/d;->d:I

    const v0, 0x7f06004f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcn/nubia/collage/d;->e:I

    const v0, 0x7f06004e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sput p0, Lcn/nubia/collage/d;->f:I

    new-instance p0, Landroid/graphics/Rect;

    sget v0, Lcn/nubia/collage/d;->e:I

    sget v1, Lcn/nubia/collage/d;->f:I

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object p0, Lcn/nubia/collage/d;->g:Landroid/graphics/Rect;

    return-void
.end method
