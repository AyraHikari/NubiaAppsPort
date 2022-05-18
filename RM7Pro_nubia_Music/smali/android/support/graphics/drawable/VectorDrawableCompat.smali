.class public Landroid/support/graphics/drawable/VectorDrawableCompat;
.super Landroid/support/graphics/drawable/g;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/VectorDrawableCompat$b;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$a;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$d;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$c;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$e;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$f;,
        Landroid/support/graphics/drawable/VectorDrawableCompat$g;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

.field private d:Landroid/graphics/PorterDuffColorFilter;

.field private e:Landroid/graphics/ColorFilter;

.field private f:Z

.field private g:Z

.field private h:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final i:[F

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->a:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 238
    invoke-direct {p0}, Landroid/support/graphics/drawable/g;-><init>()V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->g:Z

    .line 234
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->i:[F

    .line 235
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->j:Landroid/graphics/Matrix;

    .line 236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->k:Landroid/graphics/Rect;

    .line 239
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    .line 240
    return-void
.end method

.method constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$f;)V
    .locals 3

    .prologue
    .line 242
    invoke-direct {p0}, Landroid/support/graphics/drawable/g;-><init>()V

    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->g:Z

    .line 234
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->i:[F

    .line 235
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->j:Landroid/graphics/Matrix;

    .line 236
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->k:Landroid/graphics/Rect;

    .line 243
    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    .line 244
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    iget-object v2, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 245
    return-void
.end method

.method static a(IF)I
    .locals 2

    .prologue
    .line 590
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 591
    const v1, 0xffffff

    and-int/2addr v1, p0

    .line 592
    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    .line 593
    return v0
.end method

.method private static a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 637
    packed-switch p0, :pswitch_data_0

    .line 655
    :cond_0
    :goto_0
    :pswitch_0
    return-object p1

    .line 639
    :pswitch_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 641
    :pswitch_2
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 643
    :pswitch_3
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 645
    :pswitch_4
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 647
    :pswitch_5
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 649
    :pswitch_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 650
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/VectorDrawableCompat;
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 548
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 549
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 550
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    .line 551
    new-instance v1, Landroid/support/graphics/drawable/VectorDrawableCompat$g;

    iget-object v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    .line 552
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$g;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat;->h:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 573
    :goto_0
    return-object v0

    .line 557
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 558
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 560
    :cond_1
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, v4, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 564
    :cond_2
    if-eq v2, v4, :cond_3

    .line 565
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "No start tag found"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 568
    :catch_0
    move-exception v0

    .line 569
    const-string v1, "VectorDrawableCompat"

    const-string v2, "parser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 573
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 567
    :cond_3
    :try_start_1
    invoke-static {p0, v0, v1, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/VectorDrawableCompat;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 570
    :catch_1
    move-exception v0

    .line 571
    const-string v1, "VectorDrawableCompat"

    const-string v2, "parser error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/support/graphics/drawable/VectorDrawableCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;-><init>()V

    .line 585
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 586
    return-object v0
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 661
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    .line 662
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    .line 667
    const-string v2, "tintMode"

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-static {p1, p2, v2, v3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    .line 669
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v3}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 671
    const/4 v2, 0x1

    .line 672
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 673
    if-eqz v2, :cond_0

    .line 674
    iput-object v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    .line 677
    :cond_0
    const-string v2, "autoMirrored"

    const/4 v3, 0x5

    iget-boolean v4, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->e:Z

    invoke-static {p1, p2, v2, v3, v4}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->e:Z

    .line 680
    const-string v0, "viewportWidth"

    const/4 v2, 0x7

    iget v3, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->d:F

    invoke-static {p1, p2, v0, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->d:F

    .line 684
    const-string v0, "viewportHeight"

    const/16 v2, 0x8

    iget v3, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->e:F

    invoke-static {p1, p2, v0, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->e:F

    .line 688
    iget v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->d:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_1

    .line 689
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_1
    iget v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->e:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_2

    .line 692
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_2
    const/4 v0, 0x3

    iget v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->b:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->b:F

    .line 698
    const/4 v0, 0x2

    iget v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->c:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->c:F

    .line 700
    iget v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->b:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_3

    .line 701
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires width > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_3
    iget v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->c:F

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_4

    .line 704
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<vector> tag requires height > 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_4
    const-string v0, "alpha"

    const/4 v2, 0x4

    .line 710
    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->b()F

    move-result v3

    .line 709
    invoke-static {p1, p2, v0, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    .line 711
    invoke-virtual {v1, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->a(F)V

    .line 713
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 714
    if-eqz v0, :cond_5

    .line 715
    iput-object v0, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->g:Ljava/lang/String;

    .line 716
    iget-object v2, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->h:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :cond_5
    return-void
.end method

.method private a()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 820
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 821
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->isAutoMirrored()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 823
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 821
    goto :goto_0

    :cond_1
    move v0, v1

    .line 823
    goto :goto_0
.end method

.method private b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v2, 0x1

    .line 722
    iget-object v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    .line 723
    iget-object v4, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    .line 728
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    .line 729
    iget-object v0, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->a:Landroid/support/graphics/drawable/VectorDrawableCompat$c;

    invoke-virtual {v5, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 732
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    add-int/lit8 v6, v1, 0x1

    move v1, v2

    .line 735
    :goto_0
    if-eq v0, v2, :cond_9

    .line 736
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-ge v7, v6, :cond_0

    if-eq v0, v9, :cond_9

    .line 737
    :cond_0
    const/4 v7, 0x2

    if-ne v0, v7, :cond_8

    .line 738
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 739
    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/graphics/drawable/VectorDrawableCompat$c;

    .line 740
    const-string v8, "path"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 741
    new-instance v1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;

    invoke-direct {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$b;-><init>()V

    .line 742
    invoke-virtual {v1, p1, p3, p4, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 743
    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 745
    iget-object v0, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->h:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    :cond_1
    const/4 v0, 0x0

    .line 748
    iget v7, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a:I

    iget v1, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->o:I

    or-int/2addr v1, v7

    iput v1, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a:I

    :goto_1
    move v1, v0

    .line 774
    :cond_2
    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 749
    :cond_3
    const-string v8, "clip-path"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 750
    new-instance v7, Landroid/support/graphics/drawable/VectorDrawableCompat$a;

    invoke-direct {v7}, Landroid/support/graphics/drawable/VectorDrawableCompat$a;-><init>()V

    .line 751
    invoke-virtual {v7, p1, p3, p4, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$a;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 752
    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-virtual {v7}, Landroid/support/graphics/drawable/VectorDrawableCompat$a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 754
    iget-object v0, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->h:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7}, Landroid/support/graphics/drawable/VectorDrawableCompat$a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    :cond_4
    iget v0, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a:I

    iget v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$a;->o:I

    or-int/2addr v0, v7

    iput v0, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a:I

    move v0, v1

    .line 757
    goto :goto_1

    :cond_5
    const-string v8, "group"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 758
    new-instance v7, Landroid/support/graphics/drawable/VectorDrawableCompat$c;

    invoke-direct {v7}, Landroid/support/graphics/drawable/VectorDrawableCompat$c;-><init>()V

    .line 759
    invoke-virtual {v7, p1, p3, p4, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$c;->a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 760
    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    invoke-virtual {v5, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    invoke-virtual {v7}, Landroid/support/graphics/drawable/VectorDrawableCompat$c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 763
    iget-object v0, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->h:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v7}, Landroid/support/graphics/drawable/VectorDrawableCompat$c;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8, v7}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    :cond_6
    iget v0, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a:I

    iget v7, v7, Landroid/support/graphics/drawable/VectorDrawableCompat$c;->c:I

    or-int/2addr v0, v7

    iput v0, v3, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a:I

    :cond_7
    move v0, v1

    goto :goto_1

    .line 768
    :cond_8
    if-ne v0, v9, :cond_2

    .line 769
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 770
    const-string v7, "group"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 771
    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    .line 782
    :cond_9
    if-eqz v1, :cond_b

    .line 783
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 785
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_a

    .line 786
    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 788
    :cond_a
    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 790
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " defined"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 792
    :cond_b
    return-void
.end method


# virtual methods
.method a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    .prologue
    .line 386
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 387
    :cond_0
    const/4 v0, 0x0

    .line 392
    :goto_0
    return-object v0

    .line 391
    :cond_1
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 392
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->h:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 815
    iput-boolean p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->g:Z

    .line 816
    return-void
.end method

.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/g;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    .line 494
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/graphics/drawable/g;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/16 v9, 0x800

    const/4 v8, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 277
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->copyBounds(Landroid/graphics/Rect;)V

    .line 284
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->k:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    .line 290
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->e:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 296
    :goto_1
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->j:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 297
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->j:Landroid/graphics/Matrix;

    iget-object v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->i:[F

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 298
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->i:[F

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 299
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->i:[F

    const/4 v4, 0x4

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 301
    iget-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->i:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 302
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->i:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 305
    cmpl-float v4, v4, v7

    if-nez v4, :cond_2

    cmpl-float v4, v5, v7

    if-eqz v4, :cond_3

    :cond_2
    move v1, v2

    move v3, v2

    .line 310
    :cond_3
    iget-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 311
    iget-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 312
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 313
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 315
    if-lez v3, :cond_0

    if-lez v1, :cond_0

    .line 319
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 320
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->k:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->k:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 323
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a()Z

    move-result v5

    .line 324
    if-eqz v5, :cond_4

    .line 325
    iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->k:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 326
    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {p1, v5, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 332
    :cond_4
    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->k:Landroid/graphics/Rect;

    invoke-virtual {v2, v8, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 334
    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-virtual {v2, v3, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b(II)V

    .line 335
    iget-boolean v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->g:Z

    if-nez v2, :cond_7

    .line 336
    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-virtual {v2, v3, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a(II)V

    .line 343
    :cond_5
    :goto_2
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    .line 344
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 290
    :cond_6
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->e:Landroid/graphics/ColorFilter;

    goto/16 :goto_1

    .line 338
    :cond_7
    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-virtual {v2}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b()Z

    move-result v2

    if-nez v2, :cond_5

    .line 339
    iget-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-virtual {v2, v3, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a(II)V

    .line 340
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c()V

    goto :goto_2
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 353
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->a()I

    move-result v0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 840
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/support/graphics/drawable/g;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-virtual {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/graphics/drawable/g;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 269
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$g;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$g;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 272
    :goto_0
    return-object v0

    .line 271
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a:I

    .line 272
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    goto :goto_0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/graphics/drawable/g;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 484
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->c:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 475
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    iget v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->b:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/graphics/drawable/g;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/graphics/drawable/g;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 466
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/g;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getState()[I
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/graphics/drawable/g;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/graphics/drawable/g;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 605
    :goto_0
    return-void

    .line 604
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 629
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    .line 616
    new-instance v1, Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    invoke-direct {v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;-><init>()V

    .line 617
    iput-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    .line 619
    sget-object v1, Landroid/support/graphics/drawable/a;->a:[I

    invoke-static {p1, p4, p3, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 622
    invoke-direct {p0, v1, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 623
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 624
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->a:I

    .line 625
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->k:Z

    .line 626
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/VectorDrawableCompat;->b(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 628
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->d:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0
.end method

.method public invalidateSelf()V
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 846
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 850
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-super {p0}, Landroid/support/graphics/drawable/g;->invalidateSelf()V

    goto :goto_0
.end method

.method public isAutoMirrored()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 502
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-boolean v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->e:Z

    goto :goto_0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    .line 442
    :goto_0
    return v0

    .line 441
    :cond_0
    invoke-super {p0}, Landroid/support/graphics/drawable/g;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    .line 442
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Landroid/support/graphics/drawable/g;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 258
    :cond_0
    :goto_0
    return-object p0

    .line 254
    :cond_1
    iget-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->f:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/support/graphics/drawable/g;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 255
    new-instance v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    invoke-direct {v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$f;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$f;)V

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->f:Z

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 833
    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 457
    :goto_0
    return v0

    .line 451
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    .line 452
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_1

    .line 453
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v2, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, v2, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 454
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    .line 455
    const/4 v0, 0x1

    goto :goto_0

    .line 457
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 2

    .prologue
    .line 854
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 859
    :goto_0
    return-void

    .line 858
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/graphics/drawable/g;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    invoke-virtual {v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->a()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 364
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->b:Landroid/support/graphics/drawable/VectorDrawableCompat$e;

    invoke-virtual {v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$e;->a(I)V

    .line 365
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    goto :goto_0
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    .line 512
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    iput-boolean p1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->e:Z

    goto :goto_0
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/g;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/g;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    iput-object p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->e:Landroid/graphics/ColorFilter;

    .line 377
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    goto :goto_0
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/g;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/g;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/graphics/drawable/g;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 1

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/g;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTint(I)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    .line 413
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 414
    iput-object p1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    .line 415
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 416
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    goto :goto_0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->c:Landroid/support/graphics/drawable/VectorDrawableCompat$f;

    .line 428
    iget-object v1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 429
    iput-object p1, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->d:Landroid/graphics/PorterDuff$Mode;

    .line 430
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->d:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Landroid/support/graphics/drawable/VectorDrawableCompat$f;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat;->a(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->d:Landroid/graphics/PorterDuffColorFilter;

    .line 431
    invoke-virtual {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat;->invalidateSelf()V

    goto :goto_0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 866
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/graphics/drawable/g;->setVisible(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 876
    :goto_0
    return-void

    .line 875
    :cond_0
    invoke-super {p0, p1}, Landroid/support/graphics/drawable/g;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
