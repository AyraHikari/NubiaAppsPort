.class public Lcn/nubia/video/mediaeditorview/textfilter/d;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediaeditorview/textfilter/d$b;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcn/nubia/video/mediaeditorview/textfilter/e;

.field public i:Landroid/graphics/Bitmap;

.field public j:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->d:I

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->i:Landroid/graphics/Bitmap;

    .line 4
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->j:Landroid/graphics/Bitmap;

    .line 5
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->c:Landroid/content/Context;

    .line 6
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x3

    .line 7
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->a:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 12
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->a:Landroid/graphics/Paint;

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->i:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/video/mediaeditorview/f;->j:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->i:Landroid/graphics/Bitmap;

    .line 15
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->j:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/video/mediaeditorview/f;->k:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->j:Landroid/graphics/Bitmap;

    .line 17
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    new-instance v0, Lcn/nubia/video/mediaeditorview/textfilter/e;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/video/mediaeditorview/textfilter/e;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 8
    iget v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 9
    iget v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget v1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->d:I

    invoke-static {v1}, Lcn/nubia/video/mediaeditorview/textfilter/f;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->c:Landroid/content/Context;

    invoke-static {v1, v2}, Lcn/nubia/video/mediaeditorview/m;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->h:Lcn/nubia/video/mediaeditorview/textfilter/e;

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public b(Lcn/nubia/video/mediaeditorview/textfilter/d;Lcn/nubia/video/mediaeditorview/textfilter/d$b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcn/nubia/video/mediaeditorview/textfilter/d$a;

    invoke-direct {v1, p0, p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/d$a;-><init>(Lcn/nubia/video/mediaeditorview/textfilter/d;Lcn/nubia/video/mediaeditorview/textfilter/d;Lcn/nubia/video/mediaeditorview/textfilter/d$b;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public getAddWordTextView()Lcn/nubia/video/mediaeditorview/textfilter/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->h:Lcn/nubia/video/mediaeditorview/textfilter/e;

    return-object v0
.end method

.method public getColorIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->g:I

    return v0
.end method

.method public getFont()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->d:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->e:I

    return v0
.end method

.method public setColor(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/video/mediaeditorview/textfilter/d;->setTextColor(I)V

    return-void
.end method

.method public setColorIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->g:I

    return-void
.end method

.method public setFont(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->d:I

    return-void
.end method

.method public setSelect(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->e:I

    return-void
.end method

.method public setTextItem(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->b:Ljava/lang/String;

    .line 2
    :cond_0
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/textfilter/d;->a()V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/textfilter/d;->f:I

    return-void
.end method
