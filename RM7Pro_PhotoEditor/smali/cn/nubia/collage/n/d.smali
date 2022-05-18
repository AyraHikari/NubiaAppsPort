.class public Lcn/nubia/collage/n/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/n/d$b;
    }
.end annotation


# static fields
.field private static volatile h:Lcn/nubia/collage/n/d;


# instance fields
.field public final a:I

.field private b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/nubia/collage/n/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private e:[I

.field private f:[Ljava/lang/String;

.field private g:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jni_filtershow_filters2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/collage/n/d;->c:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/collage/n/d;->d:Ljava/util/Map;

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcn/nubia/collage/n/d;->e:[I

    const-string v2, "filterIcons/ffx_original.webp"

    const-string v3, "filterIcons/ffx_punch.webp"

    const-string v4, "filterIcons/effects_pretty_beautiful.webp"

    const-string v5, "filterIcons/effects_pretty_pink.webp"

    const-string v6, "filterIcons/effects_pretty_sweet.webp"

    const-string v7, "filterIcons/ffx_washout_color.webp"

    const-string v8, "filterIcons/ffx_vintage.webp"

    const-string v9, "filterIcons/effects_lomo.webp"

    const-string v10, "filterIcons/effects_pretty_japan.webp"

    const-string v11, "filterIcons/effects_gray_scale.webp"

    const-string v12, "filterIcons/effects_prague_three.webp"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/collage/n/d;->f:[Ljava/lang/String;

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcn/nubia/collage/n/d;->g:[I

    array-length v0, v1

    iput v0, p0, Lcn/nubia/collage/n/d;->a:I

    invoke-static {}, Lcn/nubia/collage/d;->e()I

    invoke-static {}, Lcn/nubia/collage/d;->d()I

    invoke-direct {p0}, Lcn/nubia/collage/n/d;->c()V

    return-void

    :array_0
    .array-data 4
        0x7f0e00c7
        0x7f0e00c8
        0x7f0e00af
        0x7f0e00b4
        0x7f0e00b5
        0x7f0e00cb
        0x7f0e00c9
        0x7f0e00a3
        0x7f0e00b1
        0x7f0e00a2
        0x7f0e00ae
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x7f070112
        0x7f070110
        0x7f07000a
        0x0
        0x7f070115
        0x7f07010d
        0x7f070110
        0x7f07000b
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lcn/nubia/collage/n/d;)[I
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/n/d;->g:[I

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/collage/n/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/n/d;->d:Ljava/util/Map;

    return-object p0
.end method

.method private c()V
    .locals 3

    iget v0, p0, Lcn/nubia/collage/n/d;->a:I

    new-array v0, v0, [Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    iput-object v0, p0, Lcn/nubia/collage/n/d;->b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    new-instance v1, Lcn/nubia/collage/n/d$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/collage/n/d$b;-><init>(Lcn/nubia/collage/n/d;Lcn/nubia/collage/n/d$a;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcn/nubia/collage/n/d;->b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcn/nubia/collage/n/d;->b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterPrettyBeautiful;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterPrettyBeautiful;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Lcn/nubia/collage/n/d;->b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterPrettyPink;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterPrettyPink;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v0, p0, Lcn/nubia/collage/n/d;->b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterPrettySweet;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterPrettySweet;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v0, p0, Lcn/nubia/collage/n/d;->b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v0, p0, Lcn/nubia/collage/n/d;->b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v0, p0, Lcn/nubia/collage/n/d;->b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterLomo;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterLomo;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v0, p0, Lcn/nubia/collage/n/d;->b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterPrettyJapan;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterPrettyJapan;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v0, p0, Lcn/nubia/collage/n/d;->b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterGrayScale;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterGrayScale;-><init>()V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v0, p0, Lcn/nubia/collage/n/d;->b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterPrague;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/filters/ImageFilterPrague;-><init>()V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-void
.end method

.method static g()Lcn/nubia/collage/n/d;
    .locals 2

    sget-object v0, Lcn/nubia/collage/n/d;->h:Lcn/nubia/collage/n/d;

    if-nez v0, :cond_1

    const-class v0, Landroid/view/LayoutInflater$Filter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/nubia/collage/n/d;->h:Lcn/nubia/collage/n/d;

    if-nez v1, :cond_0

    new-instance v1, Lcn/nubia/collage/n/d;

    invoke-direct {v1}, Lcn/nubia/collage/n/d;-><init>()V

    sput-object v1, Lcn/nubia/collage/n/d;->h:Lcn/nubia/collage/n/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/collage/n/d;->h:Lcn/nubia/collage/n/d;

    return-object v0
.end method


# virtual methods
.method d(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3

    iget v0, p0, Lcn/nubia/collage/n/d;->a:I

    if-ge p2, v0, :cond_1

    if-ltz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/n/d;->b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcn/nubia/collage/n/d;->d:Ljava/util/Map;

    iget-object v2, p0, Lcn/nubia/collage/n/d;->g:[I

    aget p2, v2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->collageApply(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method e()V
    .locals 1

    invoke-virtual {p0}, Lcn/nubia/collage/n/d;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/collage/n/d;->b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    iput-object v0, p0, Lcn/nubia/collage/n/d;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/collage/n/d;->d:Ljava/util/Map;

    sput-object v0, Lcn/nubia/collage/n/d;->h:Lcn/nubia/collage/n/d;

    return-void
.end method

.method f()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/nubia/collage/n/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/nubia/collage/n/d;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/collage/n/d;->c:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcn/nubia/collage/n/d;->a:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcn/nubia/collage/n/d;->c:Ljava/util/List;

    new-instance v2, Lcn/nubia/collage/n/c;

    iget-object v3, p0, Lcn/nubia/collage/n/d;->f:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcn/nubia/collage/n/d;->e:[I

    aget v4, v4, v0

    invoke-direct {v2, v3, v4}, Lcn/nubia/collage/n/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/nubia/collage/n/d;->c:Ljava/util/List;

    return-object v0
.end method

.method h(Landroid/content/res/Resources;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/collage/n/d$a;

    invoke-direct {v1, p0, p1}, Lcn/nubia/collage/n/d$a;-><init>(Lcn/nubia/collage/n/d;Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method i()V
    .locals 5

    iget-object v0, p0, Lcn/nubia/collage/n/d;->b:[Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->freeResources()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/collage/n/d;->g:[I

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcn/nubia/collage/n/d;->d:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/nubia/collage/n/d;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
