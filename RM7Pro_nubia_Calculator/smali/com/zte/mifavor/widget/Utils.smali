.class public Lcom/zte/mifavor/widget/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final DEFAULT_COLOR:I = -0xce7422

.field static MY_CHECK_COLOR:Ljava/lang/String; = "mycheckcolor"

.field static MY_RADIO_COLOR:Ljava/lang/String; = "myraidocolor"

.field static MY_SWITCH_COLOR:Ljava/lang/String; = "myswitchcolor"

.field public static final STATUSBAR_LIGHT_THRESHHOLD:I = 0xbe

.field static STORE_COLOR:Ljava/lang/String; = "color_store"

.field static TAG:Ljava/lang/String; = "Utils"

.field public static final Version:Ljava/lang/String; = "4.0.1.0505"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeToastWindowFlag(Landroid/widget/Toast;)V
    .locals 3

    .line 167
    :try_start_0
    const-class v0, Landroid/widget/Toast;

    const-string v1, "mTN"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "android.widget.Toast$TN"

    .line 168
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mParams"

    .line 169
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 172
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 173
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 174
    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x88

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 181
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static constrain(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static dpToPx(Landroid/content/Context;D)I
    .locals 2

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p0

    mul-double/2addr v0, p1

    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    double-to-int p0, v0

    return p0
.end method

.method public static dpToPx(Landroid/content/Context;I)I
    .locals 0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static fillet(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 10

    .line 210
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 211
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 213
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 215
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 216
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 219
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    .line 220
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v6, -0x1000000

    .line 221
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 223
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v0

    int-to-float v8, v1

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 224
    invoke-virtual {v3, v6, p1, p1, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 226
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 228
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v4, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 230
    invoke-virtual {v3, p0, p1, p1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    return-object p0
.end method

.method public static getBrightness(I)I
    .locals 6

    .line 100
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 101
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 102
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-double v2, v0

    const-wide v4, 0x3fd322d0e5604189L    # 0.299

    mul-double/2addr v2, v4

    int-to-double v0, v1

    const-wide v4, 0x3fe2c8b439581062L    # 0.587

    mul-double/2addr v0, v4

    add-double/2addr v2, v0

    int-to-double v0, p0

    const-wide v4, 0x3fbd2f1a9fbe76c9L    # 0.114

    mul-double/2addr v0, v4

    add-double/2addr v2, v0

    .line 104
    sget-object p0, Lcom/zte/mifavor/widget/Utils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBrightness bright:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    double-to-int p0, v2

    return p0
.end method

.method public static getBrightness(Landroid/graphics/Bitmap;)I
    .locals 15

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 137
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move v3, v0

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    move-wide v6, v5

    move v5, v4

    move v4, v0

    :goto_1
    if-ge v4, v2, :cond_1

    add-int/lit8 v5, v5, 0x1

    .line 146
    invoke-virtual {p0, v3, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v8

    .line 147
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v9

    .line 148
    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v10

    .line 149
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    const-wide v11, 0x3fd322d0e5604189L    # 0.299

    int-to-double v13, v9

    mul-double/2addr v13, v11

    add-double/2addr v6, v13

    const-wide v11, 0x3fe2c8b439581062L    # 0.587

    int-to-double v9, v10

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    const-wide v9, 0x3fbd2f1a9fbe76c9L    # 0.114

    int-to-double v11, v8

    mul-double/2addr v11, v9

    add-double/2addr v6, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v5

    move-wide v5, v6

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    return v0

    :cond_3
    int-to-double v0, v4

    div-double/2addr v5, v0

    double-to-int p0, v5

    .line 157
    sget-object v0, Lcom/zte/mifavor/widget/Utils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static getCheckColor(Landroid/content/Context;)I
    .locals 2

    .line 82
    sget-object v0, Lcom/zte/mifavor/widget/Utils;->MY_CHECK_COLOR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 83
    sget-object v0, Lcom/zte/mifavor/widget/Utils;->STORE_COLOR:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getRadioColor(Landroid/content/Context;)I
    .locals 2

    .line 64
    sget-object v0, Lcom/zte/mifavor/widget/Utils;->MY_RADIO_COLOR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 65
    sget-object v0, Lcom/zte/mifavor/widget/Utils;->STORE_COLOR:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getSwitchColor(Landroid/content/Context;)I
    .locals 2

    .line 50
    sget-object v0, Lcom/zte/mifavor/widget/Utils;->MY_SWITCH_COLOR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 51
    sget-object v0, Lcom/zte/mifavor/widget/Utils;->STORE_COLOR:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getVsersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.0.1.0505"

    return-object v0
.end method

.method public static isScreenOriatationPortrait(Landroid/content/Context;)Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    .line 188
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Pictures/"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 193
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 194
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 195
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 196
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 202
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 199
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setSoftKeyColor(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 110
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 111
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result p0

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/zte/extres/R$color;->mfv_common_sk_bg:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    .line 116
    :goto_0
    invoke-static {p0}, Lcom/zte/mifavor/widget/Utils;->getBrightness(I)I

    move-result p0

    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const/16 v0, 0x10

    goto :goto_1

    :cond_1
    const/16 v0, 0x20

    :goto_1
    const/16 v1, 0xbe

    if-lt p0, v1, :cond_2

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/2addr p0, v0

    .line 124
    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2

    .line 128
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    not-int v0, v0

    and-int/2addr p0, v0

    .line 127
    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_2
    return-void
.end method

.method public static storeCheckColor(Landroid/content/Context;I)V
    .locals 2

    .line 88
    sget-object v0, Lcom/zte/mifavor/widget/Utils;->MY_CHECK_COLOR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 89
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 90
    sget-object v0, Lcom/zte/mifavor/widget/Utils;->STORE_COLOR:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 91
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static storeRadioColor(Landroid/content/Context;I)V
    .locals 2

    .line 74
    sget-object v0, Lcom/zte/mifavor/widget/Utils;->MY_RADIO_COLOR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 75
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 76
    sget-object v0, Lcom/zte/mifavor/widget/Utils;->STORE_COLOR:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static storeSwitchColor(Landroid/content/Context;I)V
    .locals 2

    .line 56
    sget-object v0, Lcom/zte/mifavor/widget/Utils;->MY_SWITCH_COLOR:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 57
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 58
    sget-object v0, Lcom/zte/mifavor/widget/Utils;->STORE_COLOR:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
