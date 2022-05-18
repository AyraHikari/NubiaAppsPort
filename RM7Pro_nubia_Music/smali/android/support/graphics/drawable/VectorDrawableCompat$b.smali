.class Landroid/support/graphics/drawable/VectorDrawableCompat$b;
.super Landroid/support/graphics/drawable/VectorDrawableCompat$d;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:F

.field c:I

.field d:F

.field e:I

.field f:F

.field g:F

.field h:F

.field i:F

.field j:Landroid/graphics/Paint$Cap;

.field k:Landroid/graphics/Paint$Join;

.field l:F

.field private p:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1659
    invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$d;-><init>()V

    .line 1644
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->a:I

    .line 1645
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->b:F

    .line 1647
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->c:I

    .line 1648
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->d:F

    .line 1649
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->e:I

    .line 1650
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->f:F

    .line 1651
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->g:F

    .line 1652
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->h:F

    .line 1653
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->i:F

    .line 1655
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->j:Landroid/graphics/Paint$Cap;

    .line 1656
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->k:Landroid/graphics/Paint$Join;

    .line 1657
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->l:F

    .line 1661
    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$b;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1664
    invoke-direct {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$d;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$d;)V

    .line 1644
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->a:I

    .line 1645
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->b:F

    .line 1647
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->c:I

    .line 1648
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->d:F

    .line 1649
    iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->e:I

    .line 1650
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->f:F

    .line 1651
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->g:F

    .line 1652
    iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->h:F

    .line 1653
    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->i:F

    .line 1655
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->j:Landroid/graphics/Paint$Cap;

    .line 1656
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->k:Landroid/graphics/Paint$Join;

    .line 1657
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->l:F

    .line 1665
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->p:[I

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->p:[I

    .line 1667
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->a:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->a:I

    .line 1668
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->b:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->b:F

    .line 1669
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->d:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->d:F

    .line 1670
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->c:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->c:I

    .line 1671
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->e:I

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->e:I

    .line 1672
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->f:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->f:F

    .line 1673
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->g:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->g:F

    .line 1674
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->h:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->h:F

    .line 1675
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->i:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->i:F

    .line 1677
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->j:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->j:Landroid/graphics/Paint$Cap;

    .line 1678
    iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->k:Landroid/graphics/Paint$Join;

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->k:Landroid/graphics/Paint$Join;

    .line 1679
    iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->l:F

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->l:F

    .line 1680
    return-void
.end method

.method private a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 0

    .prologue
    .line 1683
    packed-switch p1, :pswitch_data_0

    .line 1691
    :goto_0
    return-object p2

    .line 1685
    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1687
    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1689
    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    goto :goto_0

    .line 1683
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 0

    .prologue
    .line 1696
    packed-switch p1, :pswitch_data_0

    .line 1704
    :goto_0
    return-object p2

    .line 1698
    :pswitch_0
    sget-object p2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1700
    :pswitch_1
    sget-object p2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1702
    :pswitch_2
    sget-object p2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_0

    .line 1696
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1725
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->p:[I

    .line 1732
    const-string v0, "pathData"

    invoke-static {p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 1733
    if-nez v0, :cond_0

    .line 1780
    :goto_0
    return-void

    .line 1739
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1741
    if-eqz v0, :cond_1

    .line 1742
    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->n:Ljava/lang/String;

    .line 1744
    :cond_1
    const/4 v0, 0x2

    .line 1745
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1746
    if-eqz v0, :cond_2

    .line 1747
    invoke-static {v0}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->m:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    .line 1750
    :cond_2
    const-string v0, "fillColor"

    const/4 v1, 0x1

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->c:I

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->c:I

    .line 1752
    const-string v0, "fillAlpha"

    const/16 v1, 0xc

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->f:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->f:F

    .line 1754
    const-string v0, "strokeLineCap"

    const/16 v1, 0x8

    invoke-static {p1, p2, v0, v1, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 1756
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->j:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->a(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->j:Landroid/graphics/Paint$Cap;

    .line 1757
    const-string v0, "strokeLineJoin"

    const/16 v1, 0x9

    invoke-static {p1, p2, v0, v1, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    .line 1759
    iget-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->k:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v0, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->a(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v0

    iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->k:Landroid/graphics/Paint$Join;

    .line 1760
    const-string v0, "strokeMiterLimit"

    const/16 v1, 0xa

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->l:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->l:F

    .line 1763
    const-string v0, "strokeColor"

    const/4 v1, 0x3

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->a:I

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->a:I

    .line 1765
    const-string v0, "strokeAlpha"

    const/16 v1, 0xb

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->d:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->d:F

    .line 1767
    const-string v0, "strokeWidth"

    const/4 v1, 0x4

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->b:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->b:F

    .line 1769
    const-string v0, "trimPathEnd"

    const/4 v1, 0x6

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->h:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->h:F

    .line 1771
    const-string v0, "trimPathOffset"

    const/4 v1, 0x7

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->i:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->i:F

    .line 1774
    const-string v0, "trimPathStart"

    const/4 v1, 0x5

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->g:F

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->g:F

    .line 1777
    const-string v0, "fillType"

    const/16 v1, 0xd

    iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->e:I

    invoke-static {p1, p2, v0, v1, v2}, Landroid/support/v4/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->e:I

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    .prologue
    .line 1714
    sget-object v0, Landroid/support/graphics/drawable/a;->c:[I

    invoke-static {p1, p3, p2, v0}, Landroid/support/v4/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1716
    invoke-direct {p0, v0, p4}, Landroid/support/graphics/drawable/VectorDrawableCompat$b;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1717
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1718
    return-void
.end method
