.class public Lcn/nubia/gallery3d/ui/ItemLabelMaker;
.super Ljava/lang/Object;
.source "ItemLabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;,
        Lcn/nubia/gallery3d/ui/ItemLabelMaker$ItemLabelJob;
    }
.end annotation


# instance fields
.field private mDate_TextPaint:Landroid/text/TextPaint;

.field private final mLabelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

.field private mLabelWidth:I

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->mLabelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    .line 24
    iget v0, p1, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->textFontSize:I

    const v1, -0x21000001

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->mTextPaint:Landroid/text/TextPaint;

    .line 25
    iget p1, p1, Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;->date_textFontSize:I

    invoke-static {p1, v1, v2}, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->getTextPaint(IIZ)Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->mDate_TextPaint:Landroid/text/TextPaint;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/gallery3d/ui/ItemLabelMaker;)Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->mLabelSpec:Lcn/nubia/gallery3d/ui/AlbumSlotRenderer$LabelSpec;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/gallery3d/ui/ItemLabelMaker;)I
    .locals 0

    .line 14
    iget p0, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->mLabelWidth:I

    return p0
.end method

.method static synthetic access$200(Lcn/nubia/gallery3d/ui/ItemLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->mTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/gallery3d/ui/ItemLabelMaker;)Landroid/text/TextPaint;
    .locals 0

    .line 14
    iget-object p0, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->mDate_TextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static drawText(Landroid/graphics/Canvas;IILjava/lang/String;ILandroid/text/TextPaint;)V
    .locals 1

    .line 110
    monitor-enter p5

    int-to-float p4, p4

    .line 111
    :try_start_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p3, p5, p4, v0}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    int-to-float p1, p1

    .line 112
    invoke-virtual {p5}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, p4

    int-to-float p2, p2

    invoke-virtual {p0, p3, p1, p2, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 113
    monitor-exit p5

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getTextPaint(IIZ)Landroid/text/TextPaint;
    .locals 3

    .line 97
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    int-to-float p0, p0

    .line 98
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, 0x1

    .line 99
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 100
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 p1, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    .line 101
    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    if-eqz p2, :cond_0

    .line 103
    invoke-static {p0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public requestDateLabel(Ljava/lang/String;)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;

    invoke-direct {v0, p0, p1}, Lcn/nubia/gallery3d/ui/ItemLabelMaker$DateLabelJob;-><init>(Lcn/nubia/gallery3d/ui/ItemLabelMaker;Ljava/lang/String;)V

    return-object v0
.end method

.method public requestItemLabel(Ljava/lang/String;)Lcn/nubia/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcn/nubia/gallery3d/util/ThreadPool$Job<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Lcn/nubia/gallery3d/ui/ItemLabelMaker$ItemLabelJob;

    invoke-direct {v0, p0, p1}, Lcn/nubia/gallery3d/ui/ItemLabelMaker$ItemLabelJob;-><init>(Lcn/nubia/gallery3d/ui/ItemLabelMaker;Ljava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized setLabelWidth(I)V
    .locals 0

    monitor-enter p0

    .line 29
    :try_start_0
    iput p1, p0, Lcn/nubia/gallery3d/ui/ItemLabelMaker;->mLabelWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
