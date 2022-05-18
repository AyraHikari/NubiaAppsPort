.class public Lnubia/util/BitmapGrayUtil;
.super Ljava/lang/Object;
.source "BitmapGrayUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DeskClock:[BitmapGrayUtil]"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "nubia_runtime"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getBitmapGray(Landroid/graphics/Bitmap;)I
.end method

.method public static getGray(Landroid/graphics/Bitmap;I)I
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "scale"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 19
    const/4 v1, 0x0

    .line 20
    .local v1, "gray":I
    const/4 v0, 0x0

    .line 22
    .local v0, "bitmapSub":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-ne v6, v5, :cond_1

    .line 23
    :cond_0
    const-string v5, "DeskClock:[BitmapGrayUtil]"

    const-string v6, "BitmapGrayUtil error ((null == bitmap) || (true == bitmap.isRecycled()))"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    return v4

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v3, v5, p1

    .line 29
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int v2, v5, p1

    .line 31
    .local v2, "height":I
    if-le v3, v6, :cond_2

    if-gt v2, v6, :cond_3

    .line 32
    :cond_2
    const-string v5, "DeskClock:[BitmapGrayUtil]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BitmapGrayUtil error width = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", height = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :cond_3
    invoke-static {p0, v3, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 38
    invoke-static {v0}, Lnubia/util/BitmapGrayUtil;->getBitmapGray(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 39
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move v4, v1

    .line 40
    goto :goto_0
.end method
