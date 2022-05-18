.class public Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field private static b:[Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "fonts/DroidSans.ttf"

    const-string v1, "fonts/gaoduanhei.ttf"

    const-string v2, "fonts/hei.ttf"

    const-string v3, "fonts/kuaile.ttf"

    const-string v4, "fonts/huangyou.ttf"

    const-string v5, "fonts/wenyi.ttf"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    sget-object v2, Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 2
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x96

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v4, 0x5

    .line 4
    invoke-virtual {v3, v4, v0, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/nubia/video/mediaeditorview/i;->P:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eq v1, v4, :cond_3

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v3, 0x41600000    # 14.0f

    .line 7
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    :cond_2
    :goto_1
    const/high16 v3, 0x41500000    # 13.0f

    .line 8
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    :cond_3
    :goto_2
    const/high16 v3, 0x41700000    # 15.0f

    .line 9
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 10
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/video/mediaeditorview/d;->f:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/16 v3, 0x11

    .line 11
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 12
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setId(I)V

    .line 13
    sget-object v3, Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/TextFontPickerView;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcn/nubia/video/mediaeditorview/m;->b(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/video/mediaeditorview/f;->O:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 16
    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
