.class public Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$b;,
        Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$c;
    }
.end annotation


# static fields
.field public static f:[Ljava/lang/String;


# instance fields
.field private a:[I

.field private b:[I

.field private c:Landroid/content/Context;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "null"

    const-string v1, "audio/xingfen.mp3"

    const-string v2, "audio/jirang.mp3"

    const-string v3, "audio/donggan.mp3"

    const-string v4, "audio/jiezhou.mp3"

    const-string v5, "audio/dichen.mp3"

    const-string v6, "more"

    .line 1
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x7

    new-array v0, p2, [I

    .line 2
    sget v1, Lcn/nubia/video/mediaeditorview/i;->j:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcn/nubia/video/mediaeditorview/i;->k:I

    const/4 v3, 0x1

    aput v1, v0, v3

    sget v1, Lcn/nubia/video/mediaeditorview/i;->l:I

    const/4 v4, 0x2

    aput v1, v0, v4

    sget v1, Lcn/nubia/video/mediaeditorview/i;->m:I

    const/4 v5, 0x3

    aput v1, v0, v5

    sget v1, Lcn/nubia/video/mediaeditorview/i;->n:I

    const/4 v6, 0x4

    aput v1, v0, v6

    sget v1, Lcn/nubia/video/mediaeditorview/i;->o:I

    const/4 v7, 0x5

    aput v1, v0, v7

    sget v1, Lcn/nubia/video/mediaeditorview/i;->i:I

    const/4 v8, 0x6

    aput v1, v0, v8

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->a:[I

    new-array p2, p2, [I

    .line 3
    sget v0, Lcn/nubia/video/mediaeditorview/f;->t:I

    aput v0, p2, v2

    sget v0, Lcn/nubia/video/mediaeditorview/f;->n:I

    aput v0, p2, v3

    sget v0, Lcn/nubia/video/mediaeditorview/f;->o:I

    aput v0, p2, v4

    sget v0, Lcn/nubia/video/mediaeditorview/f;->p:I

    aput v0, p2, v5

    sget v0, Lcn/nubia/video/mediaeditorview/f;->q:I

    aput v0, p2, v6

    sget v0, Lcn/nubia/video/mediaeditorview/f;->r:I

    aput v0, p2, v7

    sget v0, Lcn/nubia/video/mediaeditorview/f;->s:I

    aput v0, p2, v8

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->b:[I

    .line 4
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->c:Landroid/content/Context;

    .line 5
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->d()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->a:[I

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$c;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method


# virtual methods
.method public d()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/video/mediaeditorview/f;->x:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->d:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->a:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3
    new-instance v2, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$b;

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->c:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$b;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;Landroid/content/Context;)V

    .line 4
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/video/mediaeditorview/e;->i:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 6
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/video/mediaeditorview/e;->g:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 7
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/video/mediaeditorview/e;->f:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/video/mediaeditorview/e;->h:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 9
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/video/mediaeditorview/e;->g:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 10
    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/nubia/video/mediaeditorview/e;->f:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 11
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x11

    .line 12
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 13
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v3, 0x1

    .line 14
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 15
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->b:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v5

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v4, 0x0

    .line 17
    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x17

    .line 18
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->a:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/video/mediaeditorview/d;->f:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v3, 0x3f333333    # 0.7f

    .line 21
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    const/high16 v3, 0x41200000    # 10.0f

    .line 22
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 23
    new-instance v3, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$a;

    invoke-direct {v3, p0, v2, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$a;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$b;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    sget-object v3, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->f:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 3
    sget-object v3, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->f:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_1

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void

    .line 5
    :cond_1
    aget-object v3, v3, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setSelected(Z)V

    move v2, v5

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setOnMusicItemClickListener(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->e:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$c;

    return-void
.end method
